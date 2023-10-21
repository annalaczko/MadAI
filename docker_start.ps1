$dir = pwd

docker run -v $dir\ipynb_checkpoints:/app -p 127.0.0.1:8888:8888 --name madai_container julcsi333/bme_madai_2023