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
  - Values:
    - **-1**: Unknown
    - **0**: Off
    - **1**: Daily Clean
    - **2**: Sensitive
    - **3**: Massage
    - **4**: Whitening
    - **5**: Deep Clean
    - **6**: Tongue Cleaning
    - **7**: Turbo


## Brushing State
measures the current state of the Oral-B device

### Used by


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
  - Values:
    - **-1**: Unknown
    - **2**: Idle
    - **3**: Brushing
    - **4**: Charger


## Brushing Time
measurement of the length of time of a brushing episode.

### Used by


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
  - Unit: seconds
  - Type: integer
  - Range: 0 to 2147483647


## Connection
measures the state of the Oral-B device Bluetooth connection.

### Used by


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
  - Values:
    - **0**: Not Connected
    - **1**: Connected


## Pressure
measures whether or not excessive pressure is detected by the Oral-B sensor.

### Used by


### Example

| UTC Timestamp | Offset    | Pressure |
| ------------- | --------- | -------- |
| 1533922952107 | -18000000 | 0        |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Pressure**:
  - Type: integer
  - Values:
    - **0**: No Excess Pressure Detected
    - **1**: Excess pressure Detected


## Sector
detects which sector of the mouth is being brushed

### Used by

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
  - Values:
    - **-1**: No Sector
    - **0**: Last Sector
    - **1**: Sector 1
    - **2**: Sector 2
    - **3**: Sector 3
    - **4**: Sector 4
    - **5**: Sector 5
    - **6**: Sector 6
    - **7**: Sector 7
    - **8**: Sector 8
