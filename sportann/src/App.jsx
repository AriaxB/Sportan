import React from 'react';
import { BrowserRouter, Route, Routes, Link } from 'react-router-dom';
import Principal from './jsx/principal.jsx';
import Ofertas from './jsx/ofertas.jsx';
import Nosotros from './jsx/nosotros.jsx';
import IniciarSesion from './jsx/iniciarSesion.jsx';
import Registro from './jsx/preRegister.jsx';
import FormVendedor from './jsx/formVendedor';
import FormComprador from './jsx/formComprador';

function Header() {
  return (
    <header className="header">
      <div className="header-top">
        <div className="logo">
          <img src="../src/img/logo-sportan.png" alt="" />
        </div>
      </div>
      <div className="header-bottom">
        <nav>
          <div className="menu">
            <ul>
              <Link className='linkk' to="/">inicio</Link>
            </ul>
            <ul>
              <Link className='linkk' to="/">catalogos</Link>
            </ul>
            <ul>
              <Link className='linkk' to="/ofertas">ofertas</Link>
            </ul>
            <ul>
              <Link className='linkk' to="/">productos</Link>
            </ul>
            <ul>
              <Link className='linkk' to="/nosotros">nosotros</Link>
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
                    <Link className='linkoo' to="/iniciarSesion">iniciar sesion</Link>
                  </li>
                  <li>
                    <Link className='linkoo' to="/preRegister">registrate</Link>
                  </li>
                </ul>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </header>
  );
}

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/ofertas' element={<>
          <Header />
          <Ofertas />
        </>} /> 
        <Route path='/nosotros' element={<>
          <Header />
          <Nosotros />
        </>} /> 
        <Route path='/iniciarSesion' element={<>
          <IniciarSesion />
        </>} /> 
        <Route path='/preRegister' element={<Registro />} /> 
        <Route path='/' element={<>
          <Header />
          <Principal />
        </>} />
        <Route path='/formVendedor' element={<FormVendedor />} />
        <Route path='/formComprador' element={<FormComprador />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
