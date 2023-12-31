import React from 'react';
import './Title.css';

function Title(props){
    return(
        <>
            <h1 className="title">{props.title}</h1>
            <h2 className="subtitle">{props.subtitle}</h2>
        </>   
    );
}

export default Title;