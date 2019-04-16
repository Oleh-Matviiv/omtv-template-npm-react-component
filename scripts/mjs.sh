rm -rf dist/mjs

# to build multiple files list them like this:
# for file_name in index Div MyComponent
for file_name in index
do
  echo  "src/$file_name.js -> dist/mjs/$file_name.mjs"
  babel src/$file_name.js --out-dir dist/mjs --no-babelrc --plugins=@babel/transform-react-jsx
  mv dist/mjs/$file_name.js dist/mjs/$file_name.mjs
done
