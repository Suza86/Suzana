import React from 'react'
import ReactDOMServer from 'react-dom/server'
import HeaderSection from './HeaderSection';
import MovieList from './MovieList';

const App = props =>
  <div>
    <HeaderSection />
    <MovieList {...props} />
  </div>;

export default App;
