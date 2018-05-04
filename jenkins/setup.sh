mkdir jenkins_home
docker run --name jenkins -d -p 8080:8080 -p 50000:50000 -v $(pwd)/jenkins_home:/var/jenkins_home jenkins/jenkins:lts
git clone https://github.com/ruiyang/react_demo.git

#cp ~/.ssh/id_rsa.pub $(pwd)/git-server/keys
#docker build -t jenkins-bgl-alpine:1.0 .
#mkdir -p git-server/keys && mkdir -p git-server/repos
# docker run --name git -d -p 2222:22 -v $(pwd)/git-server/keys:/git-server/keys -v $(pwd)/git-server/repos:/git-server/repos jkarlos/git-server-docker
