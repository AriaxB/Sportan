//import
// import
export default function Header() {
    return (
        <header className="header">
            <div className="header-logo">
                <a href=""><img src="" alt="" /></a>
            </div>
            <div className="header-menu">
                <nav>
                    <ul><a href="">inicio</a></ul>
                    <ul><a href="">catalogos</a></ul>
                    <ul><a href="">productos</a></ul>
                    <ul><a href="">nosotros</a></ul>
                    <ul><li><a href="#"><img src="" alt="" /></a></li>
                        <ul>
                            <li><a href=""><button>iniciar sesion</button></a></li>
                            <li><a href=""><button>registrate</button></a></li>
                        </ul>
                    </ul>
                </nav>
            </div>
        </header>
    )
}
