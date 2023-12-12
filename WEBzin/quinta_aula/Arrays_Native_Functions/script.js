let numbersVector = [2, 3, 4, 5, 6, 7];
let caixa = document.getElementById("showBox");
let btn = document.getElementById("btn");
let btn2 = document.getElementById("btn2");
let btn3 = document.getElementById("btn3");
let btn4 = document.getElementById("btn4");
let btn5 = document.getElementById("btn5");
let btn6 = document.getElementById("btn6");
let btn7 = document.getElementById("btn7");
let btn8 = document.getElementById("btn8");
let btn9 = document.getElementById("btn9");
let btn10 = document.getElementById("btn10");

btn.addEventListener("click", () => {
    caixa.innerHTML = `<h1> The Array size is ${numbersVector.length} </h1>`;
    caixa.innerHTML += "<ul>";
    for (let x = 0; x < numbersVector.length; x++) {
        caixa.innerHTML += `<li><h3> ${numbersVector[x]} </h3></li>`;
    }
    caixa.innerHTML += "</ul>";
});

btn2.addEventListener("click", () => {
    caixa.innerHTML = "";
    let choice = prompt("Insert a number: ");
    numbersVector.push(choice);
    caixa.innerHTML += numbersVector.toString();
});

btn3.addEventListener("click", () => {
    caixa.innerHTML = "";
    let number = numbersVector.pop();
    alert(number);
    caixa.innerHTML += numbersVector.toString();
});

btn4.addEventListener("click", () => {
    caixa.innerHTML = "";
    let choice = prompt("Insert a number: ");
    numbersVector.unshift(choice);
    caixa.innerHTML += numbersVector.toString();
});

btn5.addEventListener("click", () => {
    caixa.innerHTML = "";
    let number = numbersVector.shift;
    numbersVector.shift;
    alert(number);
    caixa.innerHTML += numbersVector.toString();
});

btn6.addEventListener("click", () => {
    caixa.innerHTML = "";
    numbersVector.sort();
    alert("Sorted!");
    caixa.innerHTML += numbersVector.toString();
});

btn7.addEventListener("click", () => {
    caixa.innerHTML = "";
    numbersVector.reverse();
    alert("Reverse sorted!");
    caixa.innerHTML += numbersVector.toString();
});

btn8.addEventListener("click", () => {
    caixa.innerHTML = "";
    caixa.innerHTML += "<ul>";

    for (let item of numbersVector) {
        alert(item);
    };

    numbersVector.forEach((item) => {
        caixa.innerHTML += `<li> ${item} </li>`
    })

    caixa.innerHTML += "</ul>";
});

btn9.addEventListener("click", () => {
    let numberDouble = numbersVector.map((n) => {
        return n * 2;
    })

    caixa.innerHTML = `<h1> ${numberDouble.toString()} </h1>`;
});

btn10.addEventListener("click", () => {
    let even = numbersVector.filter((item) => {
        return item % 2; // == 0;
    });

    caixa.innerHTML = "";
    caixa.innerHTML = `<h1> ${even.toString()} </h1>`;
});