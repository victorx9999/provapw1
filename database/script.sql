CREATE DATABASE egressos;
USE egressos;

CREATE TABLE usuario (user varchar(30), pass varchar(30));
INSERT INTO usuario values ('alamo', '12345');
INSERT INTO usuario values ('luiz', '123');
INSERT INTO usuario values ('teste', 'teste');
INSERT INTO usuario values ('lixo', 'lixo');

CREATE TABLE egresso (
  id varchar(30),
  nome varchar(30),
  email varchar(50),
  linkedin varchar(80),
  curso varchar(15),
  campus varchar(15)
);

INSERT INTO egresso values ('20062370361', 'Aline Donato', '', 'https://www.linkedin.com/in/alinedonato/', 'cstsi', 'ifpb-jp');
INSERT INTO egresso values ('20052370067', 'Alana Morais', 'alana_mm@hotmail.com', 'https://www.linkedin.com/in/alana-morais-b6b0a195/', 'cstsi', 'ifpb-jp');
INSERT INTO egresso values ('20052370342', 'Alisson Sena', 'alisson.sena@gmail.com', 'https://www.linkedin.com/in/alisson-sena/', 'cstsi', 'ifpb-jp');
INSERT INTO egresso values ('20051370225', 'André Vinagre', 'andrenvinagre@gmail.com', 'https://www.linkedin.com/in/andre-vinagre/', 'cstsi', 'ifpb-jp');
INSERT INTO egresso values ('20041037087', 'Andreza Vieira', 'andreza_sv@yahoo.com.br', 'https://www.linkedin.com/in/andrezavieira/', 'cstsi', 'ifpb-jp');
INSERT INTO egresso values ('20061370422', 'Anna Clara Nobrega', 'acrnobrega@hotmail.com','https://www.linkedin.com/in/anna-clara-nobrega/','cstsi','ifpb-jp');
INSERT INTO egresso values ('20061370040','Andréa Bezerra','dsi.andrea@hotmail.com','https://www.linkedin.com/in/andrea-fernanda-478a2660/','cstsi','ifpb-jp');
INSERT INTO egresso values ('20112370505','Alex Martins','alexmbezerrajp@gmail.com','https://www.linkedin.com/in/alex-martins-2b480023/','cstsi','ifpb-jp');
INSERT INTO egresso values '(20071370107','Ângelo Negreiros','angelolvnegreiros@hotmail','','cstsi','ifpb-jp');
INSERT INTO egresso values ('20121370474','Alexandre Dias','dias.jbr@gmail.com','https://www.linkedin.com/in/alexandre-dias-833a306a/','cstsi','ifpb-jp');
INSERT INTO egresso values ('20042037154','Alline Morais','allinemorais@gmail.com','https://www.linkedin.com/in/alline-morais-psm-pspo-50002094/','cstsi','ifpb-jp');