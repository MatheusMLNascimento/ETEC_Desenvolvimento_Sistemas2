function validaFormulario(){
    var nome = document.getElementById("nome").value;
    var email = document.getElementById("e_mail").value;
    var telefone = document.getElementById("tel").value;

    if(nome.length < 7 || nome.match(/[^a-zà-ú]/gi) == false){
        alert("Nome inválido! verifique se:\n• Possuí mais que 7 caracteres\n• Apresenta somente letras")
    }
    if(email.length < 10 || email.match(/^\(\d{2}\)\d{5}-\d{4}$/) == false){
        alert("Email inválido! verifique se:\n• Possuí mais que 10 caracteres\n Possuí '@' e '.'")
        
    }
    if(telefone.length < 11 || telefone.match(/^(?:\+)[0-9]{2}\s?(?:\()[0-9]{2}(?:\))\s?[0-9]{4,5}(?:-)[0-9]{4}$/) == false){
        alert("Telefone inválido! verifique se: \n• Possuí mais que 11 caracteres")
    }
}