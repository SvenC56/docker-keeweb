# KeeWeb
![Issues](https://img.shields.io/github/issues/SvenC56/docker-keeweb) ![License](https://img.shields.io/github/license/SvenC56/docker-keeweb) ![Twitter](https://img.shields.io/twitter/url/https/github.com%2FSvenC56%2Fdocker-keeweb)

Original Image: [Github](https://github.com/keeweb/keeweb)
This webapp is a browser and desktop password manager compatible with KeePass databases. It doesn't require any server or additional resources. The app can run either in browser, or as a desktop app.

## Sidenotes
This image uses the latest Alpine Nginx container. It gets automatically updated with every new release from KeeWeb.

## Usage

### Install

Pull `svenc56/keeweb` from the Docker repository:

    docker pull svenc56/keeweb


Or build `svenc56/keeweb` from source:

    git clone https://github.com/SvenC56/docker-keeweb.git
    cd dockerfile
    docker build -t svenc56/keeweb .

### Run

Run the image, binding associated ports, and mounting the present working
directory:

    docker run -d -p 80:80 svenc56/keeweb


## Services

Service     | Port | Usage
------------|------|------
KeeWeb      | 80 | When using `docker run`, visit `http://localhost:80` in your browser
