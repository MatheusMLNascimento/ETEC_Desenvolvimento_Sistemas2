import '../pages/Calculadora.css';
import Header from '../components/containers/Header';
import Nav from '../components/containers/Nav';
import Article from '../components/containers/Article';
import Footer from '../components/containers/Footer';
import React, {useState} from 'react';

function Calculadora (){
    
    const [number1, setNumber1] = useState(0);
    const [number2, setNumber2] = useState(0);
    const [result, setResult] = useState(0);

    const insertNumber1 = (e) => {
        setNumber1(e.target.value);
        console.log("n1");
    }
    
    const insertNumber2 = (e) => {
        setNumber2(e.target.value);
        console.log("n2");
    }


    const pow = () => {
        setResult(Math.pow(number1, number2));
        console.log("pow");
    };

    const root = () => {
        setResult(Math.sqrt(Number(number1)));
    };

    const num_abs = () => {
        setResult(Math.abs(Number(number1)));
    };

    const hip = () => {
        setResult(Math.sqrt(Math.pow(Number(number1), 2) + Math.pow(Number(number2), 2)))
    }

    const around = () => {
        setResult(Math.round(Number(number1)));
    };

    const around_plus = () => {
        setResult(Math.ceil(Number(number1)));
    };

    const around_minus = () => {
        setResult(Math.floor(Number(number1)));
    };

    const randomizer = () => {
        setResult(Math.floor(Math.random() * (Number(number2) - Number(number1) + 1) + Number(number1)))
    }

    const ray = () => {
        setResult(2 * Math.PI * Number(number1));
    };
    
    return(
        <>
        <Header />
        <Nav />

        <div id='container'>
            <h1> Calculadora </h1>
            <div id="labels">
                <label id="num1"><b>1º número:</b></label>
                <input type="text" onChange={insertNumber1} id="n1"></input>
                <label id="num2"><b>2º número(caso não tenha, ignorar):</b></label>
                <input type="text" onChange={insertNumber2} id="n2"></input>
            </div>

            <div id="buttons">
                <button onClick={hip} id='hipotenusa'>hip</button>
                <button onClick={num_abs} id="num_absoluto">abs</button>
                <button onClick={around} id="around">round</button>
                <button onClick={around_plus} id="around_cima">round+</button>
                <button onClick={around_minus} id="around_baixo">round-</button>
                <button onClick={randomizer} id="random_num">random</button>
                <button onClick={pow} id="potencia">x^y</button>
                <button onClick={root} id="raiz">√</button>
                <button onClick={ray} id="raio">C=2πr</button>
            </div>

            <div id="resultado">{result}</div>
        </div>
        

        <Article />
        <Footer />
        </>
    )
}

export default Calculadora;