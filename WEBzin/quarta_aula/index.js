var btn = document.getElementById("btnCalcular");

btn.addEventListener("click", () =>{
    var num = parseInt(document.getElementById("n1"),value);

    if(num != 0){
        alert((Math.sqrt(num)))
    }else {
        alert("Digite outro número")
    }
})