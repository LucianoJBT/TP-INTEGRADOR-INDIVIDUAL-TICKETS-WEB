
  const items = [
    {
        id: 1,
        nombre: "Estudiante",
        descuento: 80
    },
    {
        id: 2,
        nombre: "Trainee",
        descuento: 50
    },
    {
        id: 1,
        nombre: "Junior",
        descuento: 15
    }
];


usuarioActual = JSON.parse(sessionStorage.getItem("usuarioActual"));


const nombreUsuarioIdHTML = document.getElementById("nombreUsuarioId");

if (usuarioActual != null){
    nombreUsuarioIdHTML.innerHTML = usuarioActual.nombre + "  " + usuarioActual.apellido;
}else{
    nombreUsuarioIdHTML.innerHTML = "Visitante";
}

//const items = localStorage.getItem("items");

// obtengo la referencia al div donde se va a colgar las tarjetas
let tarjetasHTML = document.getElementById("tarjetas");

 t = document.getElementById("")
/*
                <div class="card" id="tarjeta_1">
                    <div class="card-body">
                        <h5 class="card-title fw-bold">Estudiante</h5>
                        <p class="card-text">Tiene un descuento</p>
                        <p class="card-text">80%</p>
                        <p class="card-text">
                            <small class="text-muted">* Presentar documentación</small></p>
                    </div>
                </div>
*/
items.forEach(item => {
    //creo las etiquetas de la tarjeta y sus calses y estilos
    const tarjetaHTML = document.createElement("div");
    tarjetaHTML.className = "card";
    tarjetaHTML.id = `tarjeta_${item.id}`;
    //`<img class="card-img-top h-50 w-50" src="${producto.img}" alt="Card image cap">
     //tarjetaHTML.style.width = "18rem";
    const tarjetaBody = document.createElement("div");
    const titulo = document.createElement("h5");
    const p1 = document.createElement("p");
    const p2 = document.createElement("p");
    const p3 = document.createElement("p");
    const sT = document.createElement("small");

    //asigno contenido a cada etiqueta
    tarjetaBody.className = "card-body";
    titulo.className = "card-title fw-bold";
    p1.className = "card-text";
    p2.className = "card-text";
    p3.className = "card-text";
    sT.className = "text-muted";

    titulo.innerHTML= item.nombre;
    p1.innerHTML= "Tiene un descuento";
    p2.innerHTML= item.descuento + " %"; 
    sT.innerHTML= "* Presentar documentación";

    p3.appendChild(sT);
    tarjetaBody.appendChild(titulo);
    tarjetaBody.appendChild(p1);
    tarjetaBody.appendChild(p2);
    tarjetaBody.appendChild(p3);

    tarjetaHTML.appendChild(tarjetaBody);


    // convateno  el html de trajetas
    tarjetasHTML.append(tarjetaHTML);
});


/**************************************************************************************************** */
/*  Cargar el combo  */

let comboHTML = document.getElementById("comboCategoria");

/*<select class="form-select" aria-label="Default select example">
                        <option selected>Seleccione la categoria</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
</select>  */

// creo etiquetas iniciales y asingo propiedades y valores
var selectHTML = document.createElement("select");
selectHTML.className= "form-select";
selectHTML.ariaLabel="Default select example";
selectHTML.id= "selectId";

let optionHTML = document.createElement("option");
optionHTML.innerHTML = "Seleccione la categoria";

//agrego la opcion inicial al combo 
selectHTML.appendChild(optionHTML);

items.forEach(item =>{
    optionHTML = document.createElement("option");
    optionHTML.value=item.id;
    //alert(item.id)
    optionHTML.innerHTML= item.nombre;

    selectHTML.appendChild(optionHTML);

});

comboHTML.append(selectHTML);
/**************************************************************************************************** */
/* calculo  del costo en RESUMEN*/ 

 selectHTML = document.getElementById("selectId");
//selectHTML = document.querySelector("#selectId");
 var  valorOpcionActual;
 var resultado;
 const ticket =200;
 var resHTML= document.getElementById("resultadoId");
 /*selectHTML.addEventListener("click", (evento) =>{
    evento.preventDefault();
    alert("click",selectHTML.options.length);    

 });*/

 selectHTML.addEventListener("change", (evento) =>{
    evento.preventDefault();
   // alert("change  inidce del select selectHTML.selectedIndex.value ",selectHTML.selectedIndex); 
   // alert("change  valos del indice selectHTML.value ",selectHTML.va); 
   
   valorOpcionActual = selectHTML.selectedIndex;
  //  alert(valorOpcionActual);

 });
/* 
var indiceActual= selectHTML.options[selectHTML.selectedIndex].value

alert("indiceActual",indiceActual);**/

   
let resumenHtml = document.getElementById("resumenId");
resumenHtml.addEventListener("click", evento =>{
        evento.preventDefault();
        //alert("luciano");

        //obtener cantidad
        var cantidad= parseInt(document.getElementById("cantidad").value);
        //alert(cantidad);
        //obtener id de la opcion elegida
        // ---------->valorOpcionActual

        //buscar el item  referido con el id  seleccionado
        indice= parseInt(valorOpcionActual) -1;
        // tambien se puede buscar el valor del indice como valor del id el arreglo items  

        desc = items[indice].descuento;
         // realizar el calculo          
        resultado = parseFloat(((parseInt(cantidad) * parseInt(ticket))* (100 -desc)) / 100);
       // alert("resultado " , typeof(resultado));

         //escribirlo en el div resultado
        
        //resHTML.innerHTML=resultado.value;
        document.getElementById("resultadoId").innerHTML= resultado;
        
});

/********************************************** */
/*function setBodyAttr(attr, value) {
    if (document.body) eval('document.body.' + attr + '="' + value + '"');
    else notSupported();
}

<select onChange="setBodyAttr('text',this.options[this.selectedIndex].value);">
                <option value="black">negro
                <option value="darkblue">azul oscuro
            </select>  **/
/********************************************** */
 /* calculo  del BOTON BORRAR*/    
 let borrarHtml = document.getElementById("borrarId");

 borrarHtml.addEventListener("click", evento =>{
     evento.preventDefault();
      
     //blanquear todos los campos
     document.getElementById("resultadoId").innerHTML= "";

     document.getElementById("cantidad").value = "";
     selectHTML.selectedIndex = 0;

     document.getElementById("nombre").value= "";
     document.getElementById("apellido").value= "";
     document.getElementById("email").value= "";
   
 });
 

 /********************************************** */
 /***** validaciones de  campos **********/

  /********************************************** */  