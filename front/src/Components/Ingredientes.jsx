import Ingrediente from "./Ingrediente";
import Header from "./Header";
import Footer from "./Footer";

export default function Ingredientes() {
    return (
        <>
            <Header />
            <div className="second">
                <h1>INGREDIENTES</h1>
                <div className="lista">
                    <div className="ingrediente">
                        <h2>Nuevo</h2>
                        <h2>+</h2>
                    </div>
                    <Ingrediente />
                    <Ingrediente />
                    <Ingrediente />
                    <Ingrediente />
                    <Ingrediente />
                    <Ingrediente />
                    <Ingrediente />
                </div>
            </div>
            <Footer />
        </>
    );
}