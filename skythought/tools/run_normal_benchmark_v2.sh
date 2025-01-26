# python eval.py --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-code/full/merged --evals=AIME,MATH500,GPQADiamond --tp=8 --output_file=test_lora_v2.txt > test_lora_v2_final_math.log

# python eval.py --tp 8 --filter-difficulty --source hard --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-code/full/merged --output_file lora_lcb_hard.json --evals LiveCodeBench > lorav2_hard_final.log

# python eval.py --tp 8 --filter-difficulty --source medium --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-code/full/merged --output_file lora_lcb_medium.json --evals LiveCodeBench > lorav2_medium_final.log

# python eval.py --tp 8 --filter-difficulty --source easy --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-code/full/merged --output_file lora_lcb_easy.json --evals LiveCodeBench > lorav2_easy_final.log

# /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-code/full/merged
# All non_reasoning_task # LORA_v2
lm_eval --model vllm     --model_args pretrained=/home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-code/full/merged,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks mmlu --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn > mmlu_0_shot_lorav2

lm_eval --model vllm     --model_args pretrained=/home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-code/full/merged,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks mmlu --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn --num_fewshot 5 > mmlu_5_shot_lorav2

lm_eval --model vllm     --model_args pretrained=/home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-code/full/merged,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks arc_challenge --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn > arc_c_lorav2

lm_eval --model vllm     --model_args pretrained=/home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-code/full/merged,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.9,data_parallel_size=1    --tasks leaderboard_ifeval --trust_remote_code   --batch_size auto --apply_chat_template --fewshot_as_multiturn > ifeval_lorav2

lm_eval --model vllm     --model_args pretrained=/home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-code/full/merged,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks mgsm_direct --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn > mgsm_lorav2

# All non-reasoning task, Sky-T1-32B-preview 
# lm_eval --model vllm     --model_args pretrained=NovaSky-AI/Sky-T1-32B-Preview,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks mmlu --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn > mmlu_0_shot_skyt1

# lm_eval --model vllm     --model_args pretrained=NovaSky-AI/Sky-T1-32B-Preview,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks mmlu --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn --num_fewshot 5 > mmlu_5_shot_skyt1

# lm_eval --model vllm     --model_args pretrained=NovaSky-AI/Sky-T1-32B-Preview,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks arc_challenge --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn > arc_c_skyt1

# lm_eval --model vllm     --model_args pretrained=NovaSky-AI/Sky-T1-32B-Preview,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.9,data_parallel_size=1     --tasks leaderboard_ifeval --trust_remote_code   --batch_size auto --apply_chat_template --fewshot_as_multiturn > ifeval_skyt1

# lm_eval --model vllm     --model_args pretrained=NovaSky-AI/Sky-T1-32B-Preview,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks mgsm_direct --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn > mgsm_skyt1

# All non-reasoning task, Lora-v1
lm_eval --model vllm     --model_args pretrained=/home/ubuntu/lshu/lora/ckpt,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks mmlu --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn > mmlu_0_shot_lorav1

lm_eval --model vllm     --model_args pretrained=/home/ubuntu/lshu/lora/ckpt,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks mmlu --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn --num_fewshot 5 > mmlu_5_shot_lorav1

lm_eval --model vllm     --model_args pretrained=/home/ubuntu/lshu/lora/ckpt,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks arc_challenge --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn > arc_c_lorav1

lm_eval --model vllm     --model_args pretrained=/home/ubuntu/lshu/lora/ckpt,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.9,data_parallel_size=1     --tasks leaderboard_ifeval --trust_remote_code   --batch_size auto --apply_chat_template --fewshot_as_multiturn > ifeval_lorav1

lm_eval --model vllm     --model_args pretrained=/home/ubuntu/lshu/lora/ckpt,tensor_parallel_size=8,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048     --tasks mgsm_direct --trust_remote_code     --batch_size 8 --apply_chat_template --fewshot_as_multiturn > mgsm_lorav1