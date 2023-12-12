import React from 'react';
import { Routes, Route } from 'react-router-dom';
import Home from '../pages/Home';
import Calculadora from '../pages/Calculadora';
import ToDolist from '../pages/ToDolist';
import Puppyfinder from '../pages/Puppyfinder';



const RoutesApp = () => {
  return (
    <>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/calculadora" element={<Calculadora />} />
        <Route path="/puppyfinder" element={<Puppyfinder />} />
        <Route path="/ToDolist" element={<ToDolist />} />
      </Routes>
    </>
  );
};

export default RoutesApp;