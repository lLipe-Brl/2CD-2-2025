CREATE DEFINER=`root`@`localhost` TRIGGER `Data_Devolucao` BEFORE INSERT ON `tb_emprestimos` FOR EACH ROW BEGIN
	-- Se o usuário não informar a data de devolução
    IF NEW.data_devolução IS NULL THEN
	-- Calcula automaticamente 15 dias após a data do empréstimo
        SET NEW.data_devolução = DATE_ADD(NEW.data_emprestimo, INTERVAL 15 DAY);
    END IF;
END