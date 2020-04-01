#library webb app for docker demo

### To construct a docker image
docker build -t library:latest .

### To execute your image within a docker container
docker run -d -p 8080:8080 library:latest