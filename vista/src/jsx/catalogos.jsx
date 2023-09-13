import React from "react";
import contentCatalogo from "./cat";
import '../css/catalogos.css'
export default function Catalogos() {
    return(
        <div id="catalogos" className="vis-catalogos">
        <div className="frase-cat">
            <a href="#">
                <strong>CATALOGOS</strong>
                <div>
                <contentCatalogo
                            nombreCat='Futbol'  // Establece el nombreCat
                            imageSrc='./ruta-de-la-imagen.png'  // Establece la ruta de la imagen
                        />
                </div>
            </a>
        </div>
    </div>
    )
}