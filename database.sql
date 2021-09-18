-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Set-2021 às 16:31
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mybanco_php`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.agenda`
--

CREATE TABLE `tb_admin.clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.clientes`
--

INSERT INTO `tb_admin.clientes` (`id`, `nome`, `email`, `tipo`, `cpf_cnpj`, `imagem`) VALUES
(3, 'Amanda Doe', 'amanda@doe.com', 'juridico', '00.000.000/0000-00', ''),
(7, 'Jhon Doe', 'jhon@doe.com', 'juridico', '00.000.000/0000-00', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.estoque`
--

CREATE TABLE `tb_admin.estoque` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `largura` int(11) NOT NULL,
  `altura` int(11) NOT NULL,
  `comprimento` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.estoque`
--

INSERT INTO `tb_admin.estoque` (`id`, `nome`, `descricao`, `largura`, `altura`, `comprimento`, `peso`, `quantidade`, `preco`) VALUES
(8, 'Baldur\'s Gate: Enhanced Edition', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse luctus nibh ligula, id laoreet felis mattis quis. Ut rhoncus, nulla non dapibus ultricies, risus est tristique nibh, vel mattis ex tellus a nisi. Suspendisse non tortor vel felis iaculis placerat. Cras in nibh felis. Sed mi tortor, congue vel dolor eu, gravida condimentum erat. Nulla et urna justo. Nullam bibendum lectus ac rhoncus imperdiet. Curabitur non mi sem.\r\n\r\nNunc et mi vitae mi porta lobortis. Sed placerat risus sem, non ultricies massa facilisis id. Etiam euismod rutrum risus at accumsan. Integer porttitor velit sed metus viverra, ac placerat erat scelerisque. Nulla vel libero a risus varius tincidunt. Proin at mollis sem. Nullam hendrerit viverra tortor, sit amet egestas turpis elementum a. Sed eu neque et ligula fermentum lacinia finibus id elit. Fusce posuere elementum turpis eget accumsan. Ut vel euismod diam. In scelerisque, sapien et elementum bibendum, elit tellus porttitor nulla, ut bibendum augue quam ac lacus. Cras malesuada mollis magna sed venenatis.', 15, 15, 15, 20, 10, '200.00'),
(9, 'Red Dead Redemption 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nunc purus, pellentesque nec blandit quis, ornare placerat nibh. Nam lobortis in lectus vel mattis. Quisque finibus ex massa, nec mattis urna pulvinar vel. Nullam sed ante at quam maximus bibendum. Morbi vitae dolor pulvinar, suscipit nulla ut, tincidunt sapien. Curabitur laoreet egestas lacus a volutpat. Aenean ipsum lacus, pellentesque malesuada augue vitae, dapibus venenatis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec ac felis auctor, vulputate dolor placerat, sagittis nibh. Mauris vulputate condimentum lacus, ut pulvinar mi egestas ac. Nulla condimentum sapien sit amet nunc commodo pharetra. Integer ut varius odio. Cras volutpat rhoncus semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer sagittis nisl finibus diam bibendum, sit amet ultricies sapien vestibulum.', 15, 15, 15, 15, 10, '199.00'),
(10, 'Phantasmagoria 2: A Puzzle of Flesh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nunc purus, pellentesque nec blandit quis, ornare placerat nibh. Nam lobortis in lectus vel mattis. Quisque finibus ex massa, nec mattis urna pulvinar vel. Nullam sed ante at quam maximus bibendum. Morbi vitae dolor pulvinar, suscipit nulla ut, tincidunt sapien. Curabitur laoreet egestas lacus a volutpat. Aenean ipsum lacus, pellentesque malesuada augue vitae, dapibus venenatis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec ac felis auctor, vulputate dolor placerat, sagittis nibh. Mauris vulputate condimentum lacus, ut pulvinar mi egestas ac. Nulla condimentum sapien sit amet nunc commodo pharetra. Integer ut varius odio. Cras volutpat rhoncus semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer sagittis nisl finibus diam bibendum, sit amet ultricies sapien vestibulum.', 15, 15, 15, 9, 10, '189.99'),
(11, 'Blood of the Sacred Blood of the Damned', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nunc purus, pellentesque nec blandit quis, ornare placerat nibh. Nam lobortis in lectus vel mattis. Quisque finibus ex massa, nec mattis urna pulvinar vel. Nullam sed ante at quam maximus bibendum. Morbi vitae dolor pulvinar, suscipit nulla ut, tincidunt sapien. Curabitur laoreet egestas lacus a volutpat. Aenean ipsum lacus, pellentesque malesuada augue vitae, dapibus venenatis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec ac felis auctor, vulputate dolor placerat, sagittis nibh. Mauris vulputate condimentum lacus, ut pulvinar mi egestas ac. Nulla condimentum sapien sit amet nunc commodo pharetra. Integer ut varius odio. Cras volutpat rhoncus semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer sagittis nisl finibus diam bibendum, sit amet ultricies sapien vestibulum.', 15, 15, 15, 15, 10, '399.00'),
(12, 'Conquests of the Longbow: The Legend of Robin Hood', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nunc purus, pellentesque nec blandit quis, ornare placerat nibh. Nam lobortis in lectus vel mattis. Quisque finibus ex massa, nec mattis urna pulvinar vel. Nullam sed ante at quam maximus bibendum. Morbi vitae dolor pulvinar, suscipit nulla ut, tincidunt sapien. Curabitur laoreet egestas lacus a volutpat. Aenean ipsum lacus, pellentesque malesuada augue vitae, dapibus venenatis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec ac felis auctor, vulputate dolor placerat, sagittis nibh. Mauris vulputate condimentum lacus, ut pulvinar mi egestas ac. Nulla condimentum sapien sit amet nunc commodo pharetra. Integer ut varius odio. Cras volutpat rhoncus semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer sagittis nisl finibus diam bibendum, sit amet ultricies sapien vestibulum.', 15, 15, 15, 9, 10, '599.99');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.estoque_imagens`
--

CREATE TABLE `tb_admin.estoque_imagens` (
  `id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.estoque_imagens`
--

INSERT INTO `tb_admin.estoque_imagens` (`id`, `produto_id`, `imagem`) VALUES
(8, 8, 'produtoimgOne.jpg'),
(9, 9, 'produtoimgTwo.jpg'),
(10, 10, 'produtoimgThree.jpg'),
(11, 11, 'produtoimgFour.jpg'),
(12, 12, 'produtoimgFive.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.financeiro`
--

CREATE TABLE `tb_admin.financeiro` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `vencimento` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.financeiro`
--

INSERT INTO `tb_admin.financeiro` (`id`, `cliente_id`, `nome`, `valor`, `vencimento`, `status`) VALUES
(48, 3, 'Payment', '100,00', '2021-09-11', 1),
(49, 3, 'Payment', '100,00', '2021-09-21', 1),
(50, 3, 'Payment Three', '100,00', '2021-09-01', 1),
(51, 3, 'Payment Three', '100,00', '2021-09-02', 1),
(52, 3, 'Payment Three', '100,00', '2021-09-02', 1),
(53, 3, 'Payment Three', '100,00', '2021-09-02', 1),
(54, 3, 'Payment Three', '100,00', '2021-09-02', 1),
(55, 3, 'Payment Three', '100,00', '2021-09-02', 1),
(56, 7, 'Treino', '90,00', '2021-09-09', 1),
(57, 7, 'Treino', '90,00', '2021-09-19', 1),
(58, 7, 'Treino', '90,00', '2021-09-29', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.online`
--

CREATE TABLE `tb_admin.online` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `ultima_acao` datetime NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.online`
--

INSERT INTO `tb_admin.online` (`id`, `ip`, `ultima_acao`, `token`) VALUES
(51, '::1', '2021-09-18 11:30:11', '6145f6dfdf689'),
(52, '::1', '2021-09-18 11:30:22', '6145f7fa9f13d');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.pedidos`
--

CREATE TABLE `tb_admin.pedidos` (
  `id` int(11) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.pedidos`
--

INSERT INTO `tb_admin.pedidos` (`id`, `reference_id`, `produto_id`, `amount`, `status`) VALUES
(1, '8', 8, 20, '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.usuarios`
--

CREATE TABLE `tb_admin.usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.usuarios`
--

INSERT INTO `tb_admin.usuarios` (`id`, `user`, `password`, `img`, `nome`, `cargo`) VALUES
(1, 'raissa', 'gaivabeach', '', 'Raissa Arcaro Daros', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.visitas`
--

CREATE TABLE `tb_admin.visitas` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `dia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.visitas`
--

INSERT INTO `tb_admin.visitas` (`id`, `ip`, `dia`) VALUES
(1, '::1', '2021-08-18'),
(2, '::1', '2021-08-18'),
(3, '::1', '2021-08-26'),
(4, '::1', '2021-08-26'),
(5, '::1', '2021-08-26'),
(6, '::1', '2021-08-27'),
(7, '::1', '2021-08-27'),
(8, '::1', '2021-08-27'),
(9, '::1', '2021-08-27'),
(10, '::1', '2021-08-27'),
(11, '192.168.0.102', '2021-08-29'),
(12, '::1', '2021-08-30'),
(13, '::1', '2021-08-30'),
(14, '::1', '2021-09-01'),
(15, '::1', '2021-09-03'),
(16, '::1', '2021-09-04'),
(17, '::1', '2021-09-04'),
(18, '::1', '2021-09-09'),
(19, '::1', '2021-09-11'),
(20, '::1', '2021-09-11'),
(21, '::1', '2021-09-13'),
(22, '192.168.0.104', '2021-09-14'),
(23, '::1', '2021-09-15'),
(24, '::1', '2021-09-16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.config`
--

CREATE TABLE `tb_site.config` (
  `titulo` varchar(255) NOT NULL,
  `nome_autor` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `icone1` varchar(255) NOT NULL,
  `icone2` varchar(255) NOT NULL,
  `descricao2` text NOT NULL,
  `icone3` varchar(255) NOT NULL,
  `descricao3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.config`
--

INSERT INTO `tb_site.config` (`titulo`, `nome_autor`, `descricao`, `icone1`, `icone2`, `descricao2`, `icone3`, `descricao3`) VALUES
('Meu título', 'Raissa Dev', 'Minha descrição...', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.depoimentos`
--

CREATE TABLE `tb_site.depoimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `depoimento` text NOT NULL,
  `data` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.depoimentos`
--

INSERT INTO `tb_site.depoimentos` (`id`, `nome`, `depoimento`, `data`, `order_id`) VALUES
(1, 'Raissa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non massa sed lectus pretium facilisis. Mauris facilisis turpis vel nibh commodo consequat. Duis sit amet nulla eget orci euismod egestas in sed ex. Nam faucibus eget justo vulputate ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.', '28/08/2021', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.servicos`
--

CREATE TABLE `tb_site.servicos` (
  `id` int(11) NOT NULL,
  `servico` text NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.servicos`
--

INSERT INTO `tb_site.servicos` (`id`, `servico`, `order_id`) VALUES
(1, 'Programadora', 1),
(2, 'Designer UI/UX', 2),
(3, 'Designer UI/UX', 3),
(4, 'Designer UI/UX', 4),
(5, 'Designer UI/UX', 5),
(6, 'Designer UI/UX', 6),
(7, 'Designer UI/UX', 7),
(8, 'Designer UI/UX', 8),
(9, 'Copywriter', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.slides`
--

CREATE TABLE `tb_site.slides` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slide` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_admin.clientes`
--
ALTER TABLE `tb_admin.clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.estoque`
--
ALTER TABLE `tb_admin.estoque`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.estoque_imagens`
--
ALTER TABLE `tb_admin.estoque_imagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.financeiro`
--
ALTER TABLE `tb_admin.financeiro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.pedidos`
--
ALTER TABLE `tb_admin.pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_admin.clientes`
--
ALTER TABLE `tb_admin.clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_admin.estoque`
--
ALTER TABLE `tb_admin.estoque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_admin.estoque_imagens`
--
ALTER TABLE `tb_admin.estoque_imagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tb_admin.financeiro`
--
ALTER TABLE `tb_admin.financeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `tb_admin.pedidos`
--
ALTER TABLE `tb_admin.pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
