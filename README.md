## Running with docker

1. build image: `docker build --rm -t child_process .`  
2. run container: `docker run child_process`

## Running without docker

1. compile: `crystal build parent.cr && crystal build child.cr`  
2. run: `./parent`

## Problem

When running without docker, the PIDs are as expected for the parent and child. (`x` and `y` would be replace by respective PIDs)

```
parent pid from parent: x
child pid from parent: y

parent pid from child: x
child pid from child: y
```

However, when running in Docker, there is an inconsistency with the PIDs. 

```
parent pid from parent: x
child pid from parent: y

parent pid from child: y
child pid from child: z
```

This makes me believe that the parent process generates a "middleman process" that in turn generate the child process.

