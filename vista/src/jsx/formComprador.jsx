import React  from "react";
import {Inputs,Select,Options,Select2} from './formVendedor'
import '../css/formularios.css'
function FormComprador(){
    return(
        <form className='formulario' method=''>
               <h1 className='tituloForm'>REGISTRO COMPRADOR</h1>
        <div className='containerInputs'>
            <Inputs 
                tipo='text'
                id='nombreComprador'
                inputName='nombreComprador'
                hint='escriba su nombre'
            />
                            <Inputs 
                tipo='text'
                id='apellidoVendedor'
                inputName='apellidoComprador'
                hint='escriba su apellido'
            />
                            <Inputs 
                tipo='text'
                id='numDoc'
                inputName='docComprador'
                hint='escriba su numero de documento'
            />
                                            <Inputs 
                tipo='email'
                id='correoComprador'
                inputName='correoComprador'
                hint='escriba su correo'
            />
              <div className='label'>Elija su fecha de nacimiento</div>
                            <Inputs 
                tipo='date'
                id='nacimientoComprador'
                inputName='nacimientoComprador'
                hint='fecha de nacimiento'
            />
            <div className='label'>Elija ciudad de residencia</div>
            <Select 
                name='ciudad'
                id='ciudad'
            />
            <Inputs tipo='text' id='direccion' inputName='escriba su direccion' hint='escriba su direccion' /><br />
            <div className='label'>Elija su genero</div>
            <Select2 name='genero' id='genero' />
            <Inputs 
                tipo='password'
                id='contraseñaC'
                inputName='contraseñaC'
                hint='escriba su contraseña'
            />
            <Inputs 
                tipo='password'
                id='recontraseñaC'
                inputName='recontraseñaC'
                hint='confirme su contraseña'
            />
            <input type="hidden" value="2" id='rol' name='rol' />
            <button className='boton'>REGISTRARSE</button>
            
        </div>
    </form>
    )
}
export default FormComprador