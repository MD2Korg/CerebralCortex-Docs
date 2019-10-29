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
- **Value**: This data string will contain the EMA questions (provided by the study site) and answers (input by the participant)
  - the text below serves as an example EMA; the content will vary greatly for each study

  ```javascript
  {
    "end_time": 1532376162216,
    "id": "DATA",
    "questions": [
        {
            "finish_time": 1532375891796,
            "prompt_time": 0,
            "question_id": 0,
            "question_text": "When the phone beeped, I was doing things automatically, without being aware of what I was doing.",
            "question_type": "multiple_choice",
            "response": [
                "Strongly Agree"
            ],
            "response_option": [
                "Strongly Disagree",
                "Disagree",
                "Neutral",
                "Agree",
                "Strongly Agree"
            ]
        },
        {
            "finish_time": 1532376082032,
            "prompt_time": 0,
            "question_id": 1,
            "question_text": "Since the last time you answered this set of questions, have you smoked any cigarettes?",
            "question_type": "multiple_choice",
            "response": [
                "Yes"
            ],
            "response_option": [
                "Yes",
                "No"
            ]
        },
        {
            "condition": [
                "1:Yes"
            ],
            "finish_time": 1532376086193,
            "prompt_time": 0,
            "question_id": 2,
            "question_text": "How many cigarettes did you smoke?",
            "question_type": "text_numeric",
            "response": [
                "1"
            ],
            "response_option": [
                "1",
                "100"
            ]
        },
        {
            "condition": [
                "35:1"
            ],
            "finish_time": 1532376092502,
            "prompt_time": 0,
            "question_id": 3,
            "question_text": "How long ago did you smoke the cigarette?",
            "question_type": "multiple_choice",
            "response": [
                "4 hrs - 6 hrs"
            ],
            "response_option": [
                "0 - 2 hrs",
                "2 hrs - 4 hrs",
                "4 hrs - 6 hrs",
                "6 hrs - 8 hrs",
                "8 hrs - 10 hrs",
                "10 hrs - 12 hrs",
                "More than 12 hrs"
            ]
        },
        {
            "finish_time": 1532376110072,
            "prompt_time": 0,
            "question_id": 4,
            "question_text": "Since the last time I answered this set of questions, I experienced or thought about a positive experience.",
            "question_type": "multiple_choice",
            "response": [
                "Definitely Yes"
            ],
            "response_option": [
                "Definitely No",
                "Mostly No",
                "Mostly Yes",
                "Definitely Yes"
            ]
        },
        {
            "finish_time": 0,
            "prompt_time": 0,
            "question_id": 5,
            "question_text": "Thank you for answering this Survey. Please click 'FINISH'.",
            "response": []
        }
    ],
    "start_time": 1532375880575,
    "status": "COMPLETED",
    "type": "EMA_RANDOM"
}
  ```

<!-- *code block with example "beautified" ema json file -->

<!-- **Files names:**
*Below is a list of possible EMA file names. This list is not comprehensive, but will serve as a queryable list known possibile file names.
- `org.md2k.scheduler+EMA_RANDOM`
- `org.md2k.mindfulnessstrategy+MINDFULNESS_SMOKING+PHONE`
- `org.md2k.ema+EMA_STRESS_EMI+DATA`
- add others from Moffitt and look at other studies -->

## Smoking

.

## Stress

.

## Random

.

## etc...
