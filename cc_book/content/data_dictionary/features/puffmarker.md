# PuffMarker
A smoking episode indicates an instance of smoking using puffMarker {% cite saleheen2015puffmarker %}, a multi-sensor approach for pinpointing the timing of a lapse in smoking cessation using two wearable sensors:

- AutoSense to track breathing patterns from respiration
- MotionSense to track arm movements from 6-axis inertial sensors worn on wrists


**References:**
{% bibliography --cited %}


**Example stream name structure:**
`org.md2k.streamprocessor+<STREAM_NAME>+<ATTACHMENT>`

**Example names:**
- `org.md2k.streamprocessor+PUFFMARKER_FEATURE_VECTOR+PHONE`
- `org.md2k.streamprocessor+PUFF_PROBABILITY+PHONE`


## Feature Vector
feature vector describing the set of numeric features in puffMarker

### Input Datastreams
- [RESPIRATION](../raw_streams/autosense#respiration)
- [ACCELEROMETER_X](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Y](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Z](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER](../raw_streams/motionsense#accelerometer)
- [GYROSCOPE](../raw_streams/motionsense#accelerometer)

### Used by
- [SMOKING](../inferences/smoking)


### Example

| UTC Timestamp | Offset    | RIP Inspiration Duration | RIP Expiration Duration | Gyro Magnitude | Wrist Pitch | rStime - wStime |
| ------------- | --------- | ------------------------ | ----------------------- | -------------- | ----------- | --------------- |
| 1533922952107 | -18000000 | 1271                     | 1701                    | 1.302452       | 10.996382   | 99.462646       |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **RIP Inspiration Duration**: Respiratory Inductance Plethysmography (RIP) breath inspiration duration
  - Unit: milliseconds
  - Type: double
  - Sampling Frequency: 0.0167 Hz
- **RIP Expiration Duration**: Respiratory Inductance Plethysmography (RIP) breath expiration duration
  - Unit: milliseconds
  - Type: double
  - Sampling Frequency: 0.0167 Hz
- **Gyro Magnitude**: Wrist-based magnitude of rotation across the x, y, and z axis
  - Unit: degrees/second
  - Type: double
  - Sampling Frequency: 0.0167 Hz
  - Statistic: median
- **Wrist Pitch**: Represents the quartile deviation of wrist pitch orientation
  - Unit: degrees
  - Type: double
  - Sampling Frequency: 0.0167 Hz
  - Statistic: quartile deviation
- **rStime - wStime**: Represents the time difference between respiration starttime and wrist segment starttime
  - Unit: seconds **TWH: Verify this unit**
  - Type: double
  - Sampling Frequency: 0.0167 Hz


## Probability
Represents the probability of Puff using the puffMarker model

### Input Datastreams
- [RESPIRATION](../raw_streams/autosense#respiration)
- [ACCELEROMETER_X](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Y](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Z](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER](../raw_streams/motionsense#accelerometer)
- [GYROSCOPE](../raw_streams/motionsense#accelerometer)

### Used by
- [SMOKING](../inferences/smoking.html)


### Example

| UTC Timestamp | Offset    | Probability       |
| ------------- | --------- | ----------------- |
| 1533922952107 | -18000000 | 0.309815016583471 |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Probability**: Represents the probability of Puff using the puffMarker model.
  - Unit: milliseconds
  - Type: double
  - Sampling Frequency: 0.0167 Hz
  - Range: 0 to 1


## Label
Represents puff value puffMarker model

### Input Datastreams
- [RESPIRATION](../raw_streams/autosense#respiration)
- [ACCELEROMETER_X](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Y](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Z](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER](../raw_streams/motionsense#accelerometer)
- [GYROSCOPE](../raw_streams/motionsense#accelerometer)

### Used by
- [SMOKING](../inferences/smoking.html)

### Example

| UTC Timestamp | Offset    | Label |
| ------------- | --------- | ----- |
| 1533922952107 | -18000000 | 1     |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Label**: Represents puff value puffMarker model
  - Sampling Frequency: 0.0167 Hz
  - Values:
    - **0**: no puff
    - **1**: puff
    - **2**: unsure
