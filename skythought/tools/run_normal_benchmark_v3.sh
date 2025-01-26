# python eval.py --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-2k-code-math/full/merged --evals=AIME,MATH500,GPQADiamond --tp=8 --output_file=test_lora_v3.txt > test_lora_v3_final_math.log

python eval.py --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-2k-code-math/full/merged --evals=AIME --tp=8 --output_file=test_lora_v3_AIME.txt > test_lora_v3_final_math_AIME.log

python eval.py --tp 8 --filter-difficulty --source hard --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-2k-code-math/full/merged --output_file lora_lcb_hard.json --evals LiveCodeBench > lorav3_hard_final.log

python eval.py --tp 8 --filter-difficulty --source medium --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-2k-code-math/full/merged --output_file lora_lcb_medium.json --evals LiveCodeBench > lorav3_medium_final.log

python eval.py --tp 8 --filter-difficulty --source easy --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-2k-code-math/full/merged --output_file lora_lcb_easy.json --evals LiveCodeBench > lorav3_easy_final.log
