function perimetro_quad(){
    var n1 = parseInt(prompt("Digite o valor do lado:"));
    var n2 = parseInt(prompt("Digite o valor do outro lado:"));
    var resultado = n1 * 2 + n2 * 2;
    alert("Resultado: " + resultado);
}
function area_quad(){
    var n1 = parseInt(prompt("Digite o valor do lado:"))
    var n2 = parseInt(prompt("Digite o valor do outro lado:"));
    var resultado = n1 * n2;
    alert("Resultado: " + resultado);
}

function perimetro_tri(){
    var n1 = parseInt(prompt("Digite o valor do primeiro lado:"));
    var n2 = parseInt(prompt("Digite o valor do segundo lado:"));
    var n3 = parseInt(prompt("Digite o valor do terceiro lado:"));
    var resultado = n1 + n2 + n3;
    alert("Resultado é: " + resultado);
}
function area_tri(){
    var n1 = parseInt(prompt("Digite o valor da base:"));
    var n2 = parseInt(prompt("Digite o valor da altura:"));
    var resultado = (n1 * n2) / 2;
    alert("Resultado é: " + resultado);
}

function perimetro_trap(){
    var n1 = parseInt(prompt("Digite o valor da base menor:"));
    var n2 = parseInt(prompt("Digite o valor da altura:"));
    var n3 = parseInt(prompt("Digite o valor da base maior:"));
    var resultado = n1 + n2 + n3;
    alert("Resultado é: " + resultado);
}
function area_trap(){
    var n1 = parseInt(prompt("Digite o valor da base menor:"));
    var n2 = parseInt(prompt("Digite o valor da altura:"));
    var n3 = parseInt(prompt("Digite o valor da base maior:"));
    var resultado = ((n1 + n2) * n3) / 2;
    alert("Resultado é: " + resultado);
}

function perimetro_cir(){
    var n1 = parseInt(prompt("Digite o valor do raio:"));
    alert("PI é usado como 3,14 apenas!")
    var resultado = n1 * 3.14 * 2;
    alert("Resultado é: " + resultado); 
}
function area_cir(){
    var n1 = parseInt(prompt("Digite o valor do raio:"));
    alert("PI é usado como 3,14 apenas!")
    var resultado = (n1 * n1) * 3.14;
    alert("Resultado é: " + resultado); 
}