# Circle CI status
[![CircleCI](https://circleci.com/gh/T128CL216/project-ml-microservice-kubernetes.svg?style=svg)]

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

# Script Files

project-ml-microservice-kubernetes is a python based application deployed on K8s cluster using docker images.

## Installation

To use all the app components locally, create a virtual env and install all required libraries

```bash
pip install -r requirements.txt
```

## App.py

This app.py file is the main script responsible of making predictions. 
A new log command has been added to this file as per the instructions:
```python
LOG.info(f"Output prediction Value : {prediction}")
```

## run_docker.sh

This file is to create the desired image based on python2.7.X image. It will install all dependencies and install the application on the container then trigger it.

## upload_docker.sh
This script will push the new docker image to docker hub repository

## run_kubernetes.sh
This script will only run if a cluster already exists.
It will deploy the image previously uploaded in docker to the cluster pods , it will also redirect the local port to the cluster port.

# Output_txt_files
## docker_out.txt
This file will show the output of the test done to make a prediction using make_predictions.sh on the docker image.
## kubernetes_out.txt
This one will show the same test but executed on the K8s cluster, we won't actually see the response but we will see that the cluster is actually getting the request after the deployment on the pods has been successfully completed. 