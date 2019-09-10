# Oral-B Smart Toothbrush

The Oral-B electric toothbrush with Bluetooth connectivity works with MD2K's software to track a user’s brushing habits. The technology can monitor the amount of time brushed as well as the force with which brushing occurs, which can result in actionable feedback both long-term and in real-time.

![MotionSense Hardware](../../images/OralBbrush.png)


<!-- **References:**
{% bibliography --cited %} (remove comment after inserting Bibtex citation in paragraph above) -->


**Example stream name structure:**
`org.md2k.oralb+<ATTACHMENT>_<STREAM_NAME>`

**Example names:**
- `org.md2k.oralb+ORALB_PRESSURE`
- `org.md2k.oralb+ORALB_BRUSHING_STATE`


## Brushing Mode
measures the current mode of the Oral-B device

### Used by
- **TWH**

### Example

| UTC Timestamp | Offset    | Brushing Mode |
| ------------- | --------- | ------------- |
| 1533922952107 | -18000000 | 1             |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Brushing Mode**:
  - Type: integer
  - Values: **TWH - the range says -1 to 6 but the values are not defined in the data files (eg, ROBAS 7514e3cd-396a-3a9d-b942-3e2a965795bb)**
    - **-1**:
    - **0**:
    - **1**:
    - **2**:
    - **3**:
    - **4**:
    - **5**:
    - **6**:


## Brushing State
measures the current state of the Oral-B device

### Used by
- **TWH**

### Example

| UTC Timestamp | Offset    | Brushing State |
| ------------- | --------- | -------------- |
| 1533922952107 | -18000000 | 2              |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Brushing State**:
  - Type: integer
  - Values: **TWH - the range says -1 to 4 but the values are not defined in the data files (eg, ROBAS 7514e3cd-396a-3a9d-b942-3e2a965795bb)**
    - **-1**:
    - **0**:
    - **1**:
    - **2**:
    - **3**:
    - **4**:


## Brushing Time
measurement of the length of time during which a brushing episode occurred **TWH ?**

### Used by
- **TWH**

### Example

| UTC Timestamp | Offset    | Brushing Time |
| ------------- | --------- | ------------- |
| 1533922952107 | -18000000 | 32            |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Brushing Time**:
  - Unit: milliseconds **TWH ?**
  - Type: integer
  - Range: 0 to 2147483647


## Connection
measures the state of the Oral-B device Bluetooth connection **TWH - ?**

### Used by
- **TWH**

### Example

| UTC Timestamp | Offset    | Connection |
| ------------- | --------- | ---------- |
| 1533922952107 | -18000000 | 0          |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Connection**:
  - Type: integer
  - Values: **TWH - I am guessing here, these values are not defined in the data files**
    - **0**: Not Connected
    - **1**: Connected


## Pressure
measures whether or not pressure is detected by the Oral-B sensor **TWH - ?**

### Used by
- **TWH**

### Example

| UTC Timestamp | Offset    | Pressure |
| ------------- | --------- | ---------- |
| 1533922952107 | -18000000 | 0          |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Pressure**:
  - Type: integer
  - Values: **TWH - I am guessing here, these values are not defined in the data files**
    - **0**: No Pressure Detected
    - **1**: Pressure Detected


## Sector
detects which sector of the mouth is being brushed **TWH - ?**

### Used by
- **TWH**

### Example

| UTC Timestamp | Offset    | Sector |
| ------------- | --------- | ------ |
| 1533922952107 | -18000000 | -1     |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Sector**:
  - Type: integer
  - Values: **TWH - the range says -1 to 8 but the values are not defined in the data files (eg, ROBAS 7514e3cd-396a-3a9d-b942-3e2a965795bb)**
    - **-1**:
    - **0**:
    - **1**:
    - **2**:
    - **3**:
    - **4**:
    - **5**:
    - **6**:
    - **7**:
    - **8**:
