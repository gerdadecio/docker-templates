**NOTE:** 
This is a fork of [devopshobbies/docker-templates](devopshobbies/docker-templates) with additional modifications. I haven't had the time to submit a PR or make changes based on potential code reviews, as the process of preparing and updating contributions would require more time than I currently have.

<img src="./_assets/banner.png" style="width: 100%; max-width: 1200px; margin: 0 auto; display: block">

# Docker-Templates

This repository is a good source of docker templates added and modified by users as a best practice. You can navigate, check and use them as you wish. This repository was created for educational purposes and remains free forever.
Let's grow together - DevOps Hobbies team.

## The goal.

In this repository, we are trying to gather some practical samples of the `docker` file templates for each language and technology, so you can use them in your projects.
We are trying to provide docker files and templates as best practices.

## Folder Copier CLI
A simple bash script to copy a specified folder from a source or template directory to the current working directory.

### Usage
```bash
SOURCE_DIR="/path/to/your/docker-templates" bash /path/to/your/docker-templates/cli.sh -f <folder_name>
```

you can add an alias
```bash
# ~/.my_aliases
newdockerproj() {
  (SOURCE_DIR="/path/to/your/docker-templates" bash /path/to/your/docker-templates/cli.sh -f "$1")
}
```

and just run
```bash
# to copy the docker templates for golang
newdockerproj go

# show help - for a list of templates
ndewdockerproj
```

- `-f <folder_name>`: Name of the folder to copy.
- Copies the folder from `$SOURCE_DIR` or `$SOURCE_DIR/templates` to the current path.

### Environment Variables
`SOURCE_DIR`: Directory where folders are stored. Defaults to `$HOME`.

## How to contribute?

We are performing a helpful guide about how you can contribute to the project and You can access it [from here](./CONTRIBUTING.md).
If you find a problem anywhere in the project even in the `CONTRIBUTING.md` file, You can change the file but make sure You understand what are You doing, and if You need any other help, just create an issue and we'll be there to give you one.

## languages

You can find different frameworks or use cases in each folder.

<!-- [number-language-framework or environment](Link to readme or folder) -->

### Javascript, Typescript `Backend` & related frameworks

- Plain NodeJS: [Dockerfile](./templates/js-tsx-backend/Dockerfile), [Readme](./templates/js-tsx-backend/README.md/)
- Plain/vanilla version of nodejs with tests: [Dockerfile](./templates/nodejs/Dockerfile), [Readme](./templates/nodejs/README.md)
- NestJS: [Dockerfile](./templates/js-tsx-backend/frameworks/nestjs/Dockerfile), [Readme](./templates/js-tsx-backend/frameworks/nestjs/README.md)

### Javascript, Typescript `Frontend` & related frameworks

- Plain Javascript: [Readme](./templates/js-tsx-frontend/README.md)
- Angular: [Dockerfile](./templates/angular/angular/Dockerfile), [Docker Compose](./templates/angular/compose.yaml), [Readme](./templates/angular/README.md)
- Vue.JS: [Dockerfile](./templates/vue.js/Dockerfile), [Readme](./templates/vue.js/README.md)
- React: [Dockerfile](./templates/react/Dockerfile), [Readme](./templates/react/README.md)


### PHP programming language & related frameworks

- Plain PHP: [Readme](./templates/php/./README.md)
- Laravel: [Dockerfile](./templates/php/laravel/Dockerfile), [Readme](./templates/php/laravel/README.md)

### Go programming language & related frameworks

- Plain Go: [Dockerfile](./templates/go/Dockerfile), [Readme](./templates/go/README.md)

### Java programming language & related frameworks

- Plain Java: [Readme](./templates/java/README.md)
- Maven: [Dockerfile](./templates/java/Maven/README.md), [Readme](./templates/java/Maven/README.md)

### C# programming language & related frameworks

- Plain C# (hello docker example): [Dockerfile](./templates/c%23/HelloDocker/Dockerfile), [Readme](./templates/c%23/HelloDocker/README.md)

### Python programming language & related frameworks

- Python Flask (hello world app): [Dockerfile](./templates/python/python-flask/Dockerfile), [Readme](./templates/python/python-flask/README.md)
- Plain Python with postgres: [Dockerfile](./templates/python/python-with-postgresql/Dockerfile), [Dockerfile Compose](./templates/python/python-with-postgresql/docker-compose.yaml), [Readme](./templates/python/README.md)
- Django: [Dockerfile](./templates/python/python-django/Django), readme required

### C++ programming language & related frameworks

- Plain C++ (hello world example): [Dockerfile](./templates/c%2B%2B/Dockerfile), [Readme](./templates/c%2B%2B/README.md)

### Ruby programming language & related frameworks

- Plain Ruby (hello world example): [Dockerfile](./templates/ruby/Dockerfile), [Readme](./templates/ruby/README.md)

### Dart programming language & related frameworks

- Plain Dart (hello world example): [Dockerfile](./templates/dart/Dockerfile), [Readme](./templates/dart/README.md)

### Rust programming language & related frameworks

- Plain Rust: [Dockerfile](./templates/rust/Dockerfile), [Readme](./templates/rust/README.md)
