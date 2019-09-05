# Smoking

A smoking episode indicates an instance of smoking using puffMarker {% cite saleheen2015puffmarker %}, a multi-sensor approach for pinpointing the timing of a lapse in smoking cessation using two wearable sensors:

- AutoSense chest sensor to track breathing patterns from respiration
- MotionSense wrist band to track arm movements from 6-axis inertial sensors worn on wrists


**References:**
{% bibliography --cited %}


**Example stream name structure:**
`org.md2k.streamprocessor+PUFFMARKER_SMOKING_EPISODE+PHONE`


### Input Datastreams
- [PUFFMARKER_FEATURE_VECTOR](../features/puffmarker#feature-vector)
- [PUFF_PROBABILITY](../features/puffmarker#probability)
- [PUFF_LABEL](../features/puffmarker#label)

### Example

| UTC Timestamp | Offset    | Smoking Episode |
| ------------- | --------- | --------------- |
| 1533922952107 | -18000000 | 1               |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Smoking Episode**:
  - **1** = yes (smoking episode detected)
