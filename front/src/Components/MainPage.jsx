import {  NavLink } from "react-router-dom"

export default function MainPage() {
    return (
      <div id="container">
        <div id="logo">
            <div className="centrado">
                <div className="Resto"></div>
                <div className="bloque">
                  <div className="sub-bloque">
                    <NavLink to="cliente">
                      <button className="boton">CLIENTE</button>
                    </NavLink>
                    <NavLink to="personal">
                      <button className="boton">PERSONAL</button>
                    </NavLink>
                  </div>
                </div>  
            </div>
        </div>
      </div>
    );
  }