import React from 'react';
import { Link } from 'react-router-dom';
import './Nav.css';

const Nav = () => {
  return (
    <>
        <nav>
            <ul>
                <li>
                    <Link to="/">Home</Link>
                </li>
                <li>
                    <Link to="/calculadora">Calculadora</Link>
                </li>
                <li>
                    <Link to="/puppyfinder">Puppyfinder</Link>
                </li>
                <li>
                    <Link to="/ToDolist">ToDolist</Link>
                </li>
            </ul>
        </nav>
    </>
    
  );
};

export default Nav;