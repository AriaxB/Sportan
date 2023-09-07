import React  from "react";
import {Inputs,Select,Options} from './formVendedor'
import '../css/formularios.css'
function FormComprador(){
    return(
        <form className='formulario'>
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
            >
                <Options valor='1' nombreOpcion='Bogota'/>
                <Options valor='2' nombreOpcion='Medellin'/>
                <Options valor='3' nombreOpcion='Bucaramanga'/>
                <Options valor='4' nombreOpcion='Barranquilla'/>
                <Options valor='5' nombreOpcion='Cartagena'/>
                <Options valor='6' nombreOpcion='Ibague'/>
                <Options valor='7' nombreOpcion='Valledupar'/>
                <Options valor='8' nombreOpcion='Cali'/>
                <Options valor='9' nombreOpcion='Manizales'/>
                <Options valor='10' nombreOpcion='Pereira'/>
                <Options valor='11' nombreOpcion='Quindio'/>
                <Options valor='12' nombreOpcion='Tunja'/>
                <Options valor='13' nombreOpcion='Neiva'/>
                <Options valor='14' nombreOpcion='Villavicencio'/>
                <Options valor='15' nombreOpcion='Santa Marta'/>
                <Options valor='16' nombreOpcion='Pasto'/>
            </Select>
            <Inputs tipo='text' id='direccion' inputName='escriba su direccion' hint='escriba su direccion' /><br />
            <div className='label'>Elija su genero</div>
            <Select name='genero' id='genero' >
                <Options valor='1' nombreOpcion='Femenino' />
                <Options valor='2' nombreOpcion='Masculino' />
                <Options valor='3' nombreOpcion='indefinido' />
            </Select>
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