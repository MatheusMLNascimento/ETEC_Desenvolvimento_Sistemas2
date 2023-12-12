let btn = document.getElementById("btn");
let btn2 = document.getElementById("btn2");
let btn3 = document.getElementById("btn3");
let btn4 = document.getElementById("btn4");
let caixa = document.getElementById("show");
let plates = [1, 2];

btn.addEventListener("click", () => {
    caixa.innerHTML = `<h1> You have ${plates.length} plates left to wash! </h1>`;
    caixa.innerHTML += "<ul>";
    for (let x = 0; x < plates.length; x++) {
        caixa.innerHTML += `<li><h3> ${plates[x]} </h3></li>`;
    }
    caixa.innerHTML += "</ul>";
});

btn2.addEventListener("click", () => {
    caixa.innerHTML = "";
    plates.push(plates.at(-1) + 1);
    alert("One dish added to the pille! " + plates.length + " left!");
    caixa.innerHTML += "Plate numbers: " + plates.toString();
});

btn3.addEventListener("click", () => {
    caixa.innerHTML = "";
    plates.shift();
    alert("Um prato lavado, um prato a menos! " + plates.length + " left!");
    caixa.innerHTML += "Plate numbers: " + plates.toString();
});
