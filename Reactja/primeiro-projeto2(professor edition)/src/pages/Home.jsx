import {React} from 'react';
import Header from '../components/containers/Header';
import Nav from '../components/containers/Nav';
import Article from '../components/containers/Article';
import Footer from '../components/containers/Footer';
import Count from '../components/others/Count';
import Sum from '../components/others/Sum';

function Home() {

  return (
    <>
      <Header />
      <Nav />
      <Article />
      <Count />
      <Sum />
      <Footer />
    </>
  )
}

export default Home;