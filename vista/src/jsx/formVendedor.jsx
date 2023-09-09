import React from 'react';
import '../css/formularios.css'
export function Inputs(prop){
    return(
            <input className='input' type={prop.tipo} id={prop.id} name={prop.inputName} placeholder={prop.hint} />
    )
}
export function Options(props){
    return(
        <option value={props.valor}>{props.nombreOpcion}</option>
    )
}
export function Select(props){
    return(
        <select className='select' name={props.name} id={props.id}>
                    <Options valor='1' nombreOpcion='Bogota'/>
                    <Options valor='2' nombreOpcion='Medellin'/>
                    <Options valor='3' nombreOpcion='Cali'/>
                    <Options valor='4' nombreOpcion='Cartagena'/>
                    <Options valor='5' nombreOpcion='Pasto'/>
                    <Options valor='6' nombreOpcion='Tunja'/>
                    <Options valor='7' nombreOpcion='Manizales'/>
                    <Options valor='8' nombreOpcion='Quindio'/>
                    <Options valor='9' nombreOpcion='Pereira'/>
                    <Options valor='10' nombreOpcion='Bucaramanga'/>
                    <Options valor='11' nombreOpcion='Cucuta'/>
                    <Options valor='12' nombreOpcion='Ibague'/>
                    <Options valor='13' nombreOpcion='Neiva'/>
                    <Options valor='14' nombreOpcion='Villavicencio'/>
                    <Options valor='15' nombreOpcion='Leticia'/>
                    <Options valor='16' nombreOpcion='Santa Marta'/>
        </select>
    )

}
export function Select2(props){
    return(
        <select className='select' name={props.name} id={props.id}>
            <Options valor='1' nombreOpcion='Femenino' />
            <Options valor='2' nombreOpcion='Masculino' />
            <Options valor='3' nombreOpcion='indefinido' />
        </select>
    )
}
function FormVendedor(){
    return(<>
        <form className='formulario' method=''>
        <h1 className='tituloForm'>REGISTRO VENDEDOR</h1>
            <div className='containerInputs'>
                <Inputs 
                    tipo='text'
                    id='nombreVendedor'
                    inputName='nombreVendedor'
                    hint='escriba su nombre'
                />
                                <Inputs 
                    tipo='text'
                    id='apellidoVendedor'
                    inputName='apellidoVendedor'
                    hint='escriba su apellido'
                />
                                <Inputs 
                    tipo='text'
                    id='numDoc'
                    inputName='docVendedor'
                    hint='escriba su numero de documento'
                />
                                                <Inputs 
                    tipo='email'
                    id='correoVendedor'
                    inputName='correoVendedor'
                    hint='escriba su correo'
                />
                  <div className='label'>Elija su fecha de nacimiento</div>
                                <Inputs 
                    tipo='date'
                    id='nacimientoVendedor'
                    inputName='nacimientoVendedor'
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
                    id='contraseñaV'
                    inputName='contraseñaV'
                    hint='escriba su contraseña'
                />
                <Inputs 
                    tipo='password'
                    id='recontraseñaV'
                    inputName='recontraseñaV'
                    hint='confirme su contraseña'
                />
                <input type="hidden" value="1" id='rol' name='rol' />
                <button className='boton'>REGISTRARSE</button>
            </div>
        </form>
    </>
    )
}
export default FormVendedor

