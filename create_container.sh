#!/bin/bash
#Subir o ambiente do Banco de Dados Relacional MySQL
result=$(docker container ls -a | grep opencaster-ide)
container_mysql='opencaster-ide'

# verificar se o container opencaster-ide já foi criado
if [[ "$result" == *"$container_mysql"* ]]; 
then
    # apenas inicializa o container caso já esteja criado
    docker container start opencaster-ide
    docker exec -it opencaster-ide bash
else
    # cria o container caso não foi criado
    docker container run --name opencaster-ide -v $(pwd):/opencaster-ide -it opencaster
fi


# # --name    nome do container
# # -v        mapear volume local:dentro_container
# # -it       modo iterativo, ou seja, permite entrar no container em modo console
# # -p        externalizar uma porta para acesso internamente ao container

# docker container stop opencaster-ide
# docker container rm -f opencaster-ide


# rm -f     apaga um container (-f )

# Fonte: https://docs.docker.com/engine/reference/run/