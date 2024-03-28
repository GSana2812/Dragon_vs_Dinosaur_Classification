## Dragon vs Dinosaur Classification

This is a computer vision project to classify images of dinosaurs or dragons.
I thank <b>Datatalkclubs</b> and <b>Mr. A. Grigorev </b> for providing excellent learning materials 
and guide in the Machine Learning Engineering path.

The project's path:

-I used an already built model .h5 version, and since it was very big to deploy it in AWS Lambda, I decided
to use a compressed version of it using Tensorflow lite. 
-In inference.py file I built the preprocessing functions and the lambda handler function which will get passed
as a running command to Docker, which will be connected with AWS Lambda.
-After I have built the docker container, I have deployed it in the AWS ECR (Elastic Container Registry)
-I have built the lambda function, I have tested it and in the end I have exposed this function using an 
API Gateway Service in AWS.