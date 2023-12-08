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

Currently we are facing a problem concerning the data files. The files are too large and we cannot upload them to GitHub.

You can access the original file at: https://www.cardiacatlas.org/sunnybrook-cardiac-data/

Our modified datafiles can be found here: https://drive.google.com/file/d/1ZfMrP214ZHfaliZqskRgOYZ4WXjPdlMB/view?usp=sharing

For now, until we solve this problem you can use our project with the test batch we uploaded to GitHub. Currently you can find it in the *.ipynb_checkpoints* folder.

With this you should be able to run the *Cardiac MRI segmentation-checkpoint.ipynb*.

## **Docker Container**

### Requirements
The project can be run in a Docker container. Docker has to be installed on this computer, for this to work.

You can install from: https://www.docker.com/products/docker-desktop/

### Create and start container (for the first time)
- In a command line 
    - Change `<repo-path>` to your actual repository path
    - Run `docker run -v <repo-path>:/app -p 127.0.0.1:8888:8888 --name madai_container julcsi333/bme_madai_2023`

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

## **Run the pipeline**
The notebooks have to run in the following order:
- 1 - Downloading libraries
- 2 - Data preparation
- 3 - Training

## Train the models
Because we have both images and patient data, we are using an ensamble model as a baseline
- **image_classifier** is a RandomForestClassifier
- **patient_data_classifier** is a RandomForestClassifier

### Image Classifier
image_classifier can be trained with the 'Image' column of the prepared dataset.

### Patient Data Classifier
patient_data_classifier can be trained with all the columns of the prepared dataset except: 'Image', 'PatientID', 'Pathology'.

## Evaluate the models
