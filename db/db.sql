CREATE TABLE solicitacoes_pendentes_comunicacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    texto VARCHAR(1000) NOT NULL,
    destinatario VARCHAR(255) NOT NULL,
    data DATE NOT NULL,
    autor VARCHAR(255) NOT NULL,
    status ENUM('pendente', 'aprovado', 'rejeitado') DEFAULT 'pendente',
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE solicitacoes_pendentes_eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_do_evento VARCHAR(30) NOT NULL,
    descricao_do_evento VARCHAR(200) NOT NULL,
    data DATE NOT NULL,
    local VARCHAR(255) NOT NULL,
    midia VARCHAR(500) NOT NULL,
    horario_de_inicio TIME,
    material_de_divulgacao_midia VARCHAR(255) NOT NULL,
    canais_de_divulgacao VARCHAR(255) NOT NULL,
    executor VARCHAR(30) NOT NULL,
    publico_alvo VARCHAR(255) NOT NULL,
    curso_e_semestre VARCHAR(255) NOT NULL,
    custo VARCHAR(20) NOT NULL,
    observacoes TEXT,
    responsavel_do_evento VARCHAR(255) NOT NULL,
    status ENUM('pendente', 'aprovado', 'rejeitado') DEFAULT 'pendente',
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE solicitacoes_pendentes_pos_eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_do_evento VARCHAR(30) NOT NULL,
    midia VARCHAR(500) NOT NULL,
    feedback TEXT,
    agradecimentos TEXT,
    status ENUM('pendente', 'aprovado', 'rejeitado') DEFAULT 'pendente',
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE solicitacoes_pendentes_calendario_academico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data DATE NOT NULL,
    materia VARCHAR(255) NOT NULL,
    semestre VARCHAR(50) NOT NULL,
    curso VARCHAR(50) NOT NULL,
    educador VARCHAR(100) NOT NULL,
    sala VARCHAR(100) NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    status_evento VARCHAR(50) NOT NULL,
    tipo VARCHAR(50),
    frequencia VARCHAR(50),
    status ENUM('pendente', 'aprovado', 'rejeitado') DEFAULT 'pendente', 
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE pre_eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_do_evento VARCHAR(30) NOT NULL,
    descricao_do_evento VARCHAR(200) NOT NULL,
    data DATE NOT NULL,
    local VARCHAR(255) NOT NULL,
    midia VARCHAR(500) NOT NULL,
    horario_de_inicio TIME,
    material_de_divulgacao_midia VARCHAR(255) NOT NULL,
    canais_de_divulgacao VARCHAR(255) NOT NULL,
    executor VARCHAR(30) NOT NULL,
    publico_alvo VARCHAR(255) NOT NULL,
    curso_e_semestre VARCHAR(255) NOT NULL,
    custo VARCHAR(20) NOT NULL,
    observacoes TEXT,
    responsavel_do_evento VARCHAR(255) NOT NULL,
    status_ev ENUM('proximos_eventos', 'evento_presente', 'pos_eventos') DEFAULT 'proximos_eventos',
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE pos_eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_do_evento VARCHAR(30) NOT NULL,
    midia VARCHAR(500) NOT NULL,
    feedback TEXT,
    agradecimentos TEXT,
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE calendario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data DATE NOT NULL,
    materia VARCHAR(255) NOT NULL,
    semestre VARCHAR(50) NOT NULL,
    curso VARCHAR(50) NOT NULL,
    educador VARCHAR(100) NOT NULL,
    sala VARCHAR(100) NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    status_evento VARCHAR(50) NOT NULL,
    tipo VARCHAR(50),
    frequencia VARCHAR(50),
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE comunicacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    texto VARCHAR(1000) NOT NULL,
    destinatario VARCHAR(255) NOT NULL,
    data DATE NOT NULL,
    autor VARCHAR(255) NOT NULL,
    status_ev ENUM('proximos_eventos', 'evento_presente', 'pos_eventos') DEFAULT 'proximos_eventos',
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Ideia de comunicados (exceto em caso de emergência) serem semanais, então não passam mais de uma semana no site.
-- Título - 30
-- Descrição - 50
-- Destinatário - 50
-- Datas - 7 dias por comunicado (exceto em caso de emergência)
-- Texto - 500
-- Autor - 30