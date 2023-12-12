import React, {useState} from 'react';
import './Sum.css';

function Sum(){

    const [number1,setNumber1] = useState(0);

    const [number2,setNumber2] = useState(0);

    const [result, setResult] = useState(0);

    const insertNumber1 = (e) => {

        setNumber1(e.target.value);

    }

    const insertNumber2 = (e) => {

        setNumber2(e.target.value);

    }

    const sum = () => {

        setResult(Number(number1)+Number(number2));

    }

    return(
        <>
            <div className='soma'>
                <label htmlFor="n1">Insert a number:</label><br />
                <input name="n1" id="n1" type="text" onChange={insertNumber1} /><br />
                <label htmlFor="n2">Insert a number:</label><br />
                <input name="n2" id="n2" type="text" onChange={insertNumber2} /><br />
                <button onClick={sum}>Calculate</button>
                <h1>The Sum result is:{result}</h1>
            </div>
        </>
    );
}

export default Sum;