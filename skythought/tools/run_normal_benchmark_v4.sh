# Sky-T1-32B-lora-64-4k-code-math

python eval.py --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-4k-code-math/full/merged --evals=MATH500,GPQADiamond --tp=8 --output_file=test_lora_v4.txt > test_lora_v4_final_math.log

python eval.py --tp 8 --filter-difficulty --source hard --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-4k-code-math/full/merged --output_file lora_v4_lcb_hard.json --evals LiveCodeBench > lorav4_hard_final.log

python eval.py --tp 8 --filter-difficulty --source medium --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-4k-code-math/full/merged --output_file lora_v4_lcb_medium.json --evals LiveCodeBench > lorav4_medium_final.log

python eval.py --tp 8 --filter-difficulty --source easy --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-4k-code-math/full/merged --output_file lora_v4_lcb_easy.json --evals LiveCodeBench > lorav4_easy_final.log
