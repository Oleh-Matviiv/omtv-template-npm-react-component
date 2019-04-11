echo initializing new component: $1
echo ==copy demo folder
cp -rf ./demo $1/
echo ==copy scripts folder
cp -rf ./scripts $1/
echo ==copy src folder
cp -rf ./src $1/
echo ==copy .babelrc
cp ./.babelrc $1/
echo ==copy .gitignore
cp ./.gitignore $1/
echo ==copy .npmignore
cp ./.npmignore $1/
echo ==copy README.md
cp ./README-COMPONENT.md $1/README.md
echo ==copy releases.md
cp ./releases.md $1/
echo ==copy todo
cp ./todo $1/
echo ==copy webpack.config.js
cp ./webpack.config.js $1/
echo ==copy package.json
cp ./package.json $1/
echo "==DON'T forget to update package.json with new component related data"
