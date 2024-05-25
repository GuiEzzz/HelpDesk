-----------------------------------------------------------------------------
--TABELA USUARIO
-----------------------------------------------------------------------------
CREATE TABLE usuario(
    usuario_id     NUMBER(10),
    nome           VARCHAR2(100) NOT NULL,
    login          VARCHAR2(100) UNIQUE NOT NULL,
    senha          VARCHAR2(100) NOT NULL,
    administrador  NUMBER(1) DEFAULT 0,
    ativo          NUMBER(1) DEFAULT 1,

    CONSTRAINT pk_usuario_id PRIMARY KEY (usuario_id)
);
/
-----------------------------------------------------------------------------
--TABELA PRODUTO
-----------------------------------------------------------------------------
CREATE TABLE produto(
    produto_id    NUMBER(10),
    titulo        VARCHAR2(100) NOT NULL,
    descricao     VARCHAR2(250),

    CONSTRAINT pk_produto_id PRIMARY KEY (produto_id)
);
/
-----------------------------------------------------------------------------
--TABELA CHAMADO
-----------------------------------------------------------------------------
CREATE TABLE chamado(
    chamado_id   NUMBER(10),
    usuario_id   NUMBER(10),
    produto_id   NUMBER(10),
    titulo       VARCHAR2(100) NOT NULL,
    status       NUMBER(1) DEFAULT 1,

    CONSTRAINT pk_chamado_id PRIMARY KEY (chamado_id),
    CONSTRAINT fk_usuario_id FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    CONSTRAINT fk_produto_id FOREIGN KEY (produto_id) REFERENCES produto(produto_id)
);
/
-----------------------------------------------------------------------------
--TABELA RESPOSTA
-----------------------------------------------------------------------------
CREATE TABLE resposta(
    resposta_id   NUMBER(10),
    chamado_id    NUMBER(10),
    descricao     VARCHAR2(250) NOT NULL,

    CONSTRAINT pk_resposta_id PRIMARY KEY (resposta_id),
    CONSTRAINT fk_chamado_id FOREIGN KEY (chamado_id) REFERENCES chamado(chamado_id) ON DELETE CASCADE
);
/