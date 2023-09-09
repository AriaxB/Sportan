import React from "react";
import App from "../App";
import {Link} from 'react-router-dom'
export default function Ofertas(){
    return(
        <>
        <div className="linksInterfaces">
            <h1>links</h1>
            <Link to='/inicioAdmin' >interfaces admin</Link><br />
            <Link to='/inicioVen' >interfaces vendedor</Link><br />
            <Link to='/inicioComp' >interfaces comprador</Link><br />
        </div>
        </>
    )
}