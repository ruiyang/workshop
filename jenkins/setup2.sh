mkdir projects
cd projects
git clone https://github.com/ruiyang/react_demo.git
git clone react_demo react_demo.git

mv ./react_demo.git ../git-server/repos
rm -rf *
git clone ssh://git@localhost:2222/git-server/repos/react_demo.git
