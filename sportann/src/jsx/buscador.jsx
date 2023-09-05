import React from "react";
import { ReactDOM } from "react";
import '../css/buscador.css'
export default function Buscador(){
    return(
        <div className="container">
            <div className="search-box">
                <form action="" method="GET" target="_blank">
                    <input
                        type="text"
                        className="search-input"
                        name="q"
                        placeholder="Buscar productos"
                    />
                    <button type="submit" className="search-button">
                        Buscar
                    </button>
                </form>
            </div>
        </div>
    )
}