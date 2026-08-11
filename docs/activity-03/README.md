# CareHoMED — Activity 03 Design Portfolio

## Overview

This directory contains the design documentation produced for Activity 03 of the CareHoMED project.

The portfolio translates the approved requirements into UML models, design-principle decisions, a design-pattern decision, an architecture design, and a traceability matrix.

## Contents

### UML Model Pack

Located in [`uml/`](./uml/):

- [Class Diagram](./uml/class-diagram.md)
- [Package Diagram](./uml/package-diagram.md)
- [Sequence Diagram](./uml/sequence-diagram.md)
- [Activity Diagram](./uml/activity-diagram.md)

The UML diagrams answer questions about the system's structure, package organization, component interactions, and medication-dispensing workflow.

### Design Principles Review

See [`design-principles.md`](./design-principles.md).

The review identifies design problems and applies:

- Single Responsibility Principle (SRP)
- Dependency Inversion Principle (DIP)
- Information Hiding

### Pattern Decision

See [`pattern-decision.md`](./pattern-decision.md).

- **Accepted:** Command Pattern
- **Rejected:** Singleton Pattern

The Command Pattern separates high-level medication-control requests from low-level hardware execution.

### Architecture Package

See [`architecture.md`](./architecture.md).

The architecture separates the web application, backend, database, ESP32 communication controller, Arduino Mega real-time controller, and dispensing hardware.

### Architecture Decision Record

See [`adr/ADR-001.md`](./adr/ADR-001.md).

ADR-001 documents the decision to separate ESP32 communication control from Arduino Mega real-time control.

### Traceability Matrix

See [`traceability-matrix.md`](./traceability-matrix.md).

The matrix connects requirements to the UML models, design principles, design pattern, and architecture components.

## Design Status

The Activity 03 design artifacts represent the team's current approved design baseline.

Implementation-specific information such as final source-code locations, JIRA issue IDs, and test-case IDs should be added as development and testing progress.

## Repository Structure

```text
activity-03/
├── README.md
├── design-principles.md
├── pattern-decision.md
├── architecture.md
├── traceability-matrix.md
│
├── adr/
│   └── ADR-001.md
│
└── uml/
    ├── images/
    │   ├── activity-diagram.png
    │   ├── class-diagram.png
    │   ├── package-diagram.png
    │   └── sequence-diagram.png
    │
    ├── activity-diagram.md
    ├── class-diagram.md
    ├── package-diagram.md
    └── sequence-diagram.md