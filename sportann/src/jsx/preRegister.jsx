import React from "react";
import { Link } from 'react-router-dom';
import App from "../App";
import '../css/preRegister.css';

function Tipo(props){
    return (
        <>
            <div className="opcion-emprendedor">
                <Link className="botones" to={props.path}>
                    <button>
                        <h1>Crear Cuenta {props.nombreUser}</h1>
                    </button>
                </Link>
            </div>
        </>
    );
}

function Registro() {
    return (
            <div>
                <div className="pre-register">
                    <div className="frase">
                        <h1>Como deseas registrarte</h1>
                    </div>
                    <Tipo
                        nombreUser='vendedor'
                        path='/formVendedor'
                    />
                    <Tipo
                        nombreUser='comprador'
                        path='/formComprador'
                    />
                    <Link className="linkii" to='/iniciarSesion'>¿Ya tienes cuenta?</Link>
                </div>
            </div>
    );
}

export default Registro;
