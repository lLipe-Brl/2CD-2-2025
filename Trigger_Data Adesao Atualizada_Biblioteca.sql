CREATE DEFINER=`root`@`localhost` TRIGGER `Data Adesão Atualizada` BEFORE INSERT ON `tb_livros` FOR EACH ROW BEGIN
	 -- Se não for informada, define automaticamente a data atual
        SET NEW.data_adesao = CURDATE();
END