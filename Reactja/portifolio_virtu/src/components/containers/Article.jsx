import React from 'react';
import Title from '../texts/Title'
import './Article.css';

function Article(){
    return (
        <>
            <article>
                <Title 
                    title="Meu primeiro portfólio virtual usando React" 
                    subtitle="Use as abas de navegação acima para se locomover entre os 3 projetos"
                />
            </article> 
        </>
    );
};

export default Article;