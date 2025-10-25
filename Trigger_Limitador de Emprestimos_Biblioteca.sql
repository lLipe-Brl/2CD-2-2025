CREATE DEFINER=`root`@`localhost` TRIGGER `Limitador de Empréstimos` BEFORE INSERT ON `tb_emprestimos` FOR EACH ROW BEGIN
-- Consulta da Quantidade de Emprestimos Ativos 
	DECLARE total_emprestimo INT;

	SELECT COUNT(*) INTO total_emprestimo FROM tb_emprestimo 
	WHERE id_membroF = NEW.id_membroF AND data_devolução IS NULL;
    
-- Delimitador de Emprestimo
IF total_emprestimo >= 3 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = "O membro não pode ter mais de 3 empréstimos ativos";
END IF ;
END