docker run -i -t -p 3000:3000 -p 5432:5432 --rm -e APP_LOGLEVEL=INFO -v gd-volume:/data \
gooddata/gooddata-cn-ce:latest