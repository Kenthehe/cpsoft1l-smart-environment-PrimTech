# Design Principles Review

## 1. Diagnosed Architectural and Code Issues

### Issue 1 — Hard-Coded Hardware Dependencies

The initial hardware-control implementation directly connected application commands to specific servo channels and Arduino functions. This creates tight coupling because changing a servo assignment or hardware driver would require changes to the main control logic.

### Issue 2 — Too Many Responsibilities in One Controller

Without separation, the ESP32 could be responsible for mobile-application requests, medication schedules, storage records, and direct hardware commands. Combining these responsibilities reduces cohesion and makes individual functions more difficult to test and maintain.

### Issue 3 — Direct Hardware Access from Application Logic

The mobile application should not directly control individual servos or sensors. If application-level functions depend directly on hardware details, changes to the Arduino firmware or servo configuration would require corresponding changes to the application.

---

## 2. Justified Design Principles

### Single Responsibility Principle (SRP)

Responsibilities are separated between the mobile application, ESP32 backend, and Arduino Mega firmware.

- The mobile application handles caregiver interaction.
- The ESP32 manages schedules and system data.
- The Arduino Mega performs real-time hardware control.

This separation prevents one controller from handling unrelated responsibilities.

### Dependency Inversion Principle (DIP)

The ESP32 communicates with the Arduino through a defined UART command interface instead of depending directly on individual hardware components.

This allows the hardware implementation to change without requiring major changes to higher-level application logic.

### Information Hiding

Hardware-specific implementation details such as servo channels, sensor inputs, and PCA9685 addresses remain inside the Arduino firmware.

The ESP32 only needs to issue high-level commands such as opening a compartment or dispensing medicine.

---

## 3. Before-and-After Design Review

| Element | Before | Problem | Applied Principle | After | Trade-off |
|---|---|---|---|---|---|
| ESP32 directly controlling hardware | Backend directly depends on hardware details | High coupling between backend and hardware | Dependency Inversion Principle (DIP) | ESP32 communicates through defined UART commands | Requires a communication protocol |
| Single controller handling application, scheduling, and hardware | One controller handles multiple unrelated responsibilities | Low cohesion and excessive responsibilities | Single Responsibility Principle (SRP) | ESP32 and Arduino have separate responsibilities | Requires communication between the two controllers |
| Application accessing servo details | Application can depend on hardware-specific information | Hardware implementation is exposed to higher-level logic | Information Hiding | Application uses high-level commands such as `dispense` | Adds an abstraction layer |
| Dispensing logic mixed with general control | Dispensing behavior is part of general control logic | Difficult to test and modify | Single Responsibility Principle (SRP) | Dedicated dispensing-control module | Requires additional firmware modules |

---

## 4. Design Impact

The applied principles reduce coupling between the software and hardware layers while improving cohesion within individual system components.

The resulting design allows the mobile application and ESP32 to operate using high-level commands without requiring knowledge of individual servo channels, sensors, or PCA9685 addresses. Hardware-specific decisions remain within the Arduino firmware.

The main trade-off is that the system requires additional abstraction and communication between controllers. However, this separation makes the system easier to modify, test, and maintain.