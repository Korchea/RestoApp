import Header from "./Header";
import Platillo from "./Platillo";
import Footer from "./Footer";

export default function Carta() {
    return (
        <>
            <Header />
            <div className="second">
                <h1>CARTA</h1>
                <div className="lista">
                    <Platillo />
                    <Platillo />
                    <Platillo />
                    <Platillo />
                </div>
            </div>
            <Footer />
        </>
    );
}