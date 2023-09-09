import { useState } from 'react'
import '../css/App.css'

export default function Menuh() {
  return (
    <header className="header">
      <div className="header-top">
    <div className="logo">
      <img src="./src/img/logo-sportan.png" alt="" />{" "}
    </div>
  </div>
  <div className="header-bottom">
    <nav>
      <div className="menu">
        <ul>
          <a href=""><Link to="/">inicio</Link></a>
        </ul>
        <ul>
          <a href=""><Link to="/#catalogos">catalogos</Link></a>
        </ul>
        <ul>
          <a href=""><Link to="/ofertas">ofertas</Link></a>
        </ul>
        <ul>
          <a href=""><Link to="/#productos">productos</Link></a>
        </ul>
        <ul>
          <a href="/nosotros">Nosotros</a>
        </ul>
      </div>
    </nav>
    <div className="botones">
      <nav className="navegador">
        <ul className="menuh">
          <li>
            <a href="#">
              <img className='user' src="./src/img/usuario.png" alt="" />
            </a>
            <ul className="menuv">
              <li>
                <a href=""><button><Link to="/iniciarSesion">iniciar sesion</Link></button></a>
              </li>
              <li>
                <a href=""><button><Link to="/preRegistro">registrate</Link></button></a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
    </div>
  </div>
  </header>
  )
}

