function selecionar(tipo){
    // Define um var com base no parametro 'tipo'
    var selecionado;
    switch(tipo){
        // caso o 'tipo' tenha valor igual a 'img1'(se for 'img1'); a var selecionado ganha valor 1; e o contador ganha valor 0
        case "img1":
            selecionado = 1;
            counter = 0;
            break;
        case "img2":
            selecionado = 2;
            counter = 1;
            break;
        case "img3":
            selecionado = 3;
            counter = 2;
            break;
        case "img4":
            selecionado = 4;
            counter = 3;
            break;
        case "img5":
            selecionado = 5;
            counter = 4;
            break;
    }
    
    // Pega a id da img'main'
    var img = document.querySelector("#main");
    // Limpa as bordas adicionais
    document.getElementById('img1').style.border = "none";
    document.getElementById('img2').style.border = "none";
    document.getElementById('img3').style.border = "none";
    document.getElementById('img4').style.border = "none";
    document.getElementById('img5').style.border = "none";

    // Altera o SRC do mainImg usando a id da 'main', com base na seleção de cima( altera a imagem do centro )
    if(selecionado == 1){
        img.setAttribute('src', '/atividade 5/img/A.jpg');
        // Define borda para imagem selecionada
        document.getElementById(tipo).style.border = "2px solid cyan";
    }else if(selecionado == 2){
        img.setAttribute('src', '/atividade 5/img/B.jpg');
        document.getElementById(tipo).style.border = "2px solid cyan";
    }else if(selecionado == 3){
        img.setAttribute('src', '/atividade 5/img/R.jpg');
        document.getElementById(tipo).style.border = "2px solid cyan";
    }else if(selecionado == 4){
        img.setAttribute('src', '/atividade 5/img/Free-1366x768-Backgrounds.jpg');
        document.getElementById(tipo).style.border = "2px solid cyan";
    }else if(selecionado == 5){
        img.setAttribute('src', '/atividade 5/img/W4KVQA.jpg');
        document.getElementById(tipo).style.border = "2px solid cyan";
    }
}

// Contador
var counter;
// Vetor para armazenar os SRCs das imagens
var selecao = ["/atividade 5/img/A.jpg", 
    "/atividade 5/img/B.jpg", "/atividade 5/img/R.jpg", 
    "/atividade 5/img/Free-1366x768-Backgrounds.jpg", "/atividade 5/img/W4KVQA.jpg"];

// Avança a imagem do centro, com base no contador
function avancar(id) {
    if(counter > 4){
        // Altera a SRC do 'main' para a primeira imagem
        document.getElementById(id).src = selecao[0];
        // Define o contador para -1, assim ele volta a 0 quando sair do IF
        counter = -1;
    }else{
        // Altera a SRC do 'main'
        document.getElementById(id).src = selecao[counter];
    }
    counter++ 
}

// Retroce a imagem do centro, com base no contador
function retroceder(id) {
    if(counter < 0){
        // Altera a SRC do 'main' para a última imagem
        document.getElementById(id).src = selecao[4];
        // Define o contador para 5, assim ele volta a 4 quando sair do IF
        counter = 5;
    }else{
        // Altera a SRC do 'main'
        document.getElementById(id).src = selecao[counter];
    }
    counter--
  }  