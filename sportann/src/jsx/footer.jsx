import React from "react";
import '../css/footer.css'
function Links(props){
    return(
        <>
        <a href=""><strong>{props.link}</strong></a>
        </>
    )
}
export default function Pie() {
    return (
        <div className="footer">
            <div className="links">
                <Links
                    link='accesibilidad'
                />
                <Links
                    link='comunidad'
                />
                <Links
                    link='contactanos'
                />
            </div>
            <h1>Nuestras redes sociales</h1>
            <div className="redesSociales">
                <a href=""><img src="./src/img/facebook.png" alt="" /></a>
                <a href=""><img src="./src/img/x.png" alt="" /></a>
                <a href=""><img src="./src/img/instagram.png" alt="" /></a>
            </div>
        </div>

    )
}