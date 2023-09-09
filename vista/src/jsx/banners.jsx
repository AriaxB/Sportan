import React from "react";
import { ReactDOM } from "react";
import '../css/banners.css'
export default function BannersMain(){
    const banner1='./src/img/banner1.png'
    const banner2='./src/img/banner2.png'
    const banner3='./src/img/banner3.png'
    return(
        <div id="carrusel-contenido">
        <div id="carrusel-caja">
          <div className="carrusel-elemento">
            <a href="">
              <img className="imagenes" 
              src={banner1}/>
            </a>
          </div>
          <div className="carrusel-elemento">
            <a href="">
              <img className="imagenes" src={banner2} />
            </a>
          </div>
          <div className="carrusel-elemento">
            <a href="">
              <img className="imagenes" src={banner3} />
            </a>
          </div>
        </div>
      </div> 
    )
}