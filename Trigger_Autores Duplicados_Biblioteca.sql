CREATE DEFINER=`root`@`localhost` TRIGGER `Autores Duplicados` BEFORE INSERT ON `tb_autores` FOR EACH ROW BEGIN
    DECLARE qtd INT;

    -- Verifica se já existe autor com o mesmo nome
    SELECT COUNT(*) INTO qtd
    FROM tb_autores
    WHERE nome = NEW.nome;

    IF qtd > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Autor já existe na base de dados.';
    END IF;
END