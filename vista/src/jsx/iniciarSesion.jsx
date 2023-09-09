import React from "react";
import { Inputs } from "./formVendedor";
import {Link} from 'react-router-dom'
import '../css/formularios.css'
//import 

export default function IniciarSesion(){
    return(
        <form className="formulario">
            <div className="tituloForm">Inicio de sesion</div>
            <div className="containerInputs">
                <Inputs 
                tipo='email'
                id='correo'
                inputName='correo'
                hint='ingrese su correo'
                />
                                <Inputs 
                tipo='password'
                id='contraseña'
                inputName='contraseña'
                hint='ingrese su contraseña'
                />
                <button className="boton">ingresar</button>
                <Link to='/preRegister'><p>¿No tienes cuenta? registrate</p></Link>
            </div>
        </form>
    )
}