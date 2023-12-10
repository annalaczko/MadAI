# MadAI
A Deep Learning project for a University Lesson. The topic is Medical Image Classification, more specifically cardiac MRI heart disease classification.

## **Team** MadAI

**Members:** 
- Berkovics Fanni ( B5NOKX )
- Jankó Júlia ( CPE4SR )
- Laczkó Anna ( GQXHDA )

## **Description:**
In this project, you'll dive into the idea of using multiple models together, known as model ensembles, to make our deep learning solutions more accurate. They are a reliable approach to improve accuracy of a deep learning solution for the added cost of running multiple networks. Using ensembles is a trick that's widely used by the winners of AI competitions. Task of the students: explore approaches to model ensemble construction for semantic segmentation, select a dataset (preferentially cardiac MRI segmentation, but others also allowed), find an open-source segmentation solution as a baseline for the selected dataset and test it. Train multiple models and construct an ensemble from them. Analyse the improvements, benefits and added costs of using an ensemble. 

**Related materials:** 

- https://humanheart-project.creatis.insa-lyon.fr/database/#collection/637218c173e9f0047faa00fb
- https://github.com/vlbthambawita/divergent-nets
- https://github.com/WalBouss/SenFormer
- https://arxiv.org/abs/2107.00283
- https://arxiv.org/abs/2111.13280
- https://dl.acm.org/doi/abs/10.1145/3555776.3577682 (no official code)

**Difficulty:** medium

## **Repository**

You can access the original file at: https://www.cardiacatlas.org/sunnybrook-cardiac-data/
Our modified datafiles can be found here: https://drive.google.com/file/d/1jf2--zcF4WmJsAW53EmSd6r_Nhb2UuCx/view?usp=sharing
You have to extract the contents of it into the data folder. Right now you only need the "SCD_IMAGES" folder, you can delete the rest.

Root:
- `Dockerfile`, `requirements.txt`: Files needed for contenarization image building
- `1 - Data preparation.ipynb`, `2 - Training and Evaluation.ipynb`, `3 - User Interface.ipynb`: notebooks for the [pipeline](#run-the-pipeline)

Data folder:
- Input for `1 - Data preparation`: the images and numeric data to patients
- Output for `1 - Data preparation`: saves the shuffled data in batches here
- Input for `2 - Training and Evaluation`: reads these data batches

Misc folder:
- Files created during development
- Not relevant for the user


## **Docker Container**

### Requirements
The project can be run in a Docker container. Docker has to be installed on this computer, for this to work.

You can install from: https://www.docker.com/products/docker-desktop/

### Create and start container (for the first time)
- In a command line 
    - Change `<repo-path>` to your actual repository path
    - Run `docker run -v <repo-path>:/app -p 127.0.0.1:8888:8888 --name madai_container julcsi333/bme_madai_2023:1.1`

### Start container
- In a command line 
    - Run `docker start madai_container`

### Access Jupyter server
- In a command line
    - Run `docker exec -it madai_container jupyter notebook list`
    - This will list the URL that the jupyter is running on
    - You should see something like this: `http://124be635806e:8888/?token=5d999fe...6179434f`
    - Change the `124be635806e` part to `localhost`
    - Paste the URL in a browser 
        - Something like: `http://localhost:8888/?token=5d999fe...6179434f`

### Stop docker
After finishing and saving your work, you can stop the docker container with this line in a terminal:
- `docker stop madai_container`

### About the container
- Saving in the browser (jupyter) also saves the file in the filesystem
- Changing the files in the filesystem also changes files in the docker container (refreshing the browser updates the files in jupyter)
- The Docker image was made with the `requirements.txt` and `Dockerfile` in the root of the repo.
- The image is published [here](https://hub.docker.com/repository/docker/julcsi333/bme_madai_2023/general).
- The current version that we are using is `1.1`

## **Run the pipeline**
The notebooks have to run in the following order:
- [1 - Data preparation](1%20-%20Data%20preparation.ipynb)
- [2 - Training and evaluation](2%20-%20Training%20and%20evaluation.ipynb)
- [3 - User interface](3%20-%20User%20interface.ipynb)

## Train the models
Because we have both images and patient data, we are using an ensemble model
- Read the training datafiles
- Train individual models
- Read the ensemble training datafiles
- Train ensemble voting classifier
- You can see these in action here: [2 - Training and evaluation](2%20-%20Training%20and%20evaluation.ipynb)

## Evaluate the models
Evaluating the model can be seen in [2 - Training and evaluation](2%20-%20Training%20and%20evaluation.ipynb):
- `evaluate_model(voting_classifier, X_test, y_test)`
