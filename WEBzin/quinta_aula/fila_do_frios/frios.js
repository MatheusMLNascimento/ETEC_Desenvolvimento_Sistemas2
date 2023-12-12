let btn = document.getElementById("btn");
let btn2 = document.getElementById("btn2");
let btn3 = document.getElementById("btn3");
let box = document.getElementById("show");
let customers = [1, 2, 3];


btn.addEventListener("click", () => {
    box.innerHTML = `<h1> There is ${customers.length} customers remaining in the queue! </h1>`;
    box.innerHTML += "<ul>";
    for (let x = 0; x < customers.length; x++) {
        box.innerHTML += `<li><h3> ${customers[x]} </h3></li>`;
    }
    box.innerHTML += "</ul>";
});

btn2.addEventListener("click", () => {
    box.innerHTML = "";
    customers.push(customers.at(-1) + 1);
    alert("Another customer arrived! " + customers.length + " remaining!");
    box.innerHTML += "Customers numbers: " + customers.toString();
    for (let x = 0; x < customers.length; x++) {
        box.innerHTML += `<li><h3> ${customers[x]} </h3></li>`;
    }
});

btn3.addEventListener("click", () => {
    box.innerHTML = "";
    customers.pop();
    alert("Costumer served! " + customers.length + " remaining!");
    box.innerHTML += "Customers numbers: " + customers.toString();
    for (let x = 0; x < customers.length; x++) {
        box.innerHTML += `<li><h3> ${customers[x]} </h3></li>`;
    }
});