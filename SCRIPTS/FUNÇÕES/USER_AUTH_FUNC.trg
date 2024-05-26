CREATE OR REPLACE FUNCTION USER_AUTH_FUNC (P_USERNAME IN VARCHAR2
                                         , P_PASSWORD IN VARCHAR2)
RETURN BOOLEAN
AS
MVAL NUMBER := 0;
BEGIN
    SELECT usuario_id into MVAL
    FROM usuario usu
    WHERE upper(usu.login) = upper(P_USERNAME)
      AND usu.senha        = P_PASSWORD
      AND usu.ativo        = 1;
    
    RETURN (TRUE);

EXCEPTION
    WHEN no_data_found THEN
        RETURN FALSE;
END;