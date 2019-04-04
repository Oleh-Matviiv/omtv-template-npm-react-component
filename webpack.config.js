const path = require('path');
const pkg = require('./package.json');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const CleanWebpackPlugin = require('clean-webpack-plugin');


module.exports = env => {
  return {
    entry: {
      'demo/dist/bundle': './demo/src/index.js',
      'dist/index': './src/index.js',
    },
    output: {
      filename: '[name].js',
      path: path.resolve(__dirname, './'),
      library: pkg.name,
      libraryTarget: 'umd',
      publicPath: '/dist/',
      globalObject: 'this',
      umdNamedDefine: true
    },
    module: {
      rules: [
        {
          test: /\.js$/,
          exclude: /node_modules/,
          use: {
            loader: 'babel-loader',
            options: {
              presets: ['@babel/preset-env'],
              plugins: [
                "@babel/proposal-class-properties",
                "@babel/proposal-object-rest-spread"
              ],
            },
          },
        },
      ],
    },
    resolve: {
      alias: {
        'react': path.resolve(__dirname, './node_modules/react'),
        'react-dom': path.resolve(__dirname, './node_modules/react-dom'),
      },
    },
    externals: env && env.MODE === 'production' ? {
      react: {
        commonjs: "react",
        commonjs2: "react",
        amd: "React",
        root: "React",
      },
      "react-dom": {
        commonjs: "react-dom",
        commonjs2: "react-dom",
        amd: "ReactDOM",
        root: "ReactDOM",
      },
    } : {},
    plugins: [
      new HtmlWebpackPlugin({
        filename: 'demo/dist/index.html',
        template: path.resolve(__dirname, 'demo/src/index.html'),
        title: 'Demo omtv-react-input',
      }),
      new CleanWebpackPlugin(['dist', 'demo/dist']),
    ],
    devServer: {
      contentBase: './demo/dist',
      port: 9000,
    },
  };
};
