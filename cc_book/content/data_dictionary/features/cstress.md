# cStress

cStress is a model for inferring stress from wearable sensors that has been carefully developed with attention to every step of computational modeling including data collection, screening, cleaning, filtering, feature computation, normalization, and model training. cStress was trained using data collected from a rigorous lab study with 21 participants and validated on two independently collected data sets. On field data, the model is able to predict each instantaneous self-report with an accuracy of 72%.

<!--
**References:**
{% bibliography --cited %} -->


**Example stream name structure:**
`org.md2k.streamprocessor+<STREAM_NAME>+<ATTACHMENT>`

**Example names:**
- `org.md2k.streamprocessor+STRESS_PROBABILITY+PHONE`
- `org.md2k.streamprocessor+ORG_MD2K_CSTRESS_STRESS_EPISODE_START+PHONE`


## Data Quality (electrocardiogram)
measures the data quality of the Autosense ECG signal

### Input Datastreams **TWH**
- [ELECTROCARDIOGRAM](../raw_streams/autosense#electrocardiogram)
- [ACCELEROMETER_X](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Y](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Z](../raw_streams/autosense#accelerometer-xyz)

### Used by
- [STRESS](../inferences/stress)

### Example

| UTC Timestamp | Offset    | ECG Data Quality |
| ------------- | --------- | ---------------- |
| 1533922952107 | -18000000 | 0                |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **ECG Data Quality**:
  - Sampling frequency: 0.2 Hz
  - Values:
    - **0**: good data is being collected
    - **1**: noise
    - **2**: bad signal
    - **3**: sensor is off
    - **4**: missing data



## Data Quality (respiration)
measures the data quality of the Autosense respiration signal

### Input Datastreams **TWH**
- [RESPIRATION](../raw_streams/autosense#respiration)
- [ACCELEROMETER_X](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Y](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Z](../raw_streams/autosense#accelerometer-xyz)

### Used by
- [STRESS](../inferences/stress)

### Example

| UTC Timestamp | Offset    | RIP Data Quality |
| ------------- | --------- | ---------------- |
| 1533922952107 | -18000000 | 0                |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **RIP Data Quality**:
  - Sampling frequency: 0.2 Hz
  - Values:
    - **0**: good data is being collected
    - **1**: noise
    - **2**: bad signal
    - **3**: sensor is off
    - **4**: missing data


## Feature Vector
feature vector describing the set of numeric features in cStress

### Input Datastreams **TWH**
- [RESPIRATION](../raw_streams/autosense#respiration)
- [ACCELEROMETER_X](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Y](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER_Z](../raw_streams/autosense#accelerometer-xyz)
- [ACCELEROMETER](../raw_streams/motionsense#accelerometer)
- [GYROSCOPE](../raw_streams/motionsense#accelerometer)

### Used by
- [STRESS](../inferences/stress)

### Example

| **Label**                                                    | **Value**             |
| ------------------------------------------------------------ | --------------------- |
| **UTC Timestamp**                                            | 1533922952107         |
| **Offset**                                                   | -18000000             |
| **ECG RR Interval - Variance**                               | 9.94517638312503E-17  |
| **ECG RR Interval Low/High Frequency Energy Ratio**          | -0.876454818961866    |
| **ECG RR Interval High Frequency Energy**                    | 0.163869351450565     |
| **ECG RR Interval Medium Frequency Energy**                  | -1.12853616615536     |
| **ECG RR Interval Low Frequency Energy**                     | 2.61251085220217      |
| **ECG RR Interval - average**                                | -2.10576900603411E-09 |
| **ECG RR Interval - median**                                 | -4.44888576648732E-09 |
| **ECG RR Interval - quartile deviation**                     | 5.90763747521176E-09  |
| **ECG RR Interval - 80th percentile**                        | 4.0106202343044E-09   |
| **ECG RR Interval - 20th percentile**                        | -1.04810247432701E-08 |
| **ECG RR Interval Heart Rate**                               | 0.312464570446335     |
| **RIP Breath Rate**                                          | 0.39468287752326      |
| **RIP Inspiration Minute Ventilation**                       | -0.40011528536301     |
| **RIP Inspiration Duration - quartile deviation**            | 0.355023126838219     |
| **RIP Inspiration Duration - average**                       | 0.105591709336711     |
| **RIP Inspiration Duration - median**                        | -0.20639682874922     |
| **RIP Inspiration Duration - 80th percentile**               | 0.498894257788087     |
| **RIP Expiration Duration - quartile deviation**             | 0.453803242430925     |
| **RIP Expiration Duration - average**                        | -0.141472783196004    |
| **RIP Expiration Duration - median**                         | -0.167617825969802    |
| **RIP Expiration Duration - 80th percentile**                | 0.337607365453296     |
| **RIP Respiration Duration - quartile deviation**            | 0.38712132086468      |
| **RIP Respiration Duration - average**                       | -0.048578068876132    |
| **RIP Respiration Duration - median**                        | -0.196633051867774    |
| **RIP Respiration Duration - 80th percentile**               | 0.540318933297606     |
| **RIP Inspiration/Expiration Duration - quartile deviation** | 0.349087499621176     |
| **RIP Inspiration/Expiration Duration - average**            | -0.0979168174878814   |
| **RIP Inspiration/Expiration Duration - median**             | -0.20914713064924     |
| **RIP Inspiration/Expiration Duration - 80th percentile**    | 0.289793986846114     |
| **RIP Stretch - quartile deviation**                         | 0.141216267157499     |
| **RIP Stretch - average**                                    | -0.202196995183852    |
| **RIP Stretch - median**                                     | -0.193960682813648    |
| **RIP Stretch - 80th percentile**                            | -0.0164942155153861   |
| **RSA - quartile deviation**                                 | 0.341410991311355     |
| **RSA - average**                                            | 0.128694248265244     |
| **RSA - median**                                             | 0.128694248265244     |
| **RSA - 80th percentile**                                    | 0.4701052395766       |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **ECG RR Interval - variance**: Represents the variance of RR-intervals
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **ECG RR Interval Low/High Frequency Energy Ratio**: Represents the ratio between low and high frequency energies
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **ECG RR Interval High Frequency Energy**: Represents high frequency energy
  - Unit: milliseconds^2
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **ECG RR Interval Medium Frequency Energy**: Represents medium frequency energy
  - Unit: milliseconds^2
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **ECG RR Interval Low Frequency Energy**: Represents low frequency energy
  - Unit: milliseconds^2
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **ECG RR Interval - average**: Represents the mean of RR-intervals
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **ECG RR Interval - median**: Represents the median of RR-intervals
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **ECG RR Interval - quartile deviation**: Represents the quartile deviation of RR-intervals
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **ECG RR Interval - 80th percentile**: Represents the 80th percentile of RR-intervals
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **ECG RR Interval - 20th percentile**: Represents the 20th percentile of RR-intervals
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **ECG RR Interval Heart Rate**: Represents the average heart rate based on RR-intervals
  - Unit: beats per minute
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Breath Rate**: Represents the breath rate from the RIP data source
  - Unit: breaths per minute **TWH - looking at the numbers, should this be breaths per second?**
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Inspiration Minute Ventilation**: Represents the minute ventilation from the RIP data source
  - Unit: **TWH**
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Inspiration Duration - quartile deviation**: Represents the inspiration duration quartile deviation from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Inspiration Duration - average**: Represents the inspiration duration mean from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Inspiration Duration - median**: Represents the inspiration duration median from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Inspiration Duration - 80th percentile**: Represents the inspiration duration 80th percentile from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Expiration Duration - quartile deviation**: Represents the expiration duration quartile deviation from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Expiration Duration - average**: Represents the expiration duration mean from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Expiration Duration - median**: Represents the expiration duration median from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Expiration Duration - 80th percentile**: Represents the expiration duration 80th percentile from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Respiration Duration - quartile deviation**: Represents the respiration duration quartile deviation from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Respiration Duration - average**: Represents the respiration duration mean from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Respiration Duration - median**: Represents the respiration duration median from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Respiration Duration - 80th percentile**: Represents the respiration duration 80th percentile from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Inspiration/Expiration Duration - quartile deviation**: Represents the inspiration/expiration duration quartile deviation from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Inspiration/Expiration Duration - average**: Represents the inspiration/expiration duration mean from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Inspiration/Expiration Duration - median**: Represents the inspiration/expiration duration median from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Inspiration/Expiration Duration - 80th percentile**: Represents the inspiration/expiration duration 80th percentile from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Stretch - quartile deviation**: Represents the stretch quartile deviation from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Stretch - average**: Represents the stretch mean from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Stretch - median**: Represents the stretch median from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RIP Stretch - 80th percentile**: Represents the stretch 80th percentile from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RSA - quartile deviation**: Represents the RSA (**TWH - what does RSA stand for?**) quartile deviation from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RSA - average**: Represents the RSA mean from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RSA - median**: Represents the RSA median from the RIP data source
  - Unit: milliseconds
  - Type: double
  - Sampling frequency: 0.0167 Hz
- **RSA - 80th percentile**: Represents the RSA 80th percentile from the RIP data source
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


## Stress Episode Classification

## Stress Episode Array Classification Full Episode

## Stress Episode Start

## Stress Episode Peak

## Stress Episode End
