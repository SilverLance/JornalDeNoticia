CREATE TABLE NOTICIA(
    ID BIGINT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
    TITULO VARCHAR(255) NOT NULL,
    AUTOR VARCHAR(255) NOT NULL,
    DATA_PUBLICACAO DATE NOT NULL,
    TEXTO LONG VARCHAR NOT NULL
);

CREATE TABLE COMENTARIO (
    ID BIGINT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
    NOTICIA BIGINT REFERENCES NOTICIA(ID),
    AUTOR VARCHAR(255) NOT NULL,
    EMAIL VARCHAR(255) NOT NULL,  
    DATA_PUBLICACAO DATE NOT NULL,      
    TEXTO LONG VARCHAR NOT NULL
);
