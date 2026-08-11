# Architecture Package

## 1. Architecture Overview

CareHoMED uses a modular full-stack architecture consisting of a React web application, Node.js backend, MongoDB database, ESP32 communication controller, and Arduino Mega real-time hardware controller.

The web system manages caregiver interaction, patient information, medication schedules, inventory, and dispensing records. The ESP32 handles communication between the web system and the embedded cabinet, while the Arduino Mega performs real-time control of the dispensing hardware.

This separation keeps network communication and application-level processing independent from real-time motor, sensor, gate, and carousel control.

---

# 2. Architectural Views

## 2.1 System Context View

### External Actors

- Caregiver / Authorized Personnel
- Facility Local Wireless Network

### System Boundary

The CareHoMED system contains:

- React Web Application
- Node.js Backend
- MongoDB Database
- ESP32 Communication Controller
- Arduino Mega Real-Time Controller
- Medicine Compartments
- Dispensing Mechanisms
- Sensors
- Carousel / Dispensing Cups
- Medication and Dispensing Records

### Main Interaction

The caregiver uses a web browser to manage patients, medicines, medication schedules, inventory, and dispensing information.

The web system communicates with the ESP32 through the local wireless network. The ESP32 communicates with the Arduino Mega, which controls the physical dispensing hardware.

---

## 2.2 Component View

### React Web Application

Provides the caregiver interface for:

- Patient management
- Medication scheduling
- Inventory management
- Dispensing information
- Status monitoring
- Dispensing confirmation

### Node.js / Express Backend

Handles:

- Main business rules
- Authentication
- Patient information
- Medication schedules
- Inventory records
- Dispensing records
- Communication with the ESP32

### MongoDB Database

Stores:

- Patient records
- Caregiver accounts
- Medication information
- Medication schedules
- Inventory information
- Dispensing history

### ESP32 Communication Controller

Handles:

- Communication with the web backend
- Receiving high-level hardware commands
- Sending hardware status back to the web system
- Communication with the Arduino Mega through UART

### Arduino Mega Real-Time Controller

Handles:

- Dispensing motors
- Dispensing gates
- Carousel movement
- Sensors
- Real-time hardware operations

### Authentication

Controls access to caregiver accounts and protects medication and schedule information.

### Notification

Provides system notifications for:

- Completed dispensing
- Dispensing errors
- Medication retrieval
- Low inventory
- Sensor errors

### Monitoring

Records and monitors:

- Dispensing status
- Inventory changes
- Sensor status
- System errors

---

# 3. Communication View

## React ↔ Node.js Backend

REST/HTTP is used for:

- Patient management
- Medication scheduling
- Inventory management
- Dispensing operations
- Status requests

## Node.js Backend ↔ MongoDB

The backend stores and retrieves:

- Patient records
- Medication schedules
- Inventory data
- Dispensing history

## Node.js Backend ↔ ESP32

The backend communicates with the ESP32 through the facility's local wireless network.

The ESP32 receives high-level commands and returns hardware status information.

## ESP32 ↔ Arduino Mega

The ESP32 communicates with the Arduino Mega through serial/UART communication.

The communication carries:

- Hardware commands
- Command acknowledgements
- Sensor states
- Dispensing status
- Error information

## Arduino Mega ↔ Hardware

The Arduino Mega directly controls:

- Motors
- Dispensing gates
- Carousel
- Sensors
- Other connected dispensing hardware

## Event-Based Notifications

Events such as completed dispensing, failed retrieval, low inventory, sensor errors, and medication-cup readiness can use event-based notifications.

MQTT is not required for the first version because the system has a small number of devices. MQTT may be considered later if the system expands to multiple cabinets or additional IoT devices.

---

# 4. Deployment View

The caregiver accesses the system through a web browser on a computer or laptop.

The web application and backend can be deployed as separate services, while MongoDB stores the system data.

The physical medication cabinet contains:

- ESP32
- Arduino Mega
- Sensors
- Dispensing mechanisms
- Motors
- Gates
- Carousel

During development and testing, the embedded device may also be simulated when necessary.

### Deployment Flow

```text
Caregiver
    |
    | HTTP / REST
    v
React Web Application
    |
    v
Node.js / Express Backend
    |
    +------> MongoDB
    |
    | Local Wireless Network
    v
ESP32 Communication Controller
    |
    | UART / Serial
    v
Arduino Mega Real-Time Controller
    |
    +------> Motors
    +------> Dispensing Gates
    +------> Carousel
    +------> Sensors

    5. Trust and Failure Boundaries
Authentication Failure

Caregiver authentication protects accounts and prevents unauthorized users from modifying medication information.

Patient and medication information is accessible only to authorized users.

Web Application Failure

If the web application becomes unavailable, the Arduino Mega remains responsible for low-level hardware control. The web application is not directly responsible for real-time motor and dispensing operations.

Network Failure

If local Wi-Fi communication is interrupted:

New remotely initiated dispensing commands are prevented.
An operation already in progress should be handled safely.
New commands resume after communication is restored.
ESP32 Failure

If the ESP32 fails:

Communication between the web system and Arduino Mega is interrupted.
The Arduino Mega remains responsible for connected hardware.
New remotely initiated commands should be prevented until communication is restored.
Arduino Mega Failure

If the Arduino Mega fails:

Motors, gates, carousel, and sensors cannot be reliably controlled.
Dispensing operations should stop or remain disabled.
Caregiver inspection is required before operation resumes.
Sensor Failure

If a sensor provides an unexpected state:

The affected operation should stop or remain incomplete.
The system should not continue without verification.
Database Failure

If MongoDB becomes unavailable:

Medication schedules may not be accessible.
Inventory records may not be accessible.
Dispensing records may not be accessible.
Operations requiring unavailable data should be prevented.
The web system should report the failure.
API Failure

If the backend API becomes unavailable:

The frontend displays an error.
The system must not assume the requested operation was completed.
Medication operations require confirmation before retrying to prevent duplicate dispensing.

6. Architecture Questions
Is a modular monolith sufficient?

Yes.

A modular monolith is sufficient for the web application because the project has a limited number of users and one primary dispensing system. Splitting the web system into many independent services would add unnecessary complexity.

The embedded system remains separated because it has different hardware and timing requirements.

Where should business rules reside?

The main business rules reside in the Node.js backend.

The backend determines:

Which medicine is scheduled
Which patient the medicine belongs to
When a dispensing request should be sent

The Arduino Mega handles hardware-related rules such as:

Motor movement
Sensor checking
Dispensing-gate control
Which communication paths must be synchronous?

The dispensing command between the ESP32 and Arduino Mega must provide confirmation that the command was received and processed correctly.

Database operations that update medication or inventory records should also be confirmed before the system reports the operation as successful.

Which events benefit from publish/subscribe?

The following events can benefit from event-based communication:

Completed dispensing
Failed medication retrieval
Low inventory
Sensor errors
Medication cup ready for the caregiver

MQTT is not required for the first version but may be introduced if the system expands.

What happens during failure?

The system stops affected operations when device failures occur.

New commands are not sent during network failures.

Database-dependent operations are prevented when required data is unavailable.

API failures are reported to the frontend instead of being treated as successful operations.

Medication operations require confirmation before retrying to avoid duplicate dispensing.

How will the design support testing and deployment?

The modular structure allows the following to be tested separately:

Frontend
Backend
Database operations
ESP32 communication
Arduino hardware control

Previous working versions of the frontend, backend, and embedded firmware can be maintained in GitHub so that a failed update can be replaced with a stable version.

Monitoring uses:

Dispensing logs
Inventory records
Sensor status
Error messages

7. Architecture Constraints and Trade-offs
Benefits
Clear separation of responsibilities
Real-time hardware control is isolated from web communication
Easier independent testing
Easier maintenance
Hardware implementation details remain isolated from the web application
Costs
Requires two microcontrollers
Requires additional wiring
Requires a defined ESP32-Arduino communication protocol
Requires command validation and acknowledgement handling
Introduces additional communication failure points
Key Architectural Constraint

The ESP32-Arduino separation is intentionally accepted because reliable real-time hardware control requires the Arduino Mega to remain independent from network and web application timing.