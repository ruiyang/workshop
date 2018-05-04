cd /data/react_demo
echo "node version:"
node --version

echo "yarn version:"
yarn --version

echo "====================install dependencies===================="
yarn install --pure-lockfile

echo "====================lint===================="
yarn lint
rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi

echo "====================test===================="
CI=true yarn test
rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi

echo "====================build===================="
yarn build
rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi
