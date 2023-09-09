import React from "react";
import { Link } from 'react-router-dom'
import '../css/App.css'

export function LinksMenu(props) {
    return (
        <ul>
            <Link className="linkk" to={props.path}>{props.nombreInterfaz}</Link>
        </ul>
    )
}
export function LinkIcon(props) {
    return (
        <>
            <li>
                <Link className="linkoo" to={props.path}>{props.nombreInterfaz}</Link>
            </li>
        </>
    )
}
export function MenuIcon() {
    return (
        <div className="botones">
            <nav className="navegador">
                <ul className="menuh">
                    <li>
                        <a href="#">
                            <img className='user' src="./src/img/usuario.png" alt="" />
                        </a>
                        <ul className="menuv">
                            <LinkIcon path='/miPerfil' nombreInterfaz='mi perfil' />
                            <LinkIcon path='/cerrarSesion' nombreInterfaz='cerrar sesion' />
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    )
}
export function Logo() {
    return (
        <div className="header-top">
            <div className="logo">
                <img src="./src/img/logo-sportan.png" alt="" />{" "}
            </div>
        </div>
    )
}
export function MenuVendedor() {
    return (
        <header className="header">
            <Logo />
            <div className="header-bottom">
                <nav>
                    <div className="menu">
                        <LinksMenu path='/inicioVen' nombreInterfaz='inicio' />
                        <LinksMenu path='/subirProductoVen' nombreInterfaz='subir producto' />
                        <LinksMenu path='/verProductoVen' nombreInterfaz='mis productos' />
                        <LinksMenu path='/nosotrosVen' nombreInterfaz='nosotros' />
                        <LinksMenu path='/misOrdenesVen' nombreInterfaz='mis ordenes' />
                        <LinksMenu path='/ayudaVen' nombreInterfaz='ayuda' />
                    </div>
                </nav>
                <MenuIcon />
            </div>
        </header>
    )
}
export function MenuComprador() {
    return (
        <header className="header">
            <Logo />
            <div className="header-bottom">
                <nav>
                    <div className="menu">
                        <LinksMenu path='/inicioComp' nombreInterfaz='inicio' />
                        <LinksMenu path='/ofertasComp' nombreInterfaz='ofertas' />
                        <LinksMenu path='/productosComp' nombreInterfaz='productos' />
                        <LinksMenu path='/nosotrosComp' nombreInterfaz='nosotros' />
                        <LinksMenu path='/misOrdenesComp' nombreInterfaz='mis ordenes' />
                        <LinksMenu path='/ayudaComp' nombreInterfaz='ayuda' />
                    </div>
                </nav>
                <MenuIcon />
            </div>
        </header>
    )
}
export function MenuAdmin() {
    return (
        <header className="header">
            <Logo />
            <div className="header-bottom">
                <nav>
                    <div className="menu">
                        <LinksMenu path='/inicioAdmin' nombreInterfaz='inicio' />
                        <LinksMenu path='/controlUsers' nombreInterfaz='usuarios' />
                        <LinksMenu path='/controlProductos' nombreInterfaz='productos' />
                        <LinksMenu path='/controlOrdenes' nombreInterfaz='ordenes' />
                        <LinksMenu path='/controlPqrs' nombreInterfaz='pqrs' />
                    </div>
                </nav>
                <MenuIcon />
            </div>
        </header>
    )
}
