import React from "react";
import '../css/catalogos.css'
import '../css/cat.css'
import ConCat from "./cat";

export default function ShowCat() {
    return (
        <div  id="catalogos" className="vis-catalogos">
            <div className="frase-cat">
                <a href="#"><strong>catalogos</strong></a></div>
            <div className="container-catalogos-menu">
                <ConCat
                    nombreCat='Futbol'
                    imageSrc='./src/img/futbol.png'
                />
                <ConCat
                    nombreCat='Baloncesto'
                    imageSrc='./src/img/baloncesto.png'
                />
                <ConCat
                    nombreCat='Tennis'
                    imageSrc='./src/img/tennis.png'
                />
                <ConCat
                    nombreCat='Beisbol'
                    imageSrc='./src/img/beisbol.png'
                />
                <ConCat
                    nombreCat='Ciclismo'
                    imageSrc='./src/img/ciclismo.png'
                />
                <ConCat
                    nombreCat='Crossfit'
                    imageSrc='./src/img/crossfit.png'
                />
                <ConCat
                    nombreCat='Boxeo'
                    imageSrc='./src/img/boxeo.png'
                />
                <ConCat
                    nombreCat='Golf'
                    imageSrc='./src/img/golf.png'
                />
                <ConCat
                    nombreCat='VolleyBall'
                    imageSrc='./src/img/volleyball.png'
                />
                <ConCat
                    nombreCat='Calistenia'
                    imageSrc='./src/img/calistenia.png'
                />
                                <ConCat
                    nombreCat='Atletismo'
                    imageSrc='./src/img/atletismo.png'
                />
                                <ConCat
                    nombreCat='Hockey'
                    imageSrc='./src/img/hockey.png'
                />
            </div>
        </div>

    )
}