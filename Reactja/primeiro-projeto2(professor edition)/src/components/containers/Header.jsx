import './Header.css';
import logo from '../../assets/logoReactBlack.png';

function Header(){
    return(
        <>
            <header>
                <img src={logo} />
                <h1>React Project</h1>
            </header>
        </>
    );
}

export default Header;