# PuffMarker
A smoking episode indicates an instance of smoking using puffMarker {% cite saleheen2015puffmarker %}, a multi-sensor approach for pinpointing the timing of a lapse in smoking cessation using two wearable sensors:

- AutoSense to track breathing patterns from respiration
- MotionSense to track arm movements from 6-axis inertial sensors worn on wrists

**References:**
{% bibliography --cited %}


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

| UTC Timestamp | Offset | RIP Inspiration Duration | RIP Expiration Duration | Gyro Magnitude | Wrist Pitch | rStime - wStime |
| ------------- | ------ | ------------------------ | ----------------------- | -------------- | ----------- | --------------- |
| 1533922952107 | -360   | 1271                     | 1701                    | 1.302452       | 10.996382   | 99.462646       |


- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **RIP Inspiration Duration** _(milliseconds)_: Respiratory Inductance Plethysmography (RIP) breath inspiration duration,
"DATA_TYPE": "double",
"UNIT": "ms",  
"FREQUENCY": "0.0167 Hz"
- **RIP Expiration Duration** _(milliseconds)_: Respiratory Inductance Plethysmography (RIP) breath expiration duration,
"DATA_TYPE": "double",
"UNIT": "ms",  
"FREQUENCY": "0.0167 Hz"
- **Gyro Magnitude** _(degrees/second)_: Wrist-based magnitude of rotation across the x, y, and z axis,
"DATA_TYPE": "double",
"UNIT": "ms",  
"STATISTIC": "median",
"FREQUENCY": "0.0167 Hz"
- **Wrist Pitch** _(degrees)_: Represents the quartile deviation of wrist pitch orientation,
"DATA_TYPE": "double",
"UNIT": "ms",  
"STATISTIC": "quartile deviation",
"FREQUENCY": "0.0167 Hz"
- **rStime - wStime** _(seconds)_: Represents the time difference between respiration starttime and wrist segment starttime,
"DATA_TYPE": "double",
"UNIT": "ms",  
"FREQUENCY": "0.0167 Hz"


## Probability
Represents the probability of Puff using the puffMarker model

**Data Descriptor:** "NAME": "Puff Probability",
"DATA_TYPE": "double",
"MAX_VALUE": "1",
"MIN_VALUE": "0",
"FREQUENCY": "0.0167 Hz"

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

| UTC Timestamp | Offset | Probability       |
| ------------- | ------ | ----------------- |
| 1533922952107 | -360   | 0.309815016583471 |


- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **Probability**: Represents the probability of Puff using the puffMarker model.

## Label
Represents puff value puffMarker model

**Data Descriptor:** "NAME": "Puff Label", 
"DATA_TYPE": "double",
"MAX_VALUE": "2",
"MIN_VALUE": "0",
"FREQUENCY": "0.0167 Hz"

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

| UTC Timestamp | Offset | Label |
| ------------- | ------ | ----- |
| 1533922952107 | -360   | 1     |


- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **Label** _(enumeration)_: Represents puff value puffMarker model
  - **0**: no puff
  - **1**: puff
  - **2**: unsure
