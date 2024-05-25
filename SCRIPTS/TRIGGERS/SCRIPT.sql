-----------------------------------------------------------------------------
--TRIGGER USUARIO
-----------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER T_usuario_seq
BEFORE INSERT ON usuario
FOR EACH ROW
BEGIN
    :NEW.usuario_id := usuario_seq.NEXTVAL;
END;
/
-----------------------------------------------------------------------------
--TRIGGER CHAMADO
-----------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER T_chamado_seq
BEFORE INSERT ON chamado
FOR EACH ROW
BEGIN
    :NEW.chamado_id := chamado_seq.NEXTVAL;
END;
/
-----------------------------------------------------------------------------
--TRIGGER PRODUTO
-----------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER T_produto_seq
BEFORE INSERT ON produto
FOR EACH ROW
BEGIN
    :NEW.produto_id := produto_seq.NEXTVAL;
END;
/
-----------------------------------------------------------------------------
--TRIGGER RESPOSTA
-----------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER T_resposta_seq
BEFORE INSERT ON resposta
FOR EACH ROW
BEGIN
    :NEW.resposta_id := resposta_seq.NEXTVAL;
END;
/