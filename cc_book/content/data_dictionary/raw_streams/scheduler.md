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

### Example

| UTC Timestamp | Offset    | Timestamp              | Log Message                                 |
| ------------- | --------- | ---------------------- | ------------------------------------------- |
| 1533922952107 | -18000000 | 1/24/2019  12:52:39 PM | DEBUG, BackgroundService, Scheduler Started |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of seconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Log Message**: The EMA scheduler debugging log message (note: may contain commas).
  - Type: string


## Status
represents the status of the particpant's interaction with EMA/EMIs

### Example

| UTC Timestamp | Offset    | Current State           | Response | Next State |
| ------------- | --------- | ----------------------- | -------- | ---------- |
| 1533922952107 | -18000000 | NOTIFICATION_WITH_DELAY | OK       | EMA        |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of seconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Current State**: Represents the current scheduler state (e.g., EMA, NOTIFICATION, NOTIFICATION_WITH_DELAY, INCENTIVE)
  - Type: string
- **Response**: The recorded response to the current state.  This can also contain incentive values when the EMA is completed.
  - Type: string
  - Values:
    - **OK**: particpant tapped the OK button
    - **COMPLETED**: particpant completed the task
    - **ABANDONED**: particpant abandoned the task before completion
    - **MISSED**: particpant did not respond
- **Next State** Represents the next scheduler action/state (e.g., EMA, NOTIFICATION, NOTIFICATION_WITH_DELAY, INCENTIVE, null).  Null is the final state the designates the sequence of schedule actions is complete.



## Incentive
represents the incentive values rewarded to participants for completing requested tasks (e.g., completing an EMA survey)

### Example

| UTC Timestamp | Offset    | Earned Now | Earned Total |
| ------------- | --------- | ---------- | ------------ |
| 1533922952107 | -18000000 | 1.25       | 5.75         |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of seconds since January 1, 1970
  - Unit: milliseconds
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
