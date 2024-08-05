echo "installing packages"
yarn install --frozen-lockfile

echo "running typescript compiler"
yarn tsc:full

echo "setting local id"
export LOCAL_DEVELOPER_ID="test.user@lilly.com"

echo "starting local instance"
yarn local