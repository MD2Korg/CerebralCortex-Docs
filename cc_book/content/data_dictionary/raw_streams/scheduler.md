# mCerebrum EMA/EMI Scheduler

The Scheduler component of the mCerebrum software works to deliver ecological momentary assessments (EMAs) and ecological momentary interventions (EMIs) to participants at predetermined times, at random, or in the event of being triggered by other data values.


<!-- **References:**
{% bibliography --cited %} (remove comment after inserting Bibtex citation in paragraph above) -->


**Example stream name structure:**
`org.md2k.scheduler+<STREAM_NAME>+<ATTACHMENT>`

**Example names:**
- `org.md2k.scheduler+LOG+PHONE`
- `org.md2k.scheduler+EMA+STRESS_EMA+PHONE`


## System Log
represents the log of the EMA Scheduler

### Used by
- [EMA](../features/ema)

### Example

| UTC Timestamp | Offset    | Timestamp              | **TWH** | **TWH**           | **TWH**           |
| ------------- | --------- | ---------------------- | ------- | ----------------- | ----------------- |
| 1533922952107 | -18000000 | 1/24/2019  12:52:39 PM | DEBUG   | BackgroundService | Scheduler Started |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of seconds since January 1, 1970
  - Unit: seconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **TWH - no column desciptors available in files, seems like the content varies a lot**


## Status
represents the status of the particpant's interaction with EMA/EMIs

### Used by
- [EMA](../features/ema)

### Example

| UTC Timestamp | Offset    | Output Type             | Participant Response | **TWH** |
| ------------- | --------- | ----------------------- | -------------------- | ------- |
| 1533922952107 | -18000000 | NOTIFICATION_WITH_DELAY | OK                   | EMA     |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of seconds since January 1, 1970
  - Unit: seconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **TWH - no column desciptors available in files, I took my best guess on the first two below, unsure about the third**
- **Output Type**: represents the type of output delivered by the Scheduler (e.g., EMA, NOTIFICATION, NOTIFICATION_WITH_DELAY, INCENTIVE)
  - Type: text **TWH**
- **Participant Response**: represents the action on the phone taken by the participant
  - Type: text
  - Values:
    - **OK**: particpant tapped the OK button
    - **COMPLETED**: particpant completed the task
    - **ABANDONED**: particpant abandoned the task before completion
    - **MISSED**: particpant did not respond
- **??** **TWH - unsure what the last column is representing**



## Incentive
represents the incentive values rewarded to participants for completing requested tasks (e.g., completing an EMA survey)

### Used by
- [EMA](../features/ema)

### Example

| UTC Timestamp | Offset    | Earned Now | Earned Total |
| ------------- | --------- | ---------- | ------------ |
| 1533922952107 | -18000000 | 1.25       | 5.75         |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of seconds since January 1, 1970
  - Unit: seconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Earned Now**: amount of incentive the participant earned by completing the current task
  - Unit: USD (dollars)
  - Type: double
- **Earned Total**: total amount of incentive the participant has earned from all completed tasks
  - Unit: USD (dollars)
  - Type: double
