import Receta from "./Receta";
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
                    <Receta />
                    <Receta />
                    <Receta />
                    <Receta />
                    <Receta />
                </div>
            </div>
            <footer className="foot">footer</footer>
        </div>
    );
}