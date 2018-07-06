import React from 'react'
import ReactDOMServer from 'react-dom/server'
import SearchForm from './SearchForm';
import LoadingSpinner from './LoadingSpinner';

export const WelcomeMessage = () =>
  <div className="container">
    <h1 className="jumbotron-heading">test</h1>
  </div>;

const HeaderSection = () =>
  <section className="text-center mt-4">
    <SearchForm />
    <LoadingSpinner />
  </section>;

export default HeaderSection;
