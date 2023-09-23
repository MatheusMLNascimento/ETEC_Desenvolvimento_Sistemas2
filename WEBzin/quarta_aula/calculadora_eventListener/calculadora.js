var potencia = document.getElementById("potencia");

potencia.addEventListener("click", () => {
    var n1 = parseInt(document.getElementById("n1").value);
    var n2 = parseInt(document.getElementById("n2").value);
    document.getElementById("resultado").innerHTML = `<h1>Potência: ${Math.pow(n1, n2)}</h1>`;
})

// ========================================================================================================
var raiz = document.getElementById("raiz");

raiz.addEventListener("click", () => {
    n1 = parseInt(document.getElementById("n1").value);
    document.getElementById("resultado").innerHTML = `<h1>Raiz: ${Math.sqrt(n1)}</h1>`;
})

// ========================================================================================================
var num_abs = document.getElementById("num_absoluto");

num_abs.addEventListener("click", () => {
    n1 = parseInt(document.getElementById("n1").value);
    document.getElementById("resultado").innerHTML = `<h1>Número absoluto: ${Math.abs(n1)}</h1>`;
})

// ========================================================================================================
var hipotenusa = document.getElementById("hipotenusa");

hipotenusa.addEventListener("click", () => {
    n1 = parseInt(document.getElementById("n1").value);
    n2 = parseInt(document.getElementById("n2").value);
    document.getElementById("resultado").innerHTML = `<h1>Hipotenusa: ${Math.sqrt(Math.pow(n1, 2) + Math.pow(n2, 2))}</h1>`;
})

// ========================================================================================================
var around = document.getElementById("around");

around.addEventListener("click", () => {
    n1 = parseFloat(document.getElementById("n1").value);
    document.getElementById("resultado").innerHTML = `<h1>Número arredondado: ${Math.round(n1)}</h1>`;
})

// ========================================================================================================
var around_plus = document.getElementById("around_cima");

around_plus.addEventListener("click", () => {
    n1 = parseFloat(document.getElementById("n1").value);
    document.getElementById("resultado").innerHTML = `<h1>Número arredondado cima: ${Math.ceil(n1)}</h1>`;
})

// ========================================================================================================
var around_minus = document.getElementById("around_baixo");

around_minus.addEventListener("click", () => {
    n1 = parseFloat(document.getElementById("n1").value);
    document.getElementById("resultado").innerHTML = `<h1>Número arredondado baixo: ${Math.floor(n1)}</h1>`;
})

// ========================================================================================================
var randomizer = document.getElementById("random_num");

randomizer.addEventListener("click", () => {
    n1 = parseInt(document.getElementById("n1").value);
    n2 = parseInt(document.getElementById("n2").value);
    document.getElementById("resultado").innerHTML = `<h1>Número aleatório: ${Math.floor(Math.random() * (n2 - n1 + 1) + n1)}</h1>`;
})

// ========================================================================================================
var raio= document.getElementById("raio");

raio.addEventListener("click", () => {
    n1 = parseInt(document.getElementById("n1").value);
    document.getElementById("resultado").innerHTML = `<h1>Circunferência: ${2 * Math.PI * n1}</h1>`;
})