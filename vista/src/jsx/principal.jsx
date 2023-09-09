import React from "react";
import { ReactDOM } from "react";
import BannersMain from './banners.jsx'
import Buscador from './buscador.jsx'
import Products from './productos.jsx'
import ShowCat from './catalogo.jsx'
import Pie from './footer.jsx'
import '../css/App.css'
export default function Principal() {
    return (
        <>
            <Buscador />
            <BannersMain />
            <ShowCat />
            <Products />
            <Pie />
        </>
    )
}