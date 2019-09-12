# Smartphone

Here you will find the sensor and data streams available from the smartphone.

<!-- **References:**
{% bibliography --cited %} (remove comment after inserting Bibtex citation in paragraph above) -->


**Example stream name structure:**
`org.md2k.phonesensor+<STREAM_NAME>+<ATTACHMENT>`

**Example names:**
- `org.md2k.phonesensor+LOCATION+PHONE`
- `org.md2k.phonesensor+ACCELEROMETER+PHONE`


## Accelerometer
the x, y, and z axes of the phone accelerometer

### Used by
- [EMA](../features/ema)

### Example

| UTC Timestamp | Offset    | accelerometer_x    | accelerometer_y    | accelerometer_z    |
| ------------- | --------- | ------------------ | ------------------ | ------------------ |
| 1533922952107 | -18000000 | -0.148386814300194 | -0.397386220373995 | -0.910394612194687 |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **accelerometer_x**: Acceleration minus Gx on the x-axis of the phone accelerometer
  - Unit: g (G-forces)
  - Type: float
  - Sampling frequency: 16 Hz
  - Range: -5g to +5g
- **accelerometer_y**: Acceleration minus Gy on the y-axis of the phone accelerometer
  - *same as above (accelerometer_x)*
- **accelerometer_z**: Acceleration minus Gz on the z-axis of the phone accelerometer
    - *same as above (accelerometer_x)*


## Activity Type
represents types of activity currently in progress

### Used by
- [CSTRESS](../features/cstress)
- [EMA](../features/ema)
- [PUFFMARKER](../features/puffmarker)

### Example

| UTC Timestamp | Offset    | Activity Type | Accuracy |
| ------------- | --------- | ------------- | -------- |
| 1533922952107 | -18000000 | 6             | 97       |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Activity Type**:
  - Sampling Frequency: 1.0 Hz
  - Values:
    - **0**: still
    - **1**: on foot
    - **2**: tilting
    - **3**: walking
    - **4**: running
    - **5**: on bicycle
    - **6**: in vehicle
    - **7**: unknown
- **Accuracy**: the estimated accuracy of this activity as a percentage
  - Unit: percentage
  - Range: 0 to 100


## Battery
shows the current battery information

### Used by


### Example

| UTC Timestamp | Offset    | Battery Level | Voltage | Temperature |
| ------------- | --------- | ------------- | ------- | ----------- |
| 1533922952107 | -18000000 | 76            | 4049    | 50          |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Battery Level**: current battery charge
  - Unit: percentage
  - Type: float
  - Range: 0% to 100%
- **Voltage**: battery voltage
  - Unit: voltage
  - Type: float
  - Sampling frequency: 1.0 Hz
  - Range: 0 to 5000
- **Temperature**: current battery temperature
  - Unit: degrees Celsius
  - Type: float
  - Sampling frequency: 1.0 Hz
  - Range: -50 to +100


## Gyroscope
the x, y, and z axes of the phone gyroscope

### Used by
- [EMA](../features/ema)

### Example

| UTC Timestamp | Offset    | gyroscope_x         | gyroscope_y        | gyroscope_z         |
| ------------- | --------- | ------------------- | ------------------ | ------------------- |
| 1533922952107 | -18000000 | -0.0223705545067787 | 0.0189084447920322 | -0.0114515926688909 |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **gyroscope_x**: angular speed around the x-axis
  - Unit: radians/second
  - Type: float
  - Sampling frequency: 16 Hz
  - Range: -5 to +5
- **gyroscope_y**: angular speed around the y-axis
  - *same as above (gyroscope_x)*
- **gyroscope_z**: angular speed around the z-axis
  - *same as above (gyroscope_x)*


## Location
the current GPS location of the phone

### Used by
- [CSTRESS](../features/cstress)
- [EMA](../features/ema)
- [PUFFMARKER](../features/puffmarker)

### Example

| UTC Timestamp | Offset    | Latitude   | Longitude   | Altitude | Speed | Bearing | Accuracy |
| ------------- | --------- | ---------- | ----------- | -------- | ----- | ------- | -------- |
| 1533922952107 | -18000000 | 28.0673616 | -82.4284366 | 5        | 1.59  | 356     | 92       |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Latitude**: current latitude
  - Unit: degrees
  - Type: double
  - Sampling frequency: 1.0 Hz
  - Range: -90 to +90
- **Longitude**: current longitude
  - Unit: degrees
  - Type: double
  - Sampling frequency: 1.0 Hz
  - Range: -180 to +180
- **Altitude**: altitude if available, in meters above the WGS 84 reference ellipsoid
  - Unit: meters
  - Type: double
  - Sampling frequency: 1.0 Hz
  - Range: 0 to 1000
- **Speed**: current speed over ground
  - Unit: meters/second
  - Type: double
  - Sampling frequency: 1.0 Hz
  - Range: 0 to 500
- **Bearing**: the horizontal direction of travel of this device (not related to the device orientation)
  - Unit: degrees
  - Type: double
  - Sampling frequency: 1.0 Hz
  - Range: 0 to 360
- **Accuracy**: the estimated accuracy of this location, in meters
  - Unit: radius
  - Type: double
  - Sampling frequency: 1.0 Hz
  - Range: 0 to 100


## Step Count
shows the user's step count during a given time window

### Used by


### Example

| UTC Timestamp | Offset    | Step Count |
| ------------- | --------- | ---------- |
| 1533922952107 | -18000000 | 101        |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Step Count**: the number of steps the participant has taken during a given time window
  - Unit: number
  - Type: integer
  - Sampling frequency: 1.0 Hz
  - Range: 0 to 50
