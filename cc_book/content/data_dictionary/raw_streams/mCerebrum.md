# mCerebrum Core
The mCerebrum study app is smartphone software developed by the MD2K team at the Uniiversity of Memphis. It is the primary user interface on the smartphone for participant interaction with the software.

<!-- **References:**
{% bibliography --cited %} (remove comment after inserting Bibtex citation in paragraph above) -->


**Example stream name structure:**
`org.md2k.<APPLICATION>+<STREAM_NAME>`

**Example names:**
- `org.md2k.study+DAY+START`
- `org.md2k.studywithema+DAY_END`


## Day End
represents for each day the time at which the study day was ended and data collection stopped

### Used by
- [EMA](../features/ema)

### Example

| UTC Timestamp | Offset    | Day End       |
| ------------- | --------- | ------------- |
| 1549441800030 | -18000000 | 1549420200030 |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Day End**: The time at which the study day was started and data collection began (shown as a local time indication of the number of milliseconds since January 1, 1970)
  - Unit: milliseconds
  - Type: long


## Day Start
represents for each day the time at which the study day was started and data collection began

### Used by
- [EMA](../features/ema)

### Example

| UTC Timestamp | Offset    | Day Start     |
| ------------- | --------- | ------------- |
| 1548463810541 | -18000000 | 1548442210541 |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Day Start**: The time at which the study day was started and data collection began (shown as a local time indication of the number of milliseconds since January 1, 1970)
  - Unit: milliseconds
  - Type: long


## Sleep
represents the sleep time entered during the study setup

### Used by
- [EMA](../features/ema)

### Example

| UTC Timestamp | Offset    | Sleep    |
| ------------- | --------- | -------- |
| 1548463810541 | -18000000 | 75600000 |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Sleep**: represents the sleep time entered during the study setup
  - Unit: milliseconds
  - Type: long
  - Range: 0 to 86400000


## User Info
shows the infomation used to identify the current participant or user

### Used by


### Example

| UTC Timestamp | Offset    | User ID | UUID                                 |
| ------------- | --------- | ------- | ------------------------------------ |
| 1548463810541 | -18000000 | 215     | fee7416f-00e7-32bc-abf6-3ceb2248aa33 |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **User ID**: represents the participant's user ID
- **UUID**: represents the participant's universally unique identifier


## Wakeup
represents the wakeup time entered during the study setup

### Used by
- [EMA](../features/ema)

### Example

| UTC Timestamp | Offset    | Wakeup   |
| ------------- | --------- | -------- |
| 1548463810541 | -18000000 | 75600000 |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Wakeup**: represents the wakeup time entered during the study setup
  - Unit: milliseconds
  - Type: long
  - Range: 0 to 86400000
