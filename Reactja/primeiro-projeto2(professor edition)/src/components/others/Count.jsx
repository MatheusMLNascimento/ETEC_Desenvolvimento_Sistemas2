import React, { useState } from 'react';
import './Count.css';

function Count() { 
    
const [count, setCount] = useState(0);

const increment = () => {

setCount(prevCount => prevCount + 1); 

};

return (
<>
    <div className='contador'>

    <p>Count: {count}</p>

    <button onClick={increment}>Increment</button>

    </div>
    
</>


);

}

export default Count;