# MadAI
A Deep Learning project for a University Lesson. The topic is Medical Image Segmentation, more specifically cardiac MRI segmentation.

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

You can access them the original file at: https://www.cardiacatlas.org/sunnybrook-cardiac-data/

For now, until we solve this problem you can use our project with the test batch we uploaded to GitHub. Currently you can find it in the *.ipynb_checkpoints* folder.

With this you should be able to run the *Cardiac MRI segmentation-checkpoint.ipynb*.

## **Container**

### Requirements
The project can be run in a Docker container. Docker has to be installed on this computer, for this to work.

### Start docker
- After docker is installed, simply run **docker_start.ps1** script in a terminal:
`.\docker_start.ps1`
- Click the url provided by the docker container in the terminal to reach the jupyter server
e.g.: `http://127.0.0.1:8888/tree?token=56646...`
- Click `Cardiac_MRI_segmentation-checkpoint.ipynb`
- Saving in the browser (jupyter) also saves the file in the filesystem
- Changing the files in the filesystem also changes files in the docker container (refreshing the browser updates the files in jupyter)

### Stop docker
After finishing and saving your work, you can stop the docker container with  **docker_stop.ps1** script in a terminal:
`.\docker_stop.ps1`