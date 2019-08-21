# AutoSense
Autosense is a wireless sensor suite that collects and processes cardiovascular, respiratory, and thermoregularity measurements that can inform about the general stress state of test subjects in their natural environment. The AutoSense suite is complemented with a software framework on a smart phone that processes sensor measurements received from AutoSense to infer stress and other rich human behaviors. AutoSense overcomes several challenges in the design of wearable sensor systems for use in the field. First, it is unobtrusively wearable because it integrates six sensors in a small form factor. Second, it demonstrates a low power design; with a lifetime exceeding ten days while continuously sampling and transmitting sensor measurements. Third, sensor measurements are robust to several sources of errors and confounds inherent in field usage. Fourth, it integrates an ANT radio for low power and integrated quality of service guarantees, even in crowded environments. 

![AutoSense Hardware](/images/AutoSenseChest2.png)

**References:**
{% bibliography --cited %} <!-- need Bibtex citation inserted in paragraph above -->

## Respiration
an algorithmic measure of the participant's respiration

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

## Accelerometer (X,Y,Z)
