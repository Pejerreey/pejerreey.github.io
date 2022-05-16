const open = document.getElementById('open');
const modal_container = document.getElementById('modal_container');
const form = document.getElementById('formulario');
const close = document.getElementById('close');

open.addEventListener('click', () => {
  modal_container.classList.add('show');   
  form.style.display = 'none';
  mostrarFeedback()
});

close.addEventListener('click', () => {
  modal_container.classList.remove('show');
  vaciarForm();
  form.style.display = 'block';  
});

function mostrarFeedback(){
    var nombre = document.getElementById("first_name").value;
    var apellido = document.getElementById("last_name").value;
    var edad = document.getElementById("edad").value;
    var email = document.getElementById("email").value;

    document.getElementById('feedback').innerHTML = "Gracias " + nombre + " " + apellido + " de " + edad + " Nos comunicaremos al " + email;


}

function vaciarForm(){
    document.getElementById('first_name').innerHTML= null;
    document.getElementById("last_name").innerHTML = null;
    document.getElementById("edad").innerHTML = null;
    document.getElementById("email").innerHTML = null;
}