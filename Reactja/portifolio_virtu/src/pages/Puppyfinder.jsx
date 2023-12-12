import '../pages/Puppyfinder.css';
import Header from '../components/containers/Header';
import Nav from '../components/containers/Nav';
import Article from '../components/containers/Article';
import Footer from '../components/containers/Footer';
import React, {useState} from 'react';

function Puppyfinder(){
  
    const changeStyle = (e) => {
      if (e.target.id == "bttn1"){
        e.target.id = "style1"
      } else if (e.target.id == "bttn2"){
        e.target.id = "style2"
      } else if (e.target.id == "bttn3"){
        e.target.id = "style3"
      } else if (e.target.id == "bttn4"){
        e.target.id = "style4"
      } else if (e.target.id == "bttn5"){
        e.target.id = "style5"
      } else if (e.target.id == "bttn6"){
        e.target.id = "style6"
      }
        
    };
    
    return(
        <>
        <Header />
        <Nav />
        <h1 id='title'>Puppy Finder - Encontre seu amigo pet perdido aqui</h1>

        <h2>Parques listados</h2>
        <div className="parks">
            <button id="bttn1" onClick={changeStyle}><img id="1" src="./img/jequitibas.png" 
                width="210px" height="180px" alt="jequitiba"></img></button>

            <button id="bttn2" onClick={changeStyle}><img id="2" src="./img/parque_portugal.png" 
                width="240px" height="180px" alt="portugal"></img></button>
            
            <button id="bttn3" onClick={changeStyle}><img id="3" src="./img/guarantas.png" 
                width="200px" height="180px" alt="guarantas"></img></button>

            <button id="bttn4" onClick={changeStyle}><img id="4" src="./img/americana.png" 
                width="210px" height="180px" alt="americana"></img></button>
            
            <button id="bttn5" onClick={changeStyle}><img id="5" src="./img/cachoeira.png" 
                width="240px" height="180px" alt="cachoeira"></img></button>
            
            <button id="bttn6" onClick={changeStyle}><img id="6" src="./img/zanoni.png" 
                width="200px" height="180px" alt="zanoni"></img></button>
        </div>

        <h2>Cachorros encontrados</h2>

        <div className="cachorro">
            <button id='bttn1' onClick={changeStyle}><img id="cachorro1" src="./img/cachorro.png" 
                width="150px" height="130px" alt=""></img></button>

            <button id='bttn2' onClick={changeStyle}><img id="cachorro2" src="./img/cachorro (1).png" 
                width="150px" height="130px" alt=""></img></button>

            <button id='bttn3' onClick={changeStyle}><img id="cachorro3" src="./img/cachorro (2).png" 
                width="150px" height="130px" alt=""></img></button>

            <button id='bttn4' onClick={changeStyle}><img id="cachorro4" src="./img/cachorro (3).png" 
                width="150px" height="130px" alt=""></img></button>

            <button id='bttn5' onClick={changeStyle}><img id="cachorro5" src="./img/cachorro (4).png" 
                width="150px" height="130px" alt=""></img></button>

            <button id='bttn6' onClick={changeStyle}><img id="cachorro6" src="./img/cachorro (5).png" 
                width="150px" height="130px" alt=""></img></button>
        </div>
        <h2>Espero que tenha encontrado seu petzinho!</h2>
        <Article />
        <Footer />
        </>
    )
}

export default Puppyfinder;