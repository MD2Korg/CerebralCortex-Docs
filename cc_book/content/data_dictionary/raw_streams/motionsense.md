# MotionSense

A custom wrist sensor developed by The Ohio State University.  It captures and
transmits 3-axis accelerometer and gyroscope data over a Bluetooth Low Energy
wireless channel. This device has a run time of about 24 hours on a charge while
transmitting the data.

![MotionSense Hardware](/images/MotionSenseWrist.png)

**Stream name structure:**
`org.md2k.motionsense+<STREAM_NAME>+MOTION_SENSE+<ATTACHMENT>`

**Example names:**
- `org.md2k.motionsense+ACCELEROMETER+MOTION_SENSE+LEFT_WRIST`
- `org.md2k.motionsense+ACCELEROMETER+MOTION_SENSE+RIGHT_WRIST`


## Accelerometer
A three-axis accelerometer <TWH: details go here...>

**Range:** -2g to +2g

**Sampling frequency:** 16Hz

### Example

| UTC Timestamp | Offset | X             | Y               | Z                |
| ------------- | ------ | ------------- | --------------- | ---------------- |
| 1533922952107 | -360   | 0.01611328125 | -0.995849609375 | -0.0215847572013 |


## Gyroscope
A three-axis gyroscope <TWH: details go here...>

**Range:** -250 degrees/second to +250 degrees/second

**Sampling frequency:** 32Hz

### Example

| UTC Timestamp | Offset | X                | Y                | Z                |
| ------------- | ------ | ---------------- | ---------------- | ---------------- |
| 1533922952107 | -360   | 70.2743530273437 | 112.472534179687 | -50.689697265625 |
