#!/bin/bash

# conda env: s2j
# command: bash scripts/discomat/prompt_error_recovery.sh

# API_SOURCE=openai
# BACKEND=gpt-3.5-turbo

API_SOURCE=azure
# BACKEND=fan-gpt35-turbo
# MAX_TOKENS=512

BACKEND=fan-gpt4
MAX_TOKENS=2048

python run.py \
    --run_type prompt \
    --api_source $API_SOURCE \
    --backend $BACKEND \
    --task discomat \
    --prompt_setting error_recovery \
    --template template_filling \
    --task_start_index 0 \
    --task_end_index 200 \
    --max_tokens $MAX_TOKENS \
    --stop $'\n\n' \
    --data_split test \
    --num_passes 20