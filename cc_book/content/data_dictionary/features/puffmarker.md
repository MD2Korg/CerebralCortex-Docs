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

<!--| UTC Timestamp | Offset    | RIP Inspiration Duration | RIP Expiration Duration | Gyro Magnitude | Wrist Pitch | rStime - wStime |
| ------------- | --------- | ------------------------ | ----------------------- | -------------- | ----------- | --------------- |
| 1533922952107 | -18000000 | 1271                     | 1701                    | 1.302452       | 10.996382   | 99.462646       | -->


| **Label**                                           | **Value**         |
| --------------------------------------------------- | ----------------- |
| **UTC Timestamp**                                   | 1533922952107     |
| **Offset**                                          | -18000000         |
| **RIP Inspiration Duration**                        | 1271              |
| **RIP Expiration Duration**                         | 1701              |
| **RIP Respiration Duration**                        | 2972              |
| **RIP Inspiration Expiration Ratio**                | 0.7472            |
| **RIP Stretch**                                     | 1999              |
| **RIP Upper Stretch**                               | 999.5             |
| **RIP Lower Stretch**                               | -999.5            |
| **RIP Backward Inspiration Duration**               | -135              |
| **RIP Backward Expiration Duration**                | -711              |
| **RIP Backward Respiration Duration**               | -846              |
| **RIP Backward Stretch**                            | 903               |
| **RIP Forward Inspiration Duration**                | 123               |
| **RIP Forward Expiration Duration**                 | 730               |
| **RIP Forward Respiration Duration**                | 853               |
| **RIP Forward Stretch**                             | 1377              |
| **RIP d5 Expiration**                               | 1.55867446393762  |
| **RIP d5 Stretch**                                  | 1.30245022970903  |
| **RIP Maximum Rate of Change**                      | 16.028728191573   |
| **RIP Minimum Rate of Change**                      | 14.357905959232   |
| **Wrist Gyroscope Magnintude - average**            | 8.84787527301585  |
| **Wrist Gyroscope Magnintude - median**             | 10.9963822500373  |
| **Wrist Gyroscope Magnintude - standard deviation** | -134.350368670461 |
| **Wrist Gyroscope Magnintude - quartile deviation** | -133.885360055109 |
| **Wrist Pitch - average**                           | -8.60802363630346 |
| **Wrist Pitch - median**                            | -6.91704787506283 |
| **Wrist Pitch - standard deviation**                | 2.07655586268374  |
| **Wrist Pitch - quartile deviation**                | 2.29336075060682  |
| **Wrist Roll - average**                            | -5.84228645831747 |
| **Wrist Roll - median**                             | -7.19390302876743 |
| **Wrist Roll - standard deviation**                 | -8.60802363630346 |
| **Wrist Roll - quartile deviation**                 | -6.91704787506283 |
| **rStime - wStime**                                 | 2.07655586268374  |
| **rEtime - wStime**                                 | 2.2933607506068   |
| **rStime - wEtime**                                 | 99.4626460785894  |
| **rEtime - wEtime**                                 | 101.942342742508  |

**TWH - check if number of columns is correct; column descriptions seem to be missing from file?; values in this table are likely incorrect**


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
  - Sampling frequency: 0.0167 Hz
- **RIP Expiration Duration**: Respiratory Inductance Plethysmography (RIP) breath expiration duration
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Respiration Duration**: Represents the respiration duration from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Inspiration Expiration Ratio**: Represents the inspiration expiration ratio from the RIP data source
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Stretch**: Represents the stretch from the RIP data source
  - Unit: **TWH**
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Upper Stretch**: Represents the stretch in upward direction from the RIP data source
  - Unit: **TWH**
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Lower Stretch**: Represents the stretch in downward direction from the RIP data source
  - Unit: **TWH**
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Backward Inspiration Duration**: Represents the first order differences of the inspiration duration values from their previous from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Backward Expiration Duration**: Represents the first order differences of the expiration duration values from their previous from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Backward Respiration Duration**: Represents the first order differences of the respiration duration values from their previous from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Backward Stretch**: Represents first order differences of the stretch values from their previous from the RIP data source
  - Unit: **TWH**
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Forward Inspiration Duration**: Represents the first order differences of the inspiration duration values from their next from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Forward Expiration Duration**: Represents the first order differences of the expiration duration values from their next from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Forward Respiration Duration**: Represents the first order differences of the respiration duration values from their next from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Forward Stretch**: Represents first order differences of the stretch values from their next from the RIP data source
  - Unit: **TWH**
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP d5 Expiration**: Represents the ratio of its expiration duration to the average expiration duration value in a window of five cycles from the RIP data source
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP d5 Stretch**: Represents the ratio of its stretch to the average stretch value in a window of five cycles from the RIP data source
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Maximum Rate of Change**: Represents the maximum rate of change of signal from the RIP data source
  - Unit: **TWH**
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Minimum Rate of Change**: Represents the minimum rate of change of signal from the RIP data source
  - Unit: **TWH**
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Gyroscope Magnintude - average**: Represents the mean of magnitude of gyroscope of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Gyroscope Magnintude - median**: Represents the median of magnitude of gyroscope of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Gyroscope Magnintude - standard deviation**: Represents the standard deviation of magnitude of gyroscope of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Gyroscope Magnintude - quartile deviation**: Represents the quartile deviation of magnitude of gyroscope of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Pitch - average**: Represents the mean of the pitch of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Pitch - median**: Represents the median of the pitch of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Pitch - standard deviation**: Represents the standard deviation of the pitch of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Pitch - quartile deviation**: Represents the quartile deviation of the pitch of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Roll - average**: Represents the mean of the roll of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Roll - median**: Represents the median of the roll of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Roll - standard deviation**: Represents the standard deviation of the roll of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **Wrist Roll - quartile deviation**: Represents the quartile deviation of the roll of Motionsense wrist
  - Unit: degree
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **rStime - wStime**: Represents the time difference between respiration starttime and wrist segment starttime
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **rEtime - wStime**: Represents the time difference between respiration endtime and wrist segment starttime
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **rStime - wEtime**: Represents the time difference between respiration starttime and wrist segment endtime
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **rEtime - wEtime**: Represents the time difference between respiration endtime and wrist segment endtime
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz


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
  - Sampling frequency: 0.0167 Hz
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
  - Sampling frequency: 0.0167 Hz
  - Values:
    - **0**: no puff
    - **1**: puff
    - **2**: unsure
