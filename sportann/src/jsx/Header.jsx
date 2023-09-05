import { useState } from 'react'
import '../css/App.css'

function App() {
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
          <a href="">Inicio</a>
        </ul>
        <ul>
          <a href="">catalogo</a>
        </ul>
        <ul>
          <a href="">Ofertas</a>
        </ul>
        <ul>
          <a href="#productos">Productos</a>
        </ul>
        <ul>
          <a href="">Nosotros</a>
        </ul>
        <ul>
          <a href="">Sustentacion</a>
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
                <a href=""><button>iniciar sesion</button></a>
              </li>
              <li>
                <a href=""><button>registrate</button></a>
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

export default App
