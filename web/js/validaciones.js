/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
const formulario = document.getElementById('form');
const inputs = document.querySelectorAll('#form input');

const expresiones = {
    textUsuario: /^[a-zA-ZÀ-ÿ\s]{4,10}$/, // Letras y espacios, pueden llevar acentos.
    Nombre: /^[a-zA-ZÀ-ÿ\s]{4,10}$/,
    Apellido: /^[a-zA-ZÀ-ÿ\s]{4,10}$/,
    Nombres: /^[a-zA-ZÀ-ÿ\s]{4,10}$/,
    apellidos: /^[a-zA-ZÀ-ÿ\s]{4,10}$/,
    textClave: /^.{4,12}$/,
    textNombre: /^[a-zA-ZÀ-ÿ\s]{1,40}$/,
    textApellido: /^[a-zA-ZÀ-ÿ\s]{1,40}$/,
    Telefono: /^\d{7,14}$/,
    telefono: /^\d{7,14}$/,
    Direccion: /^.{4,30}$/,
    Correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
    correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
    user: /^.{4,12}$/,
    Edad: /^\d{1,3}$/,
    Tipo: /^[a-zA-ZÀ-ÿ\s]{4,20}$/,
    Raza: /^[a-zA-ZÀ-ÿ\s]{4,20}$/,
    Precio: /^\d{3,10}$/,
    NombreProducto: /^[a-zA-ZÀ-ÿ\s]{4,20}$/
}
const campos = {
    textUsuario: false,
    Nombre: false,
    Nombres: false,
    Apellido: false,
    apellidos: false,
    textClave: false,
    textNombre: false,
    textApellido: false,
    Telefono: false,
    telefono: false,
    Direccion: false,
    Correo: false,
    correo: false,
    user: false,
    Edad: false,
    Tipo: false,
    Raza: false,
    Precio: false,
    NombreProducto: false   
}
const validarFormulario = (e) => {
    switch (e.target.name) {
        case "textUsuario":
            validarCampo(expresiones.textUsuario, e.target, 'textUsuario');
            break;
        case "Nombre":
            validarCampo(expresiones.Nombre, e.target, 'Nombre');
            break;
        case "Apellido":
            validarCampo(expresiones.Apellido, e.target, 'Apellido');
            break;
        case "Nombres":
            validarCampo(expresiones.Nombres, e.target, 'Nombres');
            break;
        case "apellidos":
            validarCampo(expresiones.apellidos, e.target, 'apellidos');
            break;
        case "textClave":
            validarCampo(expresiones.textClave, e.target, 'textClave');
            break;
       
        case "Telefono":
            validarCampo(expresiones.Telefono, e.target, 'Telefono');
            break;
        case "telefono":
            validarCampo(expresiones.telefono, e.target, 'telefono');
            break;
        case "Direccion":
            validarCampo(expresiones.Direccion, e.target, 'Direccion');
            break;
        case "Correo":
            validarCampo(expresiones.Correo, e.target, 'Correo');
            break;
        case "correo":
            validarCampo(expresiones.correo, e.target, 'correo');
            break;
        case "user":
            validarCampo(expresiones.user, e.target, 'user');
            break;
        case "Edad":
            validarCampo(expresiones.Edad, e.target, 'Edad');
            break;
        case "Tipo":
            validarCampo(expresiones.Tipo, e.target, 'Tipo');
            break;
        case "Raza":
            validarCampo(expresiones.Raza, e.target, 'Raza');
            break;
        case "Precio":
            validarCampo(expresiones.Precio, e.target, 'Precio');
            break;
        case "NombreProducto":
            validarCampo(expresiones.NombreProducto, e.target, 'NombreProducto');
            break;    
    }
}

const validarCampo = (expresion, input, campo) => {
    if (expresion.test(input.value)) {
        document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-check-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-times-circle');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove('formulario__input-error-activo');
        campos[campo] = true;
    } else {
        document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-times-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-check-circle');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add('formulario__input-error-activo');
        campos[campo] = false;
    }
}

inputs.forEach((input) => {
    input.addEventListener('keyup', validarFormulario);
    input.addEventListener('blur', validarFormulario);
});

formulario.addEventListener('.submit', (e) => {
    e.preventDefault();

    if (campos.textUsuario && campos.Nombre && campos.Nombres && campos.Apellido && campos.apellidos && campos.textClave && campos.textNombre
            && campos.textApellido && campos.Telefono && campos.telefono && campos.Direccion && campos.Correo && campos.correo && campos.user
            && campos.Edad && campos.Tipo && campos.Raza && campos.Precio && campos.NombreProducto) {
        formulario.submit();

    setTimeout(() => {
       Swal.fire("Registro exitoso")
 }, 5000 );
      /*  document.getElementById('formulario__mensaje-exito').classList.add('formulario__mensaje-exito-activo');
      
        setTimeout(() => {
            document.getElementById('formulario__mensaje-exito').classList.remove('formulario__mensaje-exito-activo');
        }, 5000);*/

        document.querySelectorAll('.formulario__grupo-correcto').forEach((icono) => {
            icono.classList.remove('formulario__grupo-correcto');
        });
    } else {
         Swal.fire("Registro incorrecto")
        /*document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');*/
    }
});