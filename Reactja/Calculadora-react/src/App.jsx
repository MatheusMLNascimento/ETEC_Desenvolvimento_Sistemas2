import { useState } from 'react'
import Calculadora from './components/Calculadora'
import './App.css'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <Calculadora></Calculadora>
    </>
  )
}

export default App
