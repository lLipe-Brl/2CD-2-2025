CREATE DEFINER=`root`@`localhost` TRIGGER `Autor Menor de 18` BEFORE INSERT ON `tb_autores` FOR EACH ROW BEGIN
	DECLARE idade INT;
	-- Calcula idade com base na data atual e a data de nascimento
    SET idade = TIMESTAMPDIFF(YEAR, NEW.data_nascimento, CURDATE());

    -- Se for menor que 18, bloqueia o insert
    IF idade < 18 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Não é permitido cadastrar autores menores de 18 anos.';
    END IF;
END