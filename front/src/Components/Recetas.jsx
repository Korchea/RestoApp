export default function Recetas() {
    return (
        <div>
            <header>header</header>
            <div className="second">
                <h1>RECETAS</h1>
                <div className="lista">
                    <div className="receta">
                        <h2>Nueva</h2>
                        <ul>
                            <li>+</li>
                            <li>+</li>
                        </ul>
                    </div>
                    <div className="receta">
                        <h2>Fideos con tuco</h2>
                        <ul>
                            <li>Fideos</li>
                            <li>Tuco</li>
                        </ul>
                    </div>
                    <div className="receta">
                        <h2>Chivito</h2>
                        <ul>
                            <li>Carne</li>
                            <li>Huevo</li>
                            <li>Pan</li>
                        </ul>
                    </div>
                    <div className="receta">
                        <h2>Hamburguesa</h2>
                        <ul>
                            <li>Hamburguesa</li>
                            <li>Pan</li>
                        </ul>
                    </div>
                </div>
            </div>
            <footer className="foot">footer</footer>
        </div>
    );
}