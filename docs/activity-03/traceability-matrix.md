# Traceability Matrix

This matrix connects the project's functional and non-functional requirements to the Activity 03 design artifacts.

| Requirement | UML Model | Design Principle | Design Pattern | Architecture Component | Status |
|---|---|---|---|---|---|
| FR-01 — Caregiver Authentication | Class Diagram, Activity Diagram | Information Hiding | Command | Web Application / Backend | Designed |
| FR-02 — Medication Scheduling | Class Diagram, Sequence Diagram, Activity Diagram | SRP | Command | Web Application / Backend | Designed |
| FR-03 — Scheduled Medication Dispensing | Sequence Diagram, Activity Diagram | SRP, DIP | Command | ESP32 / Arduino Mega / Dispensing System | Designed |
| FR-04 — Medication Availability Monitoring | Class Diagram, Activity Diagram | Information Hiding | Command | Medicine Storage / Monitoring | Designed |
| FR-05 — Dispensing Confirmation | Sequence Diagram, Activity Diagram | SRP | Command | Web Application / Dispensing Controller | Designed |
| FR-06 — Dispensing Records | Class Diagram, Sequence Diagram | Information Hiding | Command | Backend / Database | Designed |
| NFR-01 — Reliability | Activity Diagram, Sequence Diagram | SRP, DIP | Command | ESP32 / Arduino Mega | Designed |
| NFR-02 — Usability | Activity Diagram | SRP | Command | Web Application | Designed |
| NFR-03 — Security | Class Diagram | Information Hiding | Command | Authentication / Backend | Designed |
| NFR-04 — Maintainability | Package Diagram, Class Diagram | SRP, DIP, Information Hiding | Command | Modular System Architecture | Designed |

## Design Artifact Mapping

### UML Models

- **Class Diagram** — Defines the major system classes, responsibilities, attributes, and relationships.
- **Package Diagram** — Defines the major system packages and their dependencies.
- **Sequence Diagram** — Defines interactions during scheduled dispensing and caregiver confirmation.
- **Activity Diagram** — Defines the medication dispensing workflow, including decisions and failure paths.

### Design Principles

The design applies:

- Single Responsibility Principle (SRP)
- Dependency Inversion Principle (DIP)
- Information Hiding

### Design Pattern

The **Command Pattern** is the accepted design pattern. It separates high-level medication-control requests from their low-level hardware execution.

### Architecture

The architecture separates:

- Web application
- Backend
- Database
- ESP32 communication controller
- Arduino Mega real-time controller
- Medication storage
- Dispensing hardware

## Limitations

This matrix currently traces requirements to the design artifacts produced for Activity 03.

JIRA issue IDs, implementation code locations, and final test case IDs should be added when the corresponding implementation and testing artifacts are available.