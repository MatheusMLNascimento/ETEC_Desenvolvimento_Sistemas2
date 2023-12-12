import { useState } from 'react';
import Hello from './components/hello';
import Header from './components/header';
import './App.css';

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <Hello></Hello>
      <Header></Header>
    </>
  )
}

export default App;
