# mCerebrum Core
The mCerebrum app is smartphone software developed by the MD2K team at the Uniiversity of Memphis. It is the primary user interface on the smartphone for participant interaction with the software.

<!-- **References:**
{% bibliography --cited %} (remove comment after inserting Bibtex citation in paragraph above) -->


**Example stream name structure:**
`org.md2k.studywithema+<STREAM_NAME>`

**Example names:**
- `org.md2k.studywithema+DAY+START`
- `org.md2k.studywithema+DAY_END`


## Day Start
represents for each day the time at which the study day was started and data collection began

### Example

| UTC Timestamp | Offset    | Day Start     |
| ------------- | --------- | ------------- |
| 1548463810541 | -18000000 | 1548442210541 |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of seconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Day Start**: The time at which the study day was started and data collection began (shown as a local time indication of the number of seconds since January 1, 1970)
  - Unit: milliseconds
  - Type: long


## Day End
represents for each day the time at which the study day was ended and data collection stopped

### Example

| UTC Timestamp | Offset    | Day End       |
| ------------- | --------- | ------------- |
| 1549441800030 | -18000000 | 1549420200030 |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of seconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Day End**: The time at which the study day was started and data collection began (shown as a local time indication of the number of seconds since January 1, 1970)
  - Unit: milliseconds
  - Type: long
