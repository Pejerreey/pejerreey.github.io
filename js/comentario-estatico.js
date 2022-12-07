const comentarios= document.getElementById('caja-contribuciones')
const cantContribuciones=document.getElementById('numcomentarios')
var ids=5;

document.addEventListener('DOMContentLoaded',()=>{
    if(localStorage.getItem('comentariosLocal')){
        comentariosEstaticosJSON=JSON.parse(localStorage.getItem('comentariosLocal'))
        actualizarComentarios()
    }}
)
var comentariosEstaticosJSON= [{

    id:"3",
    nombre:"Hector Gómez",
    comentario:"Pesce se hace el boludo. Tres años de superavit en la balanza comercial y ningún mango en el Central. Que las empresas paguen sus deudas con la que fugaron. !!! ¿Tan difícil es?",
    fecha:"hace 2 meses",
    likes:3
}

]


comentariosEstaticosJSON.forEach((nombre)=>{
    const div = document.createElement('div')
    div.classList.add('comentario')
    div.innerHTML = `
    <div class="headerc" >
        <h3> <span id="hector"> ${nombre.nombre} </span></h5>
          <h6 class="tiempo">${nombre.fecha}</h6>
      </div>

      <h6 class="coment"> ${nombre.comentario} </h6>
    <div class="alinearItemsComentario">

      <div class="respetar">
       <button id='respetar${nombre.id}' class='respetar'> Respetar<img src="img/respetar.jpg"></button><p>${nombre.likes}</p>
      </div>
      <div class="contribuir">
        <p>Responder<img src="img/comentar.jpg" id="responderComentFijo"></p>
      </div>
    </div>`
    comentarios.prepend(div)

})

function  crearComentario(pcomentario){

   ids++

var newComentario={
 id:ids,
 nombre: "Marcos",
 comentario: pcomentario,
fecha: "hoy",
likes:0
    }
    comentariosEstaticosJSON.push(newComentario)
  
    console.log(comentariosEstaticosJSON);
    actualizarComentarios()
}


    formulario.addEventListener('submit', (e) => {
        e.preventDefault();
 
    var comentarioTexto= document.getElementById('contribucion').value;
    crearComentario(comentarioTexto)
    console.log(comentarioTexto)
    })

 function   actualizarComentarios(){

    comentarios.innerHTML="";

    comentariosEstaticosJSON.forEach((nombre)=>{
        const div = document.createElement('div')
        div.classList.add('comentario')
        div.innerHTML = `
        <div class="headerc" >
        <h3> <span id="hector"> ${nombre.nombre} </span></h5>
          <h6 class="tiempo">${nombre.fecha}</h6>
      </div>

      <h6 class="coment"> ${nombre.comentario} </h6>
    <div class="alinearItemsComentario">

      <div class="respetar">
       <button id='respetar${nombre.id}' class='respetar'> Respetar<img src="img/respetar.jpg" onclick="respetar()"></button><p>${nombre.likes}</p>
      </div>
      <div class="contribuir">
        <p>Responder<img src="img/comentar.jpg" id="responderComentFijo"></p>
      </div>
    </div>`
        comentarios.prepend(div)
        localStorage.setItem('comentariosLocal',JSON.stringify(comentariosEstaticosJSON))
    
    })

    cantContribuciones.innerText= comentariosEstaticosJSON.length


 }

 function respetar(){

const coment =comentariosEstaticosJSON.map( coment=> {

        coment.likes++;
    
})
    actualizarComentarios()

 }
 function fecha(){

   var fecha = new Date();
   fecha.getHours();
   fecha.getMinutes();
   fecha.getSeconds();
    
     }