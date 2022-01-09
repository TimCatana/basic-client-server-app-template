import React from 'react';
import {Link} from 'react-router-dom';
import axios from 'axios';
 
const Home = () =>  {
  return (
    <>
    <main>
      <h2>Welcome to the homepage!</h2>
      <p>You can do this, I believe in you.</p>
    </main>
    <button title='press me!' onClick={() => axios.get('http://localhost:4400/contest/test')} >
      <p>press me!</p>
    </button>
    <nav>
      <Link to="/about">About</Link>
    </nav>
  </>
  );
}

export default Home;
