rm -rf dist/mjs
babel src/index.js --out-dir dist/mjs --no-babelrc --plugins=@babel/transform-react-jsx
mv dist/mjs/index.js dist/mjs/index.mjs
