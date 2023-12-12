import '../pages/ToDolist.css';
import Header from '../components/containers/Header';
import Nav from '../components/containers/Nav';
import Article from '../components/containers/Article';
import Footer from '../components/containers/Footer';
import React, {useState} from 'react';

function ToDolist (){
  
    const changeStyle = (e) => {
        if(e.target.id == "cont2"){
            e.target.id = "cont";
        } else {
            e.target.id = "cont2"
        }
        
    };
    
    return(
        <>
        <Header />
        <Nav />
        <div id='container2'>
            <ul className="afazeres">
                <li><button id="cont" onClick={changeStyle}>Passear com o cachorro </button></li><br></br>
                <li><button id="cont" onClick={changeStyle}>Jogar o lixo fora </button></li><br></br>
                <li><button id="cont" onClick={changeStyle}>Arrumar a casa </button></li><br></br>
                <li><button id="cont" onClick={changeStyle}>Limpar o banheiro </button></li><br></br>
                <li><button id="cont" onClick={changeStyle}>Limpar o quarto </button></li><br></br>
                <li><button id="cont" onClick={changeStyle}>Lavar a louça</button></li><br></br>
            </ul>
        </div>
        
        <Article />
        <Footer />
        </>
    )
}

export default ToDolist;