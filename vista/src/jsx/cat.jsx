import React from "react";
import { ReactDOM } from "react";
import '../css/cat.css'
export default  function ConCat(props){
    return(
        <div className="cat">
            <a href="">
                <img className="cat-img" src={props.imageSrc} alt={props.nombreCat} />
            </a>
            <h1>{props.nombreCat}</h1>
        </div>
    )
}
