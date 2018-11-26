import React from 'react';
import PropTypes from 'prop-types';
import ReactDOM from 'react-dom';
import Input from '../../src';

const App = () => (
  <div>
    react input component<Input />
  </div>
);

ReactDOM.render(
  <App />
, document.getElementById('app'));
