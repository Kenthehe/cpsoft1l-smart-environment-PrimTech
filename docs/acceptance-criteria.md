# Acceptance Criteria

## US-01: Patient Medication Registration

**Linked Requirements:** FR-01, NFR-01

### Acceptance Criteria

- **Given** the caregiver is logged into the mobile application,
  **When** they enter a patient's personal information and prescribed medications,
  **Then** the patient's medication profile is successfully saved.

- **Given** a registered patient,
  **When** the caregiver assigns a medication schedule,
  **Then** the schedule is stored and displayed in the patient's profile.

- **Given** incomplete or invalid information,
  **When** the caregiver submits the form,
  **Then** the system displays an error message and prevents saving.

---

## US-02: Automated Medication Dispensing

**Linked Requirements:** FR-02, NFR-02

### Acceptance Criteria

- **Given** a patient's medication schedule has been programmed,
  **When** the scheduled dispensing time is reached,
  **Then** the system dispenses the correct medication automatically.

- **Given** multiple medications are scheduled,
  **When** dispensing begins,
  **Then** only the medications assigned to that schedule are released.

- **Given** a dispensing failure occurs,
  **When** the system detects the error,
  **Then** it records the failure and notifies the caregiver.

---

## US-03: Medication Inventory Monitoring

**Linked Requirements:** FR-03, NFR-03

### Acceptance Criteria

- **Given** medicines are loaded into the dispenser,
  **When** inventory is viewed,
  **Then** the remaining quantity of each medicine is displayed.

- **Given** medicines are dispensed,
  **When** dispensing is completed,
  **Then** the inventory count is automatically updated.

- **Given** inventory reaches the minimum threshold,
  **When** the caregiver accesses the application,
  **Then** the system indicates that replenishment is needed.

---

## US-04: Caregiver Notification

**Linked Requirements:** FR-04, NFR-04

### Acceptance Criteria

- **Given** a medication has been successfully dispensed,
  **When** the dispensing process finishes,
  **Then** the assigned caregiver receives a notification.

- **Given** the caregiver opens the notification,
  **When** they view its details,
  **Then** the patient's name, medication, and dispensing time are displayed.

- **Given** the notification is acknowledged,
  **When** the caregiver confirms receipt,
  **Then** the system records the acknowledgment.

---

## US-05: Medication History

**Linked Requirements:** FR-05, NFR-03

### Acceptance Criteria

- **Given** medication has been dispensed,
  **When** the transaction is completed,
  **Then** it is recorded in the patient's medication history.

- **Given** the caregiver opens a patient's history,
  **When** records are displayed,
  **Then** previous medications and dispensing times are visible.

- **Given** multiple records exist,
  **When** the caregiver searches or filters records,
  **Then** the correct medication history is displayed.

---

## US-06: Inventory Refill Alert

**Linked Requirements:** FR-06, NFR-04

### Acceptance Criteria

- **Given** the inventory reaches the predefined minimum level,
  **When** the threshold is detected,
  **Then** the system sends a low-stock notification.

- **Given** inventory has been replenished,
  **When** the caregiver updates the inventory,
  **Then** the low-stock alert is removed.

- **Given** multiple medicines are running low,
  **When** notifications are generated,
  **Then** each medicine is identified separately.

---

## US-07: Secure User Authentication

**Linked Requirements:** FR-07, NFR-05

### Acceptance Criteria

- **Given** a registered caregiver,
  **When** valid login credentials are entered,
  **Then** access to the application is granted.

- **Given** incorrect login credentials,
  **When** login is attempted,
  **Then** access is denied and an error message is displayed.

- **Given** the user logs out,
  **When** the logout process completes,
  **Then** access to protected features requires logging in again.

---

## US-08: Medication Schedule Dashboard

**Linked Requirements:** FR-08, NFR-01

### Acceptance Criteria

- **Given** patient schedules exist,
  **When** the caregiver opens the dashboard,
  **Then** all upcoming medication schedules are displayed.

- **Given** the dispensing status changes,
  **When** the dashboard refreshes,
  **Then** the latest schedule and status are shown.

- **Given** the caregiver selects a patient,
  **When** the patient's schedule is opened,
  **Then** detailed medication information is displayed.