import React from 'react';
import { Routes, Route } from 'react-router-dom';
import Home from '../pages/Home';
import Products from '../pages/Products';
import Services from '../pages/Services';
import Gallery from '../pages/Gallery';
import About from '../pages/About';



const RoutesApp = () => {
  return (
    <>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/products" element={<Products />} />
        <Route path="/services" element={<Services />} />
        <Route path="/gallery" element={<Gallery />} />
        <Route path="/about" element={<About />} />
      </Routes>
    </>
  );
};

export default RoutesApp;