let range = new Range();
var divUser = document.createElement("span");

divUser.setAttribute("id", "div-usuario");
var user = document.createElement("div");
user.innerHTML=`<span class="title-burbuja">
<img src="usuario.jpg" alt="" class="img-usuario">
<h5 class="nombreUsuario">Marcos</h5>

</span>`


// Cada método demostrado se representa aquí:
let selection = document.getSelection();

function insertarNode() {
  //limitarlo a la nota
  let selection = document.getSelection();
  range.setStart(selection.anchorNode, selection.anchorOffset);
  range.setEnd(selection.focusNode, selection.focusOffset);

  let content = range.extractContents();

  let newNode = document.createElement("span");
  let marcar = document.createElement("mark");
  let inputComentario = document.createElement("span");

  inputComentario.setAttribute("class", "mostrar");
  let inputComentarioResaltado = `<span class="burbuja">
     <span class="title-burbuja">
     <img src="usuario.jpg" alt="" class="img-usuario">
     <h5 class="nombreUsuario">Marcos</h5>
     </span>
     <form action="" class="formulario" onsubmit="enviarComentario(event); return false" id="formulario-resaltar">
     <input id="comentario-resaltar" placeholder="Ingresa tu comentario">
   
     </input>
     <button type="submit" class="formulario__btn" id="formulario_resaltar_btn" >comentar</button>
   </form>
     </span>`;
  inputComentario.innerHTML = inputComentarioResaltado;
  divUser.appendChild(user);

  marcar.append(content);
  newNode.appendChild(marcar);
  newNode.appendChild(inputComentario);
  //newNode.appendChild(divUser);

  range.insertNode(newNode);
  return newNode;
}

let formulario_resaltar_btn = document.getElementById(
  "formulario_resaltar_btn"
);

function enviarComentario(e) {
  let textarea = document.getElementById("comentario-resaltar");
  let textoComentario = textarea.value;
  if (textoComentario !== "") {
    insertarComentario(textoComentario);
    textarea.value = "";
  }
  let burbuja = $(".burbuja");
  burbuja.remove();
  
}

function insertarComentario(texto) {
  let contenedorComentarios = document.getElementById("comentarios-contenedor");

  let comentarioP = document.createElement("p");
  comentarioP.classList.add("comentario-p");
  comentarioP.innerText = texto;

  let comentarioDiv = document.createElement("div");
  comentarioDiv.classList.add("comentario");

  
user.appendChild(comentarioP)
 contenedorComentarios.appendChild(divUser);
}

///////
