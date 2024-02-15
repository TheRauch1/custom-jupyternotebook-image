# Custom Jupyter Notebook Image
Project to create a custom Jupyter Notebook image with the following packages:
- dotnet-sdk-8.0
Also includes a sudoers file to allow the user to run sudo commands without a password. The makefile is used to build the image and run the container directly. This is mostly for development purposes.

## Build the image
```bash
docker build -t custom-jupyter-notebook .
```

## Run the container
```bash
docker run -p 8888:8888 custom-jupyter-notebook
```