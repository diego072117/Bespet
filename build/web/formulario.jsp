<%-- 
    Document   : formulario
    Created on : 22/09/2022, 07:26:44 PM
    Author     : DIEGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
   <link rel="icon" type="image/x-icon" href="images/logo-removebg-preview.png" />
   <title>Formulario</title>


   <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />


   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   <link href="css/formulario.css" rel="stylesheet" type="text/css"/>
   <link rel="stylesheet" href="css/formulario.css">

</head>

<body>




   <section class="services">

      <h1 class="heading-title"> formulario </h1>

   </section>

   <div class="container-ejercicios">

      <div class="form-data" >
         <form action="#" class="formulario" id="formulario">

            <div class="formulario__grupo" id="grupo__tipodoc">
               <label for="">tipo documento</label>
               <div class="box-input">
 
                  <select class="formulario__input" >
                     <option >Tipo de documento</option>
                     <option id="tipoDoc" name="tipoDoc" value="1">Cedula De Ciudadania</option>
                     <option id="tipoDoc" name="tipoDoc" value="2">Tarjeta De Identidad</option>
                     <option id="tipoDoc" name="tipoDoc" value="3">Cedula De Extranjeria</option>
                 </select>
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
               </div>
               <p class="formulario__input-error">Error</p>
            </div>

            <div class="formulario__grupo" id="grupo__numDoc">
               <label for="">Numero de documento</label>
               <div class="box-input" id="grupo__numDoc">
                  <input type="text" class="formulario__input" name="numDoc" id="numDoc" placeholder="No. documento">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
               </div>
               <p class="formulario__input-error">Campo numerico, minimo 5 caracteres maximo 10</p>
            </div>

            <div class="formulario__grupo" id="grupo__nombre">
               <label for="">Nombre</label>
               <div class="box-input">
                  <input type="text" class="formulario__input" name="nombre" id="nombre" placeholder="Nombre">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
               </div>
               <p class="formulario__input-error">dijite un nombre valido</p>
            </div>

            <div class="formulario__grupo" id="grupo__apellido">
               <label for="">Apellido</label>
               <div class="box-input">

                  <input type="text" class="formulario__input" name="apellido" id="apellido" placeholder="Apellido">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
               </div>
               <p class="formulario__input-error">Dijite un apellido valido</p>
            </div>

            
            
            <div class="formulario__grupo" id="grupo__fecha">
               <label for="fecha">Fecha de nacimiento</label>
               <div class="box-input1">

                  <input type="date" class="formulario__input" name="fecha" id="fecha" >
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
               </div>
               <p class="formulario__input-error">dijite una fecha valida</p>
            </div>

            

            <div class="formulario__grupo" id="grupo__correo">
               <label for="">Correo</label>
               <div class="box-input">

                  
                  <input type="text" class="formulario__input" name="correo" id="correo"  placeholder="Correo electronico">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
               </div>
               <p class="formulario__input-error">Dijite un correo valido</p>
            </div>

            <div class="formulario__grupo"  id="grupo__password">
               <label for="">Password</label>
               <div class="box-input">

                  <input type="password" class="formulario__input" name="password" id="password" placeholder="Password">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
               </div>
               <p class="formulario__input-error">Dijite una contraseña valida</p>
            </div>

            <div class="formulario__grupo" id="grupo__password2"">
               <label for="">Confirmar password</label>
               <div class="box-input">

                  <input type="password" class="formulario__input" name="password2" id="password2" placeholder="Comprobar password">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
               </div>
               <p class="formulario__input-error">Password no coinciden</p>
            </div>


            <div class="formulario__grupo" id="grupo__terminos">
               <label class="formulario__label">
                  <input class="formulario__checkbox" type="checkbox" name="terminos" id="terminos">
                  Acepto los Terminos y Condiciones
               </label>
            </div>
          

            <div class="formulario__mensaje" id="formulario__mensaje">
               <p ><i class="fas fa-exclamation-triangle"></i> <b>Error:</b> Por favor rellena el formulario correctamente. </p>
            </div>
   
            <div class="formulario__grupo formulario__grupo-btn-enviar">
               <button type="submit" class="formulario__btn">Enviar</button>
               <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
            </div>

      

         </form>


      </div>

   </div>

   <div id="ventanaModal-form" class="modal">
      <div class="contenidoModal">

         <span class="cerrarModal-form"><i class="fa-solid fa-xmark"></i></span>
         <h2>¿Acepta Terminos y conciciones?</h2>
         <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint ad provident quis nemo dolore voluptatem quae
            tenetur non beatae tempora necessitatibus, vitae eligendi quod aperiam quam dolores libero! Non, neque.
         </p>

      </div>

   </div>





   <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
   <script src="js/formulario.js" type="text/javascript"></script>
   <script src="/js/formulario.js"></script>


</body>

</html>