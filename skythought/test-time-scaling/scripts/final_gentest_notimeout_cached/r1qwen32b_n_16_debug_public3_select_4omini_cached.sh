#!/bin/bash

MAX_ROUND=3
for difficulty in easy medium hard
do
    python evaluate_multiprocess.py \
        --difficulty=${difficulty} \
        --temperature=0.7 \
        --num_threads=32 \
        --n=16 \
        --selection=generated_tests_no_timeout \
        --api_name deepseek-ai/DeepSeek-R1-Distill-Qwen-32B \
        --api_base http://localhost:8000/v1 \
        --test_generator 4o-mini \
        --lcb_version release_v2 \
        --num_round ${MAX_ROUND} \
        --result_json_path="results/final_r1qwen32b_n_16_debug_public3_select_4omini_cached_${difficulty}.json" \
        --load_cached_preds \
        --cached_preds_path="results/final_r1qwen32b_n_16_debug_public3_oracle_${difficulty}.json"
done

