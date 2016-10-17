## Running with docker

1. build image: `docker build --rm -t child_process .`  
2. run container: `docker run child_process`

## Running without docker

1. compile: `crystal build parent.cr && crystal build child.cr`  
2. run: `./parent`
