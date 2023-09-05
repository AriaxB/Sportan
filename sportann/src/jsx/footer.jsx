import React from "react";
import '../css/footer.css'
export default function Pie() {
    return (
        <footer classname="FooterMain">
            <div classname="container-links2">
                <a href="#">accesibilidad</a>
                <a href="#">como cuidamos tus datos</a>
                <a href="#">Ayuda</a>
            </div>
            <div classname="redes">
                siguenos en nuestras redes
                <table>
                    <thead>
                        <tr>
                            <th></th>
                        </tr>
                        <tr />
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <a href="">
                                    <img src="./src/img/facebook.png" alt="" />
                                </a>
                            </td>
                            <td>
                                <a href="">
                                    <img src="./src/img/x.png" alt="" />
                                </a>
                            </td>
                            <td>
                                <a href="">
                                    <img src="./src/img/instagram.png" alt="" />
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </footer>

    )
}