import React from 'react';
import Title from '../texts/Title'
import './Article.css';

function Article(){
    return (
        <>
            <article>
                <Title 
                    title="Construindo uma página com React!" 
                    subtitle="Aprendendo a construir interfaces web modernas!"
                />
            </article> 
        </>
    );
};

export default Article;