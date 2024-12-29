from public.ecr.aws/lambda/python:3.9
copy requirements.txt ${LAMBDA_TASK_ROOT}
copy state_handler.py ${LAMBDA_TASK_ROOT}
run pip install pymysql
run pip install -r requirements.txt
cmd ["state_handler.lambda_handler"]