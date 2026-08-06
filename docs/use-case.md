Use Case ID: UC-01

Use Case Name: Automated Medication Dispensing According to Patient Schedule

Primary Actor: Caregiver

Supporting Actors:Automated Medicine Dispensing Device Mobile Application

Scope: Automated Medicine Dispensing System for Scheduled Medication

Administration and Inventory Monitoring

Description

This use case describes how the caregiver uses the mobile application to manage a
patient's medication schedule. At the scheduled time, the automated dispensing
device prepares and dispenses the correct medication, updates the inventory,
records the transaction in the medication history, and notifies the caregiver that the
medication is ready for administration.

Preconditions

1. The caregiver has successfully logged into the mobile application.
2. The patient has an existing medication profile.
3. The patient's medication schedule has been programmed into the system.
4. The required medicines are available in the dispensing device.
5. The dispensing device and mobile application are connected and operational.

Trigger

The scheduled medication time for a patient is reached.

Main Flow

1. The system checks the patient's medication schedule.
2. The system identifies the medication(s) that need to be dispensed.
3. The dispensing device retrieves the correct medication from storage.
4. The system dispenses the medication.
5. The inventory is automatically updated.
6. The dispensing event is recorded in the patient's medication history.
7. A notification is sent to the assigned caregiver indicating that the medication
is ready for administration.
8. The caregiver acknowledges the notification.
9. The use case ends successfully.

Alternative Flows

- A1. Medication Inventory is Low
1. The system detects that the remaining medicine quantity is below the
predefined threshold.
2. The medication is dispensed if sufficient stock is still available.
3. The system sends a low-inventory notification to the caregiver for
replenishment.

- A2. Caregiver Views Medication Details
1. After receiving the notification, the caregiver opens the patient's medication
record.
2. The system displays:
- Patient name
- Medication name
- Dosage
- Scheduled dispensing time
- Dispensing status

Exception Flows

E1. Medicine Out of Stock
1. The system detects that the required medication is unavailable.
2. The dispensing process is cancelled.
3. The system records the failed dispensing attempt.
4. A notification is sent to the caregiver indicating that the medication is out of
stock.

E2. Dispensing Mechanism Failure
1. The dispensing mechanism fails to release the medication.
2. The system records the dispensing error.
3. The caregiver receives an alert indicating a dispensing failure.
4. Manual intervention is required before dispensing can continue.

E3. Invalid Medication Schedule
1. The system detects incomplete or invalid schedule information.
2. Automatic dispensing is not initiated.
3. The caregiver is prompted to update the patient's medication schedule.

Postconditions

1. The correct medication has been dispensed according to the patient's
schedule.
2. The medicine inventory has been updated.
3. The dispensing activity has been recorded in the patient's medication history.
4. The caregiver has been notified of the completed dispensing.
5. Any errors encountered during the process have been logged for review.