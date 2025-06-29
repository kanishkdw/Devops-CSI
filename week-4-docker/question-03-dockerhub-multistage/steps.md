## Question 3: DockerHub & Multi-Stage Build

###  Steps Followed:

1. Created a `Dockerfile` using multi-stage builds.
2. First stage used `node:18` to build a sample app.
3. Second stage used `nginx:alpine` to serve the built app.
4. Used `docker build` to create the image.
5. Logged into DockerHub using `docker login`.
6. Tagged and pushed image to DockerHub: `docker push kanishkdw/multistage-demo`.
7. Verified deployment using `docker run -p 80:80`.


