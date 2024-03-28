# Base image provided by AWS Lambda for running lambda functions
FROM public.ecr.aws/lambda/python:3.10

COPY requirements.txt .

RUN pip3 install -r requirements.txt
#RUN pip3 install tflite_runtime-2.14.0-cp310-cp310-linux_x86_64.whl

COPY dino-vs-dragon.tflite .
COPY inference.py .


CMD ["inference.lambda_handler"]