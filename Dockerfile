FROM quay.io/jupyter/all-spark-notebook:latest

USER root

RUN echo "jovyan ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/jovyan

USER $NB_UID

RUN <<EOF 
sudo apt update
sudo apt install -y dotnet-sdk-8.0
fix-permissions "${CONDA_DIR}"
fix-permissions "/home/${NB_USER}"
EOF