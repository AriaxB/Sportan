import React from 'react'
import ReactDOM from 'react-dom'
import App from './jsx/Header.jsx'
import BannersMain from './jsx/banners.jsx'
import Buscador from './jsx/buscador.jsx'
import Products from './jsx/productos.jsx'
import ShowCat from './jsx/catalogo.jsx'
import Pie from './jsx/footer.jsx'
import './index.css'

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <App />
    <Buscador />
    <BannersMain />
    <ShowCat />
    <Products />
    <Pie />
  </React.StrictMode>
)
