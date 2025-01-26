python eval.py --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-distill-5k-7b/full/merged --evals=AIME --tp=4 --output_file=test_lora_v5_AIME.txt > test_lora_v5_5k_distill_final_math_AIME.log

python eval.py --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-distill-5k-7b/full/merged --evals=MATH500,GPQADiamond --tp=4 --output_file=test_lora_v5.txt > test_lora_v5_5k_distill_final_math_MATH500_GPQA.log

python eval.py --tp 4 --filter-difficulty --source hard --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-distill-5k-7b/full/merged --output_file lora_v5_lcb_hard.json --evals LiveCodeBench > lora_v5_5k_7Bdistill_hard_final.log

python eval.py --tp 4 --filter-difficulty --source medium --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-distill-5k-7b/full/merged --output_file lora_v5_lcb_medium.json --evals LiveCodeBench > lora_v5_5k_7Bdistill_medium_final.log

python eval.py --tp 4 --filter-difficulty --source easy --model /home/ubuntu/lshu/lora_train/ckpt/Sky-T1-32B-lora-64-distill-5k-7b/full/merged --output_file lora_v5_lcb_easy.json --evals LiveCodeBench > lora_v5_5k_7Bdistill_easy_final.log
