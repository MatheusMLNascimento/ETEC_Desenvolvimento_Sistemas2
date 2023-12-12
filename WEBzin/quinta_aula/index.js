var btn = document.getElementById("name");

btn.addEventListener("click", () => {
    document.getElementById("show").style.visibility = "visible";
    let input = document.getElementById("input").value.trim();
    let nome = input.slice(0, input.indexOf(" "));
    let sobrenome = input.slice(input.indexOf(" "), input.length);
    document.getElementById("show").innerHTML = `<p>Pessoa registrada! <br><br> Nome: ${nome} <br> Sobrenome: ${sobrenome}</p>`

});
