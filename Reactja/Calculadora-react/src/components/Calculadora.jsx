import './Calculadora.css'


function Calculadora (){
    return(
        <>
        
        <h1> Calculadora </h1>
        <div id="labels">
            <label id="num1" for="n1"><b>1º número:</b></label>
            <input type="text" id="n1"></input>
            <label id="num2" for="n2"><b>2º número(caso não tenha, ignorar):</b></label>
            <input type="text" id="n2"></input><br></br>
        </div>

        <div id="buttons">
            <button id="hipotenusa">hip</button>
            <button id="num_absoluto">abs</button>
            <button id="around">round</button>
            <button id="around_cima">round+</button>
            <button id="around_baixo">round-</button>
            <button id="random_num">random</button>
            <button id="potencia">x^y</button>
            <button id="raiz">√</button>
            <button id="raio">C = 2πr</button>
        </div>

        <div id="resultado"></div>

        </>
    )
}

export default Calculadora;