# Stress

A stress episode indicates an instance of stress using cStress, a model for inferring stress from wearable sensors. cStress was trained using data collected from a rigorous lab study with 21 participants and validated on two independently collected data sets. It has been carefully developed with attention to every step of computational modeling including data collection, screening, cleaning, filtering, feature computation, normalization, and model training.


<!-- **References:**
{% bibliography --cited %} -->


**Example stream name structure:**
`org.md2k.streamprocessor+PUFFMARKER_SMOKING_EPISODE+PHONE`


### Input Datastreams
- [CSTRESS](../features/cstress)

### Example

| UTC Timestamp | Offset    | Smoking Episode |
| ------------- | --------- | --------------- |
| 1533922952107 | -18000000 | 1               |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of seconds since January 1, 1970
  - Unit: seconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Smoking Episode**:
  - **1** = yes (smoking episode detected)
