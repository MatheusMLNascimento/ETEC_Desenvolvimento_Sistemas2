function soma(){
    var n1 = parseInt(document.getElementById("n1").value);
    var n2 = parseInt(document.getElementById("n2").value);
    var resultado = document.getElementById("resultado");
    resultado.innerHTML = `<h1>Resultado da soma: ${n1 + n2}</h1>`;
}

function subtracao(){
    var n1 = parseInt(document.getElementById("n1").value);
    var n2 = parseInt(document.getElementById("n2").value);
    var resultado = document.getElementById("resultado");
    resultado.innerHTML = `<h1>Resultado da subtração: ${n1 - n2}</h1>`;
}

function multiplicacao(){
    var n1 = parseInt(document.getElementById("n1").value);
    var n2 = parseInt(document.getElementById("n2").value);
    var resultado = document.getElementById("resultado");
    resultado.innerHTML = `<h1>Resultado da multiplicação: ${n1 * n2}</h1>`;
}

function divisao(){
    var n1 = parseInt(document.getElementById("n1").value);
    var n2 = parseInt(document.getElementById("n2").value);
    var resultado = document.getElementById("resultado");
    resultado.innerHTML = `<h1>Resultado da divisão: ${n1 / n2}</h1>`;
}

function potencia(){
    var n1 = parseInt(document.getElementById("n1").value);
    var n2 = parseInt(document.getElementById("n2").value);
    var resultado = document.getElementById("resultado");
    resultado.innerHTML = `<h1>Resultado da potência: ${n1 ** n2}</h1>`;
}

function raiz(){
    var n1 = parseInt(document.getElementById("n1").value);
    var n2 = parseInt(document.getElementById("n2").value);
    var resultado = document.getElementById("resultado");
    resultado.innerHTML = `<h1>Resultado da soma: ${Math.sqrt(n1)}</h1>`;
}