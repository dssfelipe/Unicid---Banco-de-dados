DROP DATABASE cybershield;
CREATE DATABASE IF NOT EXISTS cybershield;
USE cybershield;

-- Tabela BAIRRO
CREATE TABLE BAIRRO (
    id_bairro INT PRIMARY KEY AUTO_INCREMENT,
    nome_bairro VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela LOGRADOURO
CREATE TABLE LOGRADOURO (
    id_logradouro INT PRIMARY KEY AUTO_INCREMENT,
    nome_logradouro VARCHAR(255) NOT NULL,
    cep VARCHAR(20),
    numero_logradouro VARCHAR(10)
);

-- Tabela LOCAL
CREATE TABLE LOCAL (
    id_local INT PRIMARY KEY AUTO_INCREMENT,
    id_bairro INT NOT NULL,
    id_logradouro INT NOT NULL,
    FOREIGN KEY (id_bairro) REFERENCES BAIRRO(id_bairro),
    FOREIGN KEY (id_logradouro) REFERENCES LOGRADOURO(id_logradouro),
    UNIQUE (id_bairro, id_logradouro)
);

-- Tabela MARCA_CELULAR
CREATE TABLE MARCA_CELULAR (
    id_marca INT PRIMARY KEY AUTO_INCREMENT,
    nome_marca VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela OCORRÊNCIA
CREATE TABLE OCORRÊNCIA (
    id_ocorrencia INT PRIMARY KEY AUTO_INCREMENT,
    id_local INT NOT NULL,
    id_marca INT NOT NULL,
    descricao TEXT,
    data_inicio DATETIME NOT NULL,
    quantidade_objeto INT,
    FOREIGN KEY (id_local) REFERENCES LOCAL(id_local),
    FOREIGN KEY (id_marca) REFERENCES MARCA_CELULAR(id_marca)
);

-- Inserção de bairros
INSERT INTO BAIRRO (nome_bairro) VALUES
('Aricanduva'),
('Artur Alvim'),
('Carrão'),
('Cidade Lider'),
('Cidade Tiradentes'),
('Guaianazes'),
('Iguatemi'),
('Itaquera'),
('José Bonifácio'),
('Parque do Carmo'),
('São Rafael'),
('São Mateus'),
('Tatuapé'),
('Vila Formosa'),
('Vila Matilde');

INSERT INTO LOGRADOURO (nome_logradouro, cep, numero_logradouro) VALUES
-- Aricanduva
('Rua Engenheiro Cestari', '03573-000', '100'),
('Avenida Aricanduva', '03527-000', '2000'),
('Rua Doutor Eduardo Mendes Gonçalves', '03565-000', '150'),
('Rua Professor João de Oliveira Torres', '03574-000', '250'),
('Rua José de Oliveira Coutinho', '03576-000', '300'),
('Rua Doutor Eduardo Mendes Gonçalves', '03565-000', '450'),
('Rua José de Oliveira Coutinho', '03576-000', '500'),
('Avenida Aricanduva', '03527-000', '5500'),
('Rua São Vicente', '03558-000', '700'),
('Rua Ana Pimentel', '03559-000', '800'),
-- Artur Alvim
('Rua Guaraiú', '03913-000', '200'),
('Avenida do Contorno', '03912-000', '1100'),
('Rua das Acácias', '03915-000', '500'),
('Rua do Açude', '03914-000', '600'),
('Rua Clementino Pereira', '03916-000', '700'),
('Rua Itabaiana', '03911-000', '800'),
('Rua Paratinga', '03913-100', '900'),
('Avenida São Miguel', '03910-000', '1000'),
('Rua São Benedito', '03911-300', '1500'),
('Rua das Figueiras', '03912-200', '2000'),
-- Carrão
('Rua Taubaté', '03070-000', '300'),
('Rua José do Patrocínio', '03069-000', '150'),
('Rua Soledade', '03068-000', '1200'),
('Rua César Cava', '03067-000', '900'),
('Rua Condessa de Vimieiro', '03064-000', '500'),
('Rua Ermelino Matarazzo', '03066-000', '250'),
('Rua Luciana', '03065-000', '600'),
('Rua Alto da Serra', '03063-000', '700'),
('Avenida Celso Garcia', '03062-000', '3500'),
('Rua Sebastião de Lemos', '03061-000', '1000');
-- Cidade Lider
INSERT INTO LOGRADOURO (nome_logradouro, cep, numero_logradouro) VALUES
('Rua Maria Lúcia', '03871-000', '1500'),
('Rua José de Alencar', '03870-000', '2000'),
('Rua Campina do Sul', '03872-000', '2500'),
('Rua Joaquim Antônio', '03873-000', '3000'),
('Rua Padre Bento', '03874-000', '3500'),
('Rua João Mendes', '03875-000', '4000'),
('Rua São Gabriel', '03876-000', '4500'),
('Rua Nossa Senhora Aparecida', '03877-000', '5000'),
('Rua Elias Custódio', '03878-000', '5500'),
('Rua Doze de Outubro', '03879-000', '6000'),

-- Cidade Tiradentes
('Rua José Zanchi', '08470-000', '300'),
('Avenida São Miguel', '08471-000', '3500'),
('Rua das Flores', '08472-000', '400'),
('Rua Padre Bento', '08473-000', '4500'),
('Rua Inácio Monteiro', '08474-000', '500'),
('Rua Nove de Julho', '08475-000', '5500'),
('Rua dos Três Irmãos', '08476-000', '600'),
('Rua do Ouro', '08477-000', '6500'),
('Rua São João', '08478-000', '7000'),
('Rua Professor Joao Cordeiro', '08479-000', '7500'),

-- Guaianazes
('Rua José Benedito de Souza', '08400-000', '800'),
('Rua Nossa Senhora da Paz', '08401-000', '8500'),
('Avenida Rio das Pedras', '08402-000', '9000'),
('Rua São Francisco', '08403-000', '9500'),
('Rua São Pedro', '08404-000', '10000'),
('Rua do Centro', '08405-000', '10500'),
('Rua Maria de Lourdes', '08406-000', '11000'),
('Rua Armando Andrade', '08407-000', '11500'),
('Rua Santa Maria', '08408-000', '12000'),
('Rua Vale do Rio Doce', '08409-000', '12500'),

-- Iguatemi
('Rua da Paz', '03891-000', '250'),
('Rua São Luiz', '03892-000', '500'),
('Rua Antônio de Souza', '03893-000', '750'),
('Rua Santa Cruz', '03894-000', '1000'),
('Rua Vila Primavera', '03895-000', '1250'),
('Rua São José', '03896-000', '1500'),
('Rua Brasília', '03897-000', '1750'),
('Rua João Caxias', '03898-000', '2000'),
('Rua São João', '03899-000', '2250'),
('Rua São Francisco de Assis', '03900-000', '2500'),

-- Itaquera
('Rua Itaquera', '08210-000', '100'),
('Rua Planalto', '08211-000', '500'),
('Rua São José', '08212-000', '1000'),
('Rua dos Três Irmãos', '08213-000', '1500'),
('Avenida Aricanduva', '08214-000', '2000'),
('Rua São Miguel', '08215-000', '2500'),
('Rua João Ramalho', '08216-000', '3000'),
('Rua da Paz', '08217-000', '3500'),
('Rua Tijuco Preto', '08218-000', '4000'),
('Rua Alfredo Guedes', '08219-000', '4500'),

-- José Bonifácio
('Rua Antônio Padilha', '08420-000', '100'),
('Rua Nova", '08421-000', '500'),
('Rua Francisco Glicério', '08422-000', '1000'),
('Rua Primeiro de Maio', '08423-000', '1500'),
('Rua Tiradentes', '08424-000', '2000'),
('Rua São Francisco', '08425-000', '2500'),
('Rua Conde do Boa Vista', '08426-000', '3000'),
('Rua São João de Meriti', '08427-000', '3500'),
('Rua Santa Cecília', '08428-000', '4000'),
('Rua Joaquim de Oliveira', '08429-000', '4500'),

-- Parque do Carmo
('Rua Alfredo Pinto', '08430-000', '100'),
('Rua da Paz', '08431-000', '500'),
('Rua São Sebastião', '08432-000', '1000'),
('Rua Francisco Glicério', '08433-000', '1500'),
('Rua Santa Cecília', '08434-000', '2000'),
('Rua Alegria', '08435-000', '2500'),
('Rua Nove de Julho', '08436-000', '3000'),
('Rua São João', '08437-000', '3500'),
('Rua São Francisco de Assis', '08438-000', '4000'),
('Rua João de Freitas', '08439-000', '4500'),

-- São Rafael
('Rua São Pedro', '08440-000', '100'),
('Rua da Paz', '08441-000', '500'),
('Rua Francisco Glicério', '08442-000', '1000'),
('Rua Padre Bento', '08443-000', '1500'),
('Rua Monteiro Lobato', '08444-000', '2000'),
('Rua João Gomes', '08445-000', '2500'),
('Rua São Benedito', '08446-000', '3000'),
('Rua Sebastião de Lemos', '08447-000', '3500'),
('Rua Estrela do Mar', '08448-000', '4000'),
('Rua José de Freitas', '08449-000', '4500'),

-- São Mateus
('Rua São José', '08450-000', '100'),
('Rua Antônio Padilha', '08451-000', '500'),
('Rua do Carmo', '08452-000', '1000'),
('Rua Conde do Boa Vista', '08453-000', '1500'),
('Rua Vila Matilde', '08454-000', '2000'),
('Rua São Rafael', '08455-000', '2500'),
('Rua São Francisco', '08456-000', '3000'),
('Rua Pedro de Toledo', '08457-000', '3500'),
('Rua Antônia Gomes', '08458-000', '4000'),
('Rua São Miguel', '08459-000', '4500'),

-- Tatuapé
('Rua Celso Garcia', '03061-000', '100'),
('Rua Ataliba Leonel', '03062-000', '500'),
('Rua Doutor José de Oliveira Santos', '03063-000', '1000'),
('Rua do Carmo', '03064-000', '1500'),
('Rua Belém', '03065-000', '2000'),
('Rua Artur Alvim', '03066-000', '2500'),
('Rua Silveira Martins', '03067-000', '3000'),
('Rua Dona Júlia', '03068-000', '3500'),
('Rua Mariz e Barros', '03069-000', '4000'),
('Rua Souza Lima', '03070-000', '4500'),

-- Vila Formosa
('Rua Antônio Bento', '03071-000', '100'),
('Rua Santa Cruz', '03072-000', '500'),
('Rua São Paulo', '03073-000', '1000'),
('Rua Alexandre Dumas', '03074-000', '1500'),
('Rua Silva Jardim', '03075-000', '2000'),
('Rua Maria Luiza', '03076-000', '2500'),
('Rua São José', '03077-000', '3000'),
('Rua Menino Jesus', '03078-000', '3500'),
('Rua Sorocaba', '03079-000', '4000'),
('Rua Presidente Vargas', '03080-000', '4500'),

-- Vila Matilde
('Rua Ponte de Lima', '03081-000', '100'),
('Rua Vicente de Carvalho', '03082-000', '500'),
('Rua Afonso Pena', '03083-000', '1000'),
('Rua Perdigão', '03084-000', '1500'),
('Rua José Pimentel', '03085-000', '2000'),
('Rua Novo Mundo', '03086-000', '2500'),
('Rua São Vicente', '03087-000', '3000'),
('Rua Gonçalo de Carvalho', '03088-000', '3500'),
('Rua Cachoeira do Sul', '03089-000', '4000'),
('Rua São Francisco', '03090-000', '4500');

INSERT INTO LOCAL (id_bairro, id_logradouro) VALUES
(1, 1), -- Aricanduva, Rua Candeias
(1, 2), -- Aricanduva, Avenida Inconfidência Mineira
(2, 3); -- Artur Alvim, Rua Outro Exemplo

-- Inserção de marcas de celular
INSERT INTO MARCA_CELULAR (nome_marca) VALUES
('Samsung'),
('Motorola'),
('Apple');

-- Inserção de ocorrências
INSERT INTO OCORRÊNCIA (id_local, id_marca, descricao, data_inicio, quantidade_objeto) VALUES
(1, 1, 'Furto de celular Samsung', '2023-10-01 10:00:00', 1),  -- Aricanduva, Rua Candeias, Samsung
(1, 2, 'Roubo de celular Motorola', '2023-10-02 14:00:00', 1), -- Aricanduva, Rua Candeias, Motorola
(2, 1, 'Furto de celular Samsung', '2023-10-03 09:00:00', 2), -- Aricanduva, Avenida Inconfidência Mineira, Samsung
(3, 3, 'Roubo de celular Apple', '2023-10-04 16:00:00', 1);   -- Artur Alvim, Rua Outro Exemplo, Apple

-- Consulta 1: Marcas mais roubadas por bairro
SELECT 
    b.nome_bairro, 
    m.nome_marca, 
    COUNT(*) as total_ocorrencias,
    RANK() OVER (PARTITION BY b.nome_bairro ORDER BY COUNT(*) DESC) as ranking
FROM OCORRÊNCIA o
JOIN LOCAL l ON o.id_local = l.id_local
JOIN BAIRRO b ON l.id_bairro = b.id_bairro
JOIN MARCA_CELULAR m ON o.id_marca = m.id_marca
GROUP BY b.nome_bairro, m.nome_marca
ORDER BY b.nome_bairro, total_ocorrencias DESC;

-- Consulta 2: Marcas mais roubadas por logradouro em um bairro específico (exemplo: Aricanduva)
SELECT 
    b.nome_bairro, 
    log.nome_logradouro, 
    m.nome_marca, 
    COUNT(*) as total_ocorrencias,
    RANK() OVER (PARTITION BY log.nome_logradouro ORDER BY COUNT(*) DESC) as ranking
FROM OCORRÊNCIA o
JOIN LOCAL l ON o.id_local = l.id_local
JOIN BAIRRO b ON l.id_bairro = b.id_bairro
JOIN LOGRADOURO log ON l.id_logradouro = log.id_logradouro
JOIN MARCA_CELULAR m ON o.id_marca = m.id_marca
WHERE b.nome_bairro = 'Aricanduva'
GROUP BY b.nome_bairro, log.nome_logradouro, m.nome_marca
ORDER BY log.nome_logradouro, total_ocorrencias DESC;