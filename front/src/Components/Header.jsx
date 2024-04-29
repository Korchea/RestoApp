export default function Header() {
    return (
        <div>
            <header>
                <div className="menu">
                    <box-icon name="menu"></box-icon>
                </div>
                <div className="cart">
                    <box-icon name="cart"></box-icon>
                    <span className="item__total">0</span>
                </div>
            </header>
        </div>
    );
}