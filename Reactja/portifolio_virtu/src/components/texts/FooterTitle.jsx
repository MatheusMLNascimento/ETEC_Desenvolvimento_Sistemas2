import React from 'react';
import './FooterTitle.css';

const FooterTitle = (props)=>{
    return(
        <>
            <h3 className="footer">{props.title}</h3>
        </>
    );
}

export default FooterTitle;