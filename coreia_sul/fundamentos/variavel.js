var numero1 = 2;
var numero2 = 3;


if(true){
    // let só funciona dentro do bloco
    let numero3 = 4;
}

let nome = "Matheus";
let sobrenome = " Martins Luna";

const nomeCompleto = nome+sobrenome;
const resultado = numero1+numero2;

//let não pode ser chamado fora do bloco, pois só existe dentro dele
console.log(nomeCompleto);// "Matheus Martins Luna"
console.log(resultado); // 5
console.log(numero3); // error