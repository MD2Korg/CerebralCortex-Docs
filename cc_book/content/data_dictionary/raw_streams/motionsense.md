# MotionSense

A custom wrist sensor developed by The Ohio State University.  It captures and transmits 3-axis accelerometer and gyroscope data over a Bluetooth Low Energy wireless channel. This device has a run time of about 24 hours on a charge while transmitting the data.

![MotionSense Hardware](../../images/MotionSenseWrist.png)

**References:**
{% bibliography --cited %} <!-- need Bibtex citation inserted in paragraph above -->


**Stream name structure:**
`org.md2k.motionsense+<STREAM_NAME>+MOTION_SENSE+<ATTACHMENT>`

**Example names:**
- `org.md2k.motionsense+ACCELEROMETER+MOTION_SENSE+LEFT_WRIST`
- `org.md2k.motionsense+ACCELEROMETER+MOTION_SENSE+RIGHT_WRIST`


## Accelerometer
the x, y, and z axes of the MotionSense accelerometer

**Range:** -2g to +2g
**Sampling frequency:** 16Hz

### Used by
- [PUFFMARKER](../features/puffmarker)

### Example

| UTC Timestamp | Offset | accelerometer_x  | accelerometer_y  | accelerometer_z   |
| ------------- | ------ | ---------------- | ---------------- | ----------------- |
| 1533922952107 | -360   | 0.01611328125    | -0.995849609375  | -0.0215847572013  |

- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **accelerometer_x**: x-axis position of the MotionSense accelerometer
- **accelerometer_y**: y-axis position of the MotionSense accelerometer
- **accelerometer_z**: z-axis position of the MotionSense accelerometer


## Gyroscope
the x, y, and z axes of the MotionSense gyroscope

**Range:** -250 degrees/second to +250 degrees/second
**Sampling frequency:** 32Hz

### Example

| UTC Timestamp | Offset | gyroscope_x     | gyroscope_y     | gyroscope_z      |
| ------------- | ------ | --------------- | --------------- | ---------------- |
| 1533922952107 | -360   | 0.01611328125   | -0.995849609375 | -0.0215847572013 |

- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **gyroscope_x**: x-axis position of the MotionSense gyroscope
- **gyroscope_y**: y-axis position of the MotionSense gyroscope
- **gyroscope_z**: z-axis position of the MotionSense gyroscope


## Data Quality
measures the data quality of the MotionSense wrist sensor signal

**Data Descriptor:** "NAME": "DataQuality",
"DATA_TYPE": "int",
"MAX_VALUE": "8",
"MIN_VALUE": "1",
"FREQUENCY": "16.0Hz"

### Used by
- [PUFFMARKER](../features/puffmarker)

### Example

| UTC Timestamp | Offset | DataQuality_ACL |
| ------------- | ------ | --------------- |
| 1533922952107 | -360   | 3               |

- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **DataQuality_ACL**: Values=  GOOD(0), NOISE(1), BAD(2), BAND_OFF(3), MISSING(4), NOT_WORN(5), BAND_LOOSE(6)
