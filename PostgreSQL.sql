CREATE TABLE sintomas( 
tontura VARCHAR(10),
demaio VARCHAR(5)NOT NULL,
cansaco VARCHAR(20),
fraqueza_PK VARCHAR(30)NOT NULL,
PRIMARY KEY(fraqueza_PK)
)
CREATE TABLE usuario(
identidade_PK VARCHAR(1)not NULL,
idade INT,
sexo VARCHAR(1),
doencacronica VARCHAR(2)NOT NULL,
localicacaon VARCHAR(50)NOT NULL,
medicacaocontrolada VARCHAR(20) not NULL,
pesocorporal VARCHAR(6),
fraqueza_FK VARCHAR(5),
PRIMARY KEY(identidade_PK),
FOREIGN key(fraqueza_FK) REFERENCES sintomas(fraqueza_PK)
)
create table hospital(
servicodetransporte VARCHAR(5),
dados_do_usuario_PK VARCHAR(100) NOT NULL,
acompanhamento VARCHAR(10) NOT NULL,
identidade_FK VARCHAR(1) NOT NULL,
PRIMARY KEY(dados_do_usuario_PK),
FOREIGN KEY(identidade_FK) REFERENCES usuario(identidade_PK)
)
create table endocrinologista(
nome VARCHAR(15) NOT NULL,
especialidade VARCHAR(20),
CRM_PK INT NOT NULL,
consultorio VARCHAR(1) NOT NULL,
prescricao_FK VARCHAR(50),
Primary key(CRM_PK),
foreign key(prescricao_FK) references hospital(dados_do_usuario_PK)
)