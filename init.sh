echo initializing new component: $1
echo ==copy demo folder
cp -rf ./demo $1/
echo ==copy scripts folder
cp -rf ./scripts $1/
echo ==copy src folder
cp -rf ./src $1/
echo ==copy .babelrc
cp -rf ./.babelrc $1/
echo ==copy .gitignore
cp -rf ./.gitignore $1/
echo ==copy .npmignore
cp -rf ./.npmignore $1/
echo ==copy README.md
cp -rf ./README.md $1/
echo ==copy releases.md
cp -rf ./releases.md $1/
echo ==copy todo
cp -rf ./todo $1/
echo ==copy webpack.config.js
cp -rf ./webpack.config.js $1/
echo ==copy package.json
cp -rf ./package.json $1/
echo "==DON'T forget to update package.json with new component related data"
