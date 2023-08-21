

function matematico(){
    var operation = parseInt(document.getElementById("selector").value);
        var n1 = parseInt(document.getElementById("n1").value);
        var n2 = parseInt(document.getElementById("n2").value);
        var resultado = document.getElementById("resultado");
        if(operation == 1){
            resultado.innerHTML = `<h1>Resultado da soma: ${n1 + n2}</h1>`;
        } else if(operation == 2){
            resultado.innerHTML = `<h1>Resultado da subtração: ${n1 - n2}</h1>`;
        } else if(operation == 3){
            resultado.innerHTML = `<h1>Resultado da multiplicação: ${n1 * n2}</h1>`;
        } else if(operation == 4){
            resultado.innerHTML = `<h1>Resultado da divisão: ${n1 / n2}</h1>`;
        } else if(operation == 5){
            resultado.innerHTML = `<h1>Resultado da potência: ${n1 ** n2}</h1>`;
        } else if(operation == 6){
            resultado.innerHTML = `<h1>Resultado da soma: ${Math.sqrt(n1)}</h1>`;
        } 
    
}