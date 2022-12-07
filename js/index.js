
function setOnStorage(){
  let input = document.getElementById("coffeCups").value
  localStorage.setItem("conteo", input);
}

function abrirEtiquetaNO(){
    var overlay= document.getElementById('etiNo');
    overlay.classList.remove('no-mostrar');
  }

  function abrirEtiquetaSI(){
    var overlay= document.getElementById('etiSi');
    overlay.classList.remove('no-mostrar');
  }

  function abrirPopUpDefo(){
    var popUp= document.getElementById("popDefo");
    popUp.classList.remove("no-mostrar");
  }

function abrirPopupFrutos(){
    var popFrutos=document.getElementById("frutosPop");
    popFrutos.classList.remove("no-mostrar");
}

function abrirPopCN(){
  var popNormal=document.getElementById("cafeNormal");
  popNormal.classList.remove("no-mostrar");
}

function abrirPopCJ(){
  var popNormal=document.getElementById("cafeCJ");
  popNormal.classList.remove("no-mostrar");
}

function abrirPopOrg(){
  var popOrg= document.getElementById("popOrg");
  popOrg.classList.remove("no-mostrar");
}
/* FUNCIONES POP UPS IMPACTO COMERCIO JUSTO */

/* DESARROLLO SOSTENIBLE */

function openDSpop(){
  var popUp= document.getElementById("popDS0");
  popUp.classList.remove("no-mostrar");
}

function openDSpop2(){
  var popUp= document.getElementById("popDS2");
  popUp.classList.remove("no-mostrar");
}

function openDSpop3(){
  var popUp= document.getElementById("popDS3");
  popUp.classList.remove("no-mostrar");
}

function openDSpop4(){
  var popUp= document.getElementById("popDS4");
  popUp.classList.remove("no-mostrar");
}

/* DERECHOS HUMANOS */

function openDHpop(){
  var popUp= document.getElementById("popDH0");
  popUp.classList.remove("no-mostrar");
}

function openDHpop2(){
  var popUp= document.getElementById("popDH2");
  popUp.classList.remove("no-mostrar");
}

function openDHpop3(){
  var popUp= document.getElementById("popDH3");
  popUp.classList.remove("no-mostrar");
}

function openDHpop4(){
  var popUp= document.getElementById("popDH4");
  popUp.classList.remove("no-mostrar");
}

/* COOPERATIVISMO */

function openCOpop(){
  var popUp= document.getElementById("popCO");
  popUp.classList.remove("no-mostrar");
}

function openCOpop2(){
  var popUp= document.getElementById("popCO2");
  popUp.classList.remove("no-mostrar");
}

function openCOpop3(){
  var popUp= document.getElementById("popCO3");
  popUp.classList.remove("no-mostrar");
}

/* FUNCIONES CLOSE POPUPS IMAPCTO COMERCIO JUSTO  */
function closePopDS(){
  var close= document.getElementById("popDS0");
  close.classList.add("no-mostrar");
}

function closePopDS2(){
  var close= document.getElementById("popDS2");
  close.classList.add("no-mostrar");
}
function closePopDS3(){
  var close= document.getElementById("popDS3");
  close.classList.add("no-mostrar");
}

function closePopDS4(){
  var close= document.getElementById("popDS4");
  close.classList.add("no-mostrar");
}
 
/*CLOSE DH */

function closePopDH(){
  var close= document.getElementById("popDH0");
  close.classList.add("no-mostrar");
}

function closePopDH2(){
  var close= document.getElementById("popDH2");
  close.classList.add("no-mostrar");
}

function closePopDH3(){
  var close= document.getElementById("popDH3");
  close.classList.add("no-mostrar");
}

function closePopDH4(){
  var close= document.getElementById("popDH4");
  close.classList.add("no-mostrar");
}

/* CLOSE COO */

function closePopCO(){
  var close= document.getElementById("popCO");
  close.classList.add("no-mostrar");
}

function closePopCO2(){
  var close= document.getElementById("popCO2");
  close.classList.add("no-mostrar");
}

function closePopCO3(){
  var close= document.getElementById("popCO3");
  close.classList.add("no-mostrar");
}

/* FUNCIONES PARA TIMER Y QUE SE PASE DE PAG */
function redirect_Page () {
  location.replace("../pantallas/Siembra.html");
   }
   
function redirect_Page2 () {
  location.replace("../pantallas/secarGranos.html");
   } 

function redirect_FinalOrg(){
  location.replace("../pantallas/final.html");
}   

function redirect_FinalConv(){
  location.replace("../pantallas/finalConv.html");
}   


/* CAMBIAR IMAGENES DEL GIF POR TIEMPO */



/*function finalGif(){
  var image= document.getElementById("imgGif");
  image.src="../img/FINAL o2.png"
  if(image.src="../img/FINAL o2.png"){
    setTimeout(finalGif2, 2000);
  }
} */

   /*
   var gasGif = {
    gas1: "../img/00gas.png",
    gas2: "../img/01gas.png",
    gas3: "../img/02.png",
  };
  
  function ponerPose(elemento, pose) {
    elemento.attr("src", pose);
  }

  // Todo lo que pongamos dentro de .ready() se va a ejecutar recién cuando el HTML esté todo cargado.*/
// $(document).ready(() => {

//   $("#input-tazas").change(() => {
//     edad2 = $("#input-edad").val();
//   });
// });

 /* $("#animar").click(() => {
    const elemento = $("#personaje3 img");
    ponerPose(elemento, gasGif.gas1);
  });

  $("#animar2").click(() => {
    const elemento = $("#personaje3 img");
    ponerPose(elemento, gasGif.gas2);
  });

  $("#animar3").click(() => {
    const elemento = $("#personaje3 img");
    ponerPose(elemento, gasGif.gas3);
  });*/


/* FUNCIONES PARA NRO EN BOLSAS DE CAFÉ   */
  var total=100;

  var brasil=0;
  var col=0;
  var mex=0;
  var per=0;

  function btnClick(){
    brasil= brasil+10;
    total =total-10;

  document.getElementById("brasil").innerHTML = brasil;


  document.getElementById("totalPorcentaje").innerText = total;

  if(total<=0 && brasil>=70){
    location.replace("../pantallas/3raPantalla.html");
  }else if(total<=0 && brasil<70){
    location.replace("3raIncorrecto.html");
  }
  return true
     }

  function btnClick2(){
      col= col+10;
      total =total-10;
  
    document.getElementById("col").innerHTML = col;
  
  
    document.getElementById("totalPorcentaje").innerText = total;
  
    if(total<=0 && brasil>=70){
      location.replace("../pantallas/3raPantalla.html");
    }else if(total<=0 && brasil<70){
      location.replace("3raIncorrecto.html");
    }
    return true
       }

       function btnClick3(){
        mex= mex+10;
        total =total-10;
    
      document.getElementById("mex").innerHTML = mex;
    
    
      document.getElementById("totalPorcentaje").innerText = total;
    
      if(total<=0 && brasil>=70){
        location.replace("../pantallas/3raPantalla.html");
      }else if(total<=0 && brasil<70){
        location.replace("3raIncorrecto.html");
      }
      return true
         }

         function btnClick4(){
          per= per+10;
          total =total-10;
      
        document.getElementById("per").innerHTML = per;
      
      
        document.getElementById("totalPorcentaje").innerText = total;
      
        if(total<=0 && brasil>=70){
          location.replace("../pantallas/3raPantalla.html");
        }else if(total<=0 && brasil<70){
          location.replace("3raIncorrecto.html");
        }
        return true
           }
 /*  FUNCIONES CLOSE POP UPS ETIQUETA + COMPRA  */
 function closePop(){
    var overlay= document.getElementById('cafeNormal');
    overlay.classList.add("no-mostrar");
 }

 function closePop2(){
  var overlay= document.getElementById('cafeCJ');
  overlay.classList.add("no-mostrar");
}

function closePop3(){
  var overlay= document.getElementById('etiNo');
  overlay.classList.add("no-mostrar");
}

function closePop4(){
  var overlay= document.getElementById('etiSi');
  overlay.classList.add("no-mostrar");
}

function openPopLat(){
  var pop= document.getElementById('popLat');
  pop.classList.remove('no-mostrar');
}

function openPopPO1(){
  var pop= document.getElementById('popPO1');
  pop.classList.remove('no-mostrar');
}