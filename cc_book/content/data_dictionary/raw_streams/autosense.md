# AutoSense
Autosense is a wireless sensor suite that collects and processes cardiovascular, respiratory, and thermoregularity measurements that can inform about the general stress state of test subjects in their natural environment. The AutoSense suite is complemented with a software framework on a smart phone that processes sensor measurements received from AutoSense to infer stress and other rich human behaviors. AutoSense overcomes several challenges in the design of wearable sensor systems for use in the field. First, it is unobtrusively wearable because it integrates six sensors in a small form factor. Second, it demonstrates a low power design; with a lifetime exceeding ten days while continuously sampling and transmitting sensor measurements. Third, sensor measurements are robust to several sources of errors and confounds inherent in field usage. Fourth, it integrates an ANT radio for low power and integrated quality of service guarantees, even in crowded environments.

![AutoSense Hardware](/images/AutoSenseChest2.png)

**References:**
{% bibliography --cited %} <!-- need Bibtex citation inserted in paragraph above -->


## Respiration
an algorithmic measure of the participant's respiration

**Data Descriptor:** "NAME": "respiration",
"DATA_TYPE": "int",
"MAX_VALUE": "4096",
"MIN_VALUE": "0",
"FREQUENCY": "21.333333333333332"

### Used by
- [PUFFMARKER](../features/puffmarker)

### Example

| UTC Timestamp | Offset | Respiration |
| ------------- | ------ | ----------- |
| 1533922952107 | -360   | 2038        |


- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **Respiration**: an algorithmic measure of the participant's respiration


## Electrocardiogram

<!-- need content from json and excel files -->


## Accelerometer (x,y,z)
the x, y, and z axes of the Autosense accelerometer

**Data Descriptor:** "NAME": "accelerometer_x", "accelerometer_y", "accelerometer_z"
"DATA_TYPE": "int",
"MAX_VALUE": "4096",
"MIN_VALUE": "0",
"FREQUENCY": "10.666666666666666"

### Used by
- [PUFFMARKER](../features/puffmarker)

### Example

| UTC Timestamp | Offset | accelerometer_x | accelerometer_y | accelerometer_z |
| ------------- | ------ | --------------- | --------------- | --------------- |
| 1533922952107 | -360   | 1894            | 1961            | 2250            |

- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **accelerometer_x**: x-axis position of the AutoSense accelerometer
- **accelerometer_y**: y-axis position of the AutoSense accelerometer
- **accelerometer_z**: z-axis position of the AutoSense accelerometer


## Data Quality (respiration)
measures the data quality of the Autosense respiration signal

**Data Descriptor:** "NAME": "DataQuality",
"DATA_TYPE": "int",
"MAX_VALUE": "8",
"MIN_VALUE": "1",
"FREQUENCY": "0.3333333333333333 Hz"

### Used by
- [PUFFMARKER](../features/puffmarker)

### Example

| UTC Timestamp | Offset | Data_Quality |
| ------------- | ------ | ------------ |
| 1533922952107 | -360   | 3            |

- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **Data_Quality**: Values=  GOOD(0), NOISE(1), BAD(2), BAND_OFF(3), MISSING(4), NOT_WORN(5), BAND_LOOSE(6)


## Data Quality (electrocardiogram)
measures the data quality of the Autosense ECG signal

**Data Descriptor:** "NAME": "DataQuality",
"DATA_TYPE": "int",
"MAX_VALUE": "8",
"MIN_VALUE": "1",
"FREQUENCY": "0.3333333333333333 Hz"

### Used by
- [PUFFMARKER](../features/puffmarker)

### Example

| UTC Timestamp | Offset | Data_Quality |
| ------------- | ------ | ------------ |
| 1533922952107 | -360   | 0            |

- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **Data_Quality**: Values = GOOD(0), NOISE(1), BAD(2), BAND_OFF(3), MISSING(4), NOT_WORN(5), BAND_LOOSE(6)


## Data Variance (respiration)
measures the data variance of the Autosense respiration signal

**Data Descriptor:** "NAME": "DataQuality-Variance",
"DATA_TYPE": "int",
"MAX_VALUE": "2",
"MIN_VALUE": "0",
"FREQUENCY": "0.3333333333333333 Hz"

### Used by
- [PUFFMARKER](../features/puffmarker)

### Example

| UTC Timestamp | Offset | Data_Variance |
| ------------- | ------ | ------------- |
| 1533922952107 | -360   | 0             |

- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **Data_Variance**: Values = GOOD(0), BAD(1), NODATA(2)


## Data Variance (electrocardiogram)
measures the data variance of the Autosense ECG signal

**Data Descriptor:** "NAME": "DataQuality-Variance",
"DATA_TYPE": "int",
"MAX_VALUE": "2",
"MIN_VALUE": "0",
"FREQUENCY": "0.3333333333333333 Hz"

### Used by
- [PUFFMARKER](../features/puffmarker)

### Example

| UTC Timestamp | Offset | Data_Variance |
| ------------- | ------ | ------------- |
| 1533922952107 | -360   | 1             |

- **UTC Timestamp** _(seconds)_: Coordinated Universal Time indicating the number of seconds since January 1, 1970
- **Offset** _(minutes)_: The difference in time (shown in minutes) between UTC time and the local observed time
- **Data_Variance**: Values = GOOD(0), BAD(1), NODATA(2)
