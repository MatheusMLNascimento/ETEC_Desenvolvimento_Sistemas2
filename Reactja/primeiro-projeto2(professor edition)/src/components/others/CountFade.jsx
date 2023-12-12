import React, { useState, useEffect } from 'react';
import './Count.css';

function CounterFade() {
  const [count, setCount] = useState(0);

  const increment = () => {
    setCount((prevCount) => prevCount + 1);
  };

  useEffect(() => {
    const timeout = setTimeout(() => {
      const element = document.getElementById('counter-text');
      if (element) {
        element.classList.remove('hidden');
      }
    }, 0);

    return () => clearTimeout(timeout);
  }, [count]);

  return (
    <>
      <div>
        <p
          id="counter-text"
          className={`fade-out ${count > 0 ? 'hidden' : ''}`}
        >
          Count: {count}
        </p>
        <button onClick={increment}>Increment</button>
      </div>
    </>
  );
}

export default CounterFade;