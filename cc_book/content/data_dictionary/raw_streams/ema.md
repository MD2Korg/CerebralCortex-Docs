# mCerebrum EMAs
These are the processed Ecologic Momentary Assessment (EMA) data in JSON format that comes from mCerebrum.

**Note:** These EMA files are self-describing, meaning they have the EMA questions and answers contain in the JSON data. Therefore, this page will serve as an example to show the format and assist with basic understanding of the data. The specifics regarding the data will vary greatly for each EMA.


**Example stream name structure:**
`org.md2k.<APPLICATION>+<STREAM_NAME>+<ATTACHMENT>`

**Example names:**
- `org.md2k.scheduler+EMA_RANDOM`
- `org.md2k.mindfulnessstrategy+MINDFULNESS_SMOKING+PHONE`
- `org.md2k.ema+EMA_STRESS_EMI+DATA`

## EMA/EMI

### Used by
- [EMA](../features/ema)

### Example

| UTC Timestamp | Offset    | Value       |
| ------------- | --------- | ----------- |
| 1533922952107 | -18000000 | (see below) |

#### Column Details
- **UTC Timestamp**: Coordinated Universal Time indicating the number of milliseconds since January 1, 1970
  - Unit: milliseconds
  - Type: long
- **Offset**: The difference in time (shown in milliseconds) between UTC time and the local observed time
  - Unit: milliseconds
  - Type: integer
- **Value**: This will contain the EMA questions (provided by the study site) and answers (input by the participant)
  - the code block below serves as an example

<!-- *code block with example "beautified" ema json file -->

<!-- **Files names:**
*Below is a list of possible EMA file names. This list is not comprehensive, but will serve as a queryable list known possibile file names.
- `org.md2k.scheduler+EMA_RANDOM`
- `org.md2k.mindfulnessstrategy+MINDFULNESS_SMOKING+PHONE`
- `org.md2k.ema+EMA_STRESS_EMI+DATA` -->

## Smoking

metadata

## Stress

metadata

## Random

metadata

## etc...
