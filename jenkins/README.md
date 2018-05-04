# Jenkins workshop
## Goal
  - Learn to use docker
  - Learn Jenkins pipeline
## Prerequisite
Please make sure you have the docker installed [Download](https://docs.docker.com/docker-for-mac/release-notes/#docker-community-edition-17120-ce-mac55-2018-02-27)
  - execute
  ```shell
  git clone https://github.com/ruiyang/workshop.git
  cd workshop/jenkins
  ./setup.sh
  docker logs jenkins
  ```
  - wait for a few minutes for jenkins server up
  - in the logs of jenkins container, you will see the following text
Jenkins initial setup is required. An admin user has been created and a password generated.
Please use the following password to proceed to installation:

3ff3dd32816f455494e6d3c9c7a05bef

  - navigate to http://localhost:8080
  - put your setup password there
  - make sure you have the following plugins installed
    - pipeline
    - pipeline stage view
    - git
    - timestamper
    - Credentials Binding
    - Workspace Cleanup
  - click install
  - create your admin user once installation finishes
  - click "Read to use" botton to start using Jenkins
  - execute
  ```shell
  ./build-react.sh
  ```
