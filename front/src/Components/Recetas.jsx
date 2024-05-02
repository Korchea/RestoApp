import Receta from "./Receta";
import Header from "./Header";
import Footer from "./Footer";

export default function Recetas() {
    return (
        <>
            <Header />
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
            <Footer />
        </>
    );
}