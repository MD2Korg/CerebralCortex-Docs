# Smoking

A smoking episode indicates an instance of smoking using puffMarker {% cite saleheen2015puffmarker %}, a multi-sensor approach for pinpointing the timing of a lapse in smoking cessation using two wearable sensors:

- AutoSense chest sensor to track breathing patterns from respiration
- MotionSense wrist band to track arm movements from 6-axis inertial sensors worn on wrists

**References:**
{% bibliography --cited %}

**Data Descriptor:** "NAME": "Smoking Episode",
"DATA_TYPE": "double",
"MAX_VALUE": "1",
"MIN_VALUE": "1",

### Input Datastreams
- [PUFFMARKER_FEATURE_VECTOR](../features/puffmarker#feature-vector)
- [PUFF_PROBABILITY](../features/puffmarker#probability)
- [PUFF_LABEL](../features/puffmarker#label)

## Example

| UTC Timestamp | Offset | Smoking Episode |
|---------------|--------|-----------------|
| 1533922952107 | -360   | 1               |

- **UTC Timestamp**: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset**: The difference in time (shown in minutes) between UTC time and the local observed time
- **Smoking Episode**: Values = YES(1)
