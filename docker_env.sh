docker build -t s2_dev_env .
docker run --rm -it -v $(pwd):/s2 s2_dev_env "/bin/bash"