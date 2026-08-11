# Pattern Decision Package

## 1. Recurring Design Problem

The system needs to execute different medication-related commands while keeping the high-level application logic separate from the low-level hardware implementation.

The main concern is avoiding direct coupling between caregiver/application requests and specific Arduino hardware operations such as servo control, sensors, and LEDs.

---

## 2. Candidate Patterns

| Pattern | Applicability | Decision |
|---|---|---|
| Command | Encapsulates requests as objects and separates command requests from their execution | **Accepted** |
| Adapter | Useful when incompatible interfaces need to work together | Rejected |
| Strategy | Useful when interchangeable algorithms or behaviors are required | Rejected |
| Observer | Useful for event-based notification between objects | Rejected |
| Facade | Useful for providing a simplified interface to a complex subsystem | Rejected |
| Factory | Useful for creating different object types without exposing creation logic | Rejected |

---

## 3. Accepted Pattern — Command

### Context

The caregiver interacts with the medication system through the application. The ESP32 sends high-level commands to the Arduino Mega, while the Arduino performs the actual hardware operations.

### Problem

Without an abstraction between the requested operation and its hardware implementation, application logic can become tightly coupled to specific servo channels, sensors, and other hardware components.

### Forces

- The system must support different medication-related commands.
- Hardware implementation details should remain hidden from higher-level software.
- The Arduino must execute hardware operations reliably.
- The system should remain maintainable if hardware assignments change.
- Commands should be easier to test independently.

### Participants

- **Command:** Represents a requested operation.
- **Concrete Command:** Represents a specific medication or dispensing operation.
- **Invoker:** Requests execution of a command.
- **Receiver:** Performs the actual hardware operation.
- **Client:** Creates and sends the requested command.

### Application in CareHoMED

The ESP32 acts as the high-level command source and sends commands through the defined UART interface.

The Arduino Mega receives the command and performs the corresponding hardware operation, such as activating the appropriate dispensing mechanism.

Hardware-specific details remain inside the Arduino firmware.

### Dependency Impact

The Command Pattern reduces direct dependency between high-level application logic and individual hardware operations.

Instead of the application needing to know which servo channel or sensor is used, it sends a high-level command that the hardware controller interprets and executes.

### Benefits

- Reduces coupling between software and hardware.
- Encapsulates dispensing operations.
- Makes commands easier to test.
- Allows additional commands to be added without changing the overall application structure.
- Keeps hardware-specific implementation inside the hardware controller.

### Costs

- Adds additional command objects and abstraction.
- Requires a defined command interface and communication format.
- Introduces some additional complexity compared with direct hardware calls.

### Why It Is Not Overengineering

The pattern is justified because the system already has a separation between the ESP32 high-level controller and the Arduino hardware controller. Multiple dispensing and control commands need to be communicated between these layers.

Using Command provides a clear boundary between requesting an operation and executing the operation.

---

## 4. Rejected Pattern — Singleton

### Reason for Consideration

A Singleton could provide a single shared instance of a controller or manager throughout the system.

### Reason for Rejection

Singleton would unnecessarily introduce global state and increase coupling between components.

The system already separates responsibilities between the ESP32 and Arduino Mega. A Singleton would not solve the main problem of separating high-level commands from hardware implementation.

Therefore, the Singleton pattern was rejected because it provides little benefit for the identified design problem and could make testing and maintenance more difficult.

---

## 5. Final Decision

**Accepted Pattern:** Command Pattern

**Rejected Pattern:** Singleton

The Command Pattern was selected because it directly addresses the need to separate high-level medication-control requests from low-level hardware execution.