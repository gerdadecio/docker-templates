# A Dockerfile template for a simple nodejs application

```Dockerfile``` and ```Compose``` template for vanilla version of ```Nodejs``` applications.

# Just run !

```sh
# Build the development container
docker build -target development -t app_dev .

# Build the test container
docker build -target test -t app_test .

# Run
docker build -t app_dev
docker build -t app_test
```