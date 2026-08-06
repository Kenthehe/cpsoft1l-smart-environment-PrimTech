US-01: Patient Medication Registration
Acceptance Criteria:
- Given the caregiver is logged into the mobile application,
When they enter a patient's personal information and prescribed medications,
Then the patient's medication profile is successfully saved.
- Given a registered patient
When the caregiver assigns a medication schedule,
Then the schedule is stored and displayed in the patient's profile.
- Given incomplete or invalid information,
When the caregiver submits the form,
Then the system displays an error message and prevents saving.

US-02: Automated Medication Dispensing
Acceptance Criteria:
- Given a patient's medication schedule has been programmed
When the scheduled dispensing time is reached,
Then the system dispenses the correct medication automatically.
- Given multiple medications are scheduled,
When dispensing begins,
Then only the medications assigned to that schedule are released.
- Given a dispensing failure occurs,
When the system detects the error,
Then it records the failure and notifies the caregiver.

US-03: Medication Inventory Monitoring
Acceptance Criteria:
- Given medicines are loaded into the dispenser,
When inventory is viewed,
Then the remaining quantity of each medicine is displayed.
- Given medicines are dispensed,
When dispensing is completed,
Then the inventory count is automatically updated.
- Given inventory reaches the minimum threshold,
When the caregiver accesses the application,
Then the system indicates that replenishment is needed.