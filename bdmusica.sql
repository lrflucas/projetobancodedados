create database bdmusica

create table usuario(
	codigo serial primary key,
	nome varchar(100),
	pais varchar(50),
	data_nascimento date,
	email varchar(50)
);

create table artista(
	codigo serial primary key,
	nome varchar(100),
	pais varchar(50),
	codigo_genero int references genero(codigo) on delete cascade,
	codigo_gravadora int references gravadora(codigo) on delete cascade,
	biografia varchar(300)
);

drop table artista cascade;

create table faixa(
	codigo serial primary key,
	titulo varchar(100),
	tempo time,
	codigo_album int references album(codigo) on delete cascade,
	codigo_artista int references artista(codigo) on delete cascade,
	codigo_genero int references genero(codigo) on delete cascade,
	data_lancamento date
);

create table genero(
	codigo serial primary key,
	nome varchar(25)
);

create table album(
	codigo serial primary key,
	titulo varchar(100),
	data_lancamento date,
	tempo time,
	codigo_genero int references genero(codigo) on delete cascade,
	codigo_artista int references artista(codigo) on delete cascade
);

create table gravadora(
	codigo serial primary key,
	nome varchar(50),
	pais varchar(50)
);



insert into usuario (nome, pais, data_nascimento, email) values ('Lucas Costa Santos', 'Brasil', '1985-04-15', 'lucas.costa@email.com');
insert into usuario (nome, pais, data_nascimento, email) values ('Mariana Almeida Souza', 'Brasil', '2000-03-08', 'mariana.almeida@email.com');
insert into usuario (nome, pais, data_nascimento, email) values ('Gabriel Mendes Ribeiro', 'Canadá', '1997-10-12', 'gabriel.mendes@email.com');
insert into usuario (nome, pais, data_nascimento, email) values ('Ana Beatriz Oliveira', 'Brasil', '1992-11-22', 'ana.oliveira@email.com');
insert into usuario (nome, pais, data_nascimento, email) values ('Renato Ferreira Carvalho', 'Austrália', '2004-01-05', 'renato.ferreira@email.com');
insert into usuario (nome, pais, data_nascimento, email) values ('Isabela Rocha Lima', 'Brasil', '1988-07-30', 'isabela.rocha@email.com');




insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Twenty One Pilots', 'EUA', 4, 1, 'É uma dupla formada por Tyler Joseph e Josh Dun, conhecida por misturar gêneros como pop, rock, hip-hop e eletrônica. Ganhou destaque com hits como Stressed Out, Heathens e Ride. Suas letras abordam temas profundos, e sua estética criativa conquistou fãs globalmente.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('The Weeknd', 'Canadá', 1, 2, 'Cantor e compositor conhecido por seu estilo único, misturando R&B, pop e eletrônica. Com sucessos como Blinding Lights e Starboy, ele se destacou pela voz inconfundível e pela fusão de temas sombrios e românticos, conquistando prêmios e uma enorme base de fãs.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Metro Boomin', 'EUA', 3, 2, 'É um produtor musical e DJ, conhecido por seu impacto no hip-hop moderno. Trabalhou com artistas como Future, Kendrick Lamar, Kanye West e 21 Savage. Seus beats característicos e produção de trap lhe renderam reconhecimento global, com álbuns como Not All Heroes Wear Capes e Savage Mode II.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Kendrick Lamar', 'EUA', 3, 2, 'É um rapper e compositor, considerado um dos maiores da sua geração. Conhecido por suas letras profundas sobre questões sociais e pessoais, ele alcançou sucesso com álbuns como good kid, m.A.A.d city e To Pimp a Butterfly, recebendo múltiplos prêmios, incluindo o Pulitzer.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Emicida', 'Brasil', 3, 3, 'É um rapper e compositor, destacado por suas letras que abordam questões sociais, políticas e culturais. Com álbuns como O Glorioso Retorno de Quem Nunca Esteve Aqui e Amarelo, ele se tornou uma voz importante no cenário musical brasileiro, unindo rap com elementos da música popular.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Rael', 'Brasil', 3, 3, 'É um rapper e cantor, conhecido por suas letras que misturam rap, reggae e MPB. Aborda temas como a realidade urbana, a superação e questões sociais, conquistando reconhecimento tanto no Brasil quanto internacionalmente.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Criolo', 'Brasil', 3, 3, 'É um cantor e rapper, conhecido por seu estilo único que mistura rap, MPB, samba e outros gêneros. Com álbuns como Nó na Orelha e Espiral de Ilusão, ele aborda temas sociais, políticos e existenciais, conquistando grande reconhecimento no Brasil e no exterior.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('O Rappa', 'Brasil', 6, 1, 'Foi uma banda que misturou rock, reggae, rap e música popular brasileira. Formada nos anos 90, a banda ficou conhecida por suas letras que abordam questões sociais e políticas. Hits como Pescador de Ilusões e Minha Alma marcaram sua trajetória até o fim das atividades em 2018.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Post Malone', 'EUA', 3, 2, 'Cantor, compositor e rapper, conhecido por misturar rap, rock e pop em seu som. Com sucessos como Rockstar e Circles, ele conquistou uma enorme base de fãs com sua voz distinta, estilo único e letras que abordam temas de amor, fama e superação.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Linkin Park', 'EUA', 2, 1, 'É uma banda que revolucionou o nu metal, misturando rock, rap e eletrônica. Liderada por Chester Bennington e Mike Shinoda, alcançou sucesso mundial com álbuns como Hybrid Theory e Meteora. Hits como In the End marcaram gerações, com letras intensas e som inovador.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Bruno Mars', 'EUA', 1, 1, 'É um cantor, compositor e produtor, conhecido por sua voz poderosa e performances cativantes. Mistura pop, funk, R&B e soul em hits como Uptown Funk e Just the Way You Are. Com múltiplos prêmios Grammy, é um dos artistas mais influentes da música contemporânea.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Baco Exu do Blues', 'Brasil', 3, 3, 'É um cantor e compositor, conhecido por suas letras intensas que abordam racismo, amor e identidade. Ele mistura rap, R&B e MPB, consolidando-se como uma voz inovadora e premiada na música nacional.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Matuê', 'Brasil', 3, 4, 'É um rapper e cantor, destaque no trap nacional. Com hits como Kenny G e Máquina do Tempo, ele combina melodias cativantes e letras que falam de sucesso, desafios e liberdade. Fundador da 30PRAUM, Matuê é referência no gênero, quebrando recordes e conquistando milhões de fãs.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Panic! at the Disco', 'EUA', 4, 1, 'Foi uma banda liderada por Brendon Urie, conhecida por misturar pop punk, rock alternativo e pop. Com sucessos como I Write Sins Not Tragedies e High Hopes, a banda ganhou fama por sua criatividade e performances teatrais, encerrando atividades em 2023.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Los Hermanos', 'Brasil', 2, 3, 'É uma banda que mistura rock alternativo, MPB e samba. Ganhou destaque com o hit Anna Júlia e evoluiu para um som mais introspectivo em álbuns como Ventura. Suas letras poéticas e arranjos marcantes os tornaram referência no cenário musical nacional.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Caetano Veloso', 'Brasil', 5, 3, 'É um dos maiores nomes da música brasileira, conhecido por sua versatilidade e inovação. Líder do movimento Tropicália, mistura MPB, rock e poesia em sua obra. Com clássicos como Alegria, Alegria e Sampa, sua influência atravessa gerações, consolidando-o como ícone cultural.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Djavan', 'Brasil', 5, 3, 'É um cantor, compositor e instrumentista, conhecido por sua habilidade em misturar MPB, jazz, samba e pop. Com uma carreira marcada por sucessos como Flor de Lis e Oceano, suas letras poéticas e melodias sofisticadas fazem dele um dos grandes nomes da música brasileira.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Legião Urbana', 'Brasil', 2, 3, 'Foi uma banda de rock brasileira liderada por Renato Russo, icônica nos anos 80 e 90. Com letras poéticas e reflexivas, abordava temas como amor, política e sociedade. Álbuns como Dois e hits como Tempo Perdido e Faroeste Caboclo marcaram gerações. Encerraram atividades em 1996.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Skank', 'Brasil', 2, 3, 'É uma banda brasileira que mistura rock, pop e reggae, formada em 1991. Com sucessos como Garota Nacional e Vou Deixar, conquistou o público com letras cativantes e arranjos marcantes. Sua trajetória influenciou o cenário musical brasileiro, encerrando atividades em 2023 com uma turnê de despedida.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Kanye West', 'EUA', 3, 2, 'É um rapper, produtor e designer americano, um dos artistas mais influentes da música. Com álbuns icônicos como The College Dropout e My Beautiful Dark Twisted Fantasy, mistura rap, soul e eletrônica. Polêmico e visionário, também é conhecido por sua influência na moda e cultura pop.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('BaianaSystem', 'Brasil', 6, 5, 'É uma banda brasileira que mistura música eletrônica, reggae, samba, rock e ritmos afro-brasileiros. Com letras de protesto e temas sociais, seu som inovador conquistou destaque no cenário musical, levando a música baiana para novas fronteiras.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Ponto de Equilíbrio', 'Brasil', 6, 6, 'Banda de reggae formada no Rio de Janeiro. Conhecida por suas letras de conscientização social e positiva, mistura reggae com influências de ska e música popular brasileira.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Cidade Negra', 'Brasil', 6, 3, 'Banda brasileira de reggae formada nos anos 80. Com letras que abordam temas sociais e políticos, a banda mistura reggae com elementos de MPB e rock. Sucessos como Firmamento e Girassol a consolidaram como um dos principais nomes do reggae no Brasil.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Oasis', 'Reino Unido', 2, 3, 'É uma banda britânica de rock formada nos anos 90, liderada pelos irmãos Liam e Noel Gallagher. A banda foi um dos maiores nomes do Britpop, com suas letras icônicas e energia contagiante. Encerrou atividades em 2009, mas retornará em 2025');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Coldplay', 'Reino Unido', 2, 7, 'Banda britânica de pop rock formada em 1996, liderada por Chris Martin. Conhecida por hits como Yellow, Fix You e Viva la Vida, mistura melodias emocionantes com letras profundas. Com uma carreira de sucesso global, é aclamada por suas performances marcantes e inovação musical.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Maroon 5', 'EUA', 1, 2, 'Banda americana de pop rock formada em 1994, liderada por Adam Levine. Com hits como Sugar, She Will Be Loved e Moves Like Jagger, conquistou fama global por suas melodias cativantes e letras românticas. A banda é referência na música pop, com prêmios e turnês pelo mundo.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Black Alien', 'Brasil', 3, 3, 'Rapper e compositor brasileiro, conhecido por suas letras sofisticadas que misturam rap, reggae e MPB. Ex-integrante do Planet Hemp, destacou-se em carreira solo com álbuns como Babylon By Gus. Suas músicas abordam temas como superação, sociedade e espiritualidade, marcando o hip-hop nacional.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Natiruts', 'Brasil', 6, 3, 'Banda brasileira de reggae formada em 1996, conhecida por suas letras positivas e mensagens de amor e paz. Com sucessos como Sorri, Sou Rei e Quero Ser Feliz Também, mistura reggae com influências brasileiras, consolidando-se como um dos principais nomes do gênero no Brasil.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Radiohead', 'Reino Unido', 4, 8, 'Banda britânica de rock alternativo formada em 1985, liderada por Thom Yorke. Conhecida por sua constante inovação musical, lançou álbuns icônicos como OK Computer e Kid A. Suas músicas exploram temas profundos com sonoridades únicas, tornando-a uma das bandas mais influentes da história.');
insert into artista (nome, pais, codigo_genero, codigo_gravadora, biografia) values ('Tyler, The Creator', 'EUA', 3, 3, 'É um rapper, produtor e designer americano, conhecido por sua criatividade e estilo único. Fundador do coletivo Odd Future, destacou-se com álbuns como Igor e Call Me If You Get Lost, que exploram temas pessoais e inovação sonora, consolidando-o como um ícone cultural contemporâneo.');




insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Bandito', '00:05:30', 2, 1, 4, '2018-10-05');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Overflow', '00:03:31', 3, 10, 2, '2024-11-15');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Smithereens', '00:02:57', 2, 1, 4, '2018-10-05');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Backslide', '00:03:00', 1, 1, 4, '2024-04-25');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('No Surprises', '00:03:49', 14, 31, 4, '1997-05-21');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Nóiz', '00:05:21', 7, 5, 3, '2013-08-21');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Bleed It Out', '00:02:44', 8, 10, 2, '2007-06-30');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Money Trees', '00:06:26', 10, 4, 3, '2012-10-22');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('See You Again (feat. Kali Uchis)', '00:03:00', 12, 32, 10, '2017-07-21');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Navigating', '00:03:43', 1, 1, 2, '2024-05-24');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('AmarElo (feat. Majur, Pabllo Vittar)', '00:05:21', 11, 5, 3, '2019-06-25');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Semi-Automatic', '00:04:13', 4, 1, 1, '2013-01-08');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Die Hard', '00:03:59', 15, 4, 3, '2022-05-13');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Chunky', '00:03:06', 16, 11, 10, '2016-10-16');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Out of Time', '00:03:34', 17, 2, 10, '2022-01-07');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Heavydirtysoul', '00:03:54', 5, 1, 2, '2015-05-17');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('The Emptiness Machine', '00:03:10', 3, 10, 2, '2024-09-05');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Cut the Bridge', '00:03:48', 3, 10, 2, '2024-11-15');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Heavy Is the Crown', '00:02:47', 3, 10, 2, '2024-09-24');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Over Each Other', '00:02:50', 3, 10, 2, '2024-10-24');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Two Faced', '00:03:03', 3, 10, 2, '2024-11-13');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Stained', '00:03:05', 3, 10, 2, '2024-11-15');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('IGYEIH', '00:03:29', 3, 10, 2, '2024-11-15');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Leave The Door Open', '00:04:02', 19, 11, 10, '2021-03-05');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Fly As Me', '00:03:39', 19, 11, 10, '2021-11-12');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Smokin Out The Window', '00:03:17', 19, 11, 10, '2021-11-05');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('squabble up', '00:02:37', 18, 4, 3, '2024-11-22');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('luther (with sza)', '00:02:57', 18, 4, 10, '2024-11-22');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('reincarnated', '00:04:35', 18, 4, 3, '2024-11-22');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('heart pt. 6', '00:04:52', 18, 4, 3, '2024-11-22');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Girassol (Acústico)', '00:04:09', 24, 25, 6, '2002-12-02');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Creep', '00:03:58', 28, 31, 2, '1992-09-21');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('I Write Sins Not Tragedies', '00:03:05', 29, 14, 2, '2006-02-27');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Anna Júlia', '00:03:32', 30, 15, 2, '1999-06-05');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Quem Sabe', '00:02:32', 30, 15, 2, '1999-06-05');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Pierrot', '00:02:47', 30, 15, 2, '1999-06-05');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Redecorate', '00:04:05', 6, 1, 4, '2021-05-21');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Not Coming Home', '00:04:21', 9, 28, 2, '2002-06-25');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('feelslikeimfallinginlove', '00:03:56', 13, 27, 1, '2024-06-21');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Creepin (with The Weeknd & 21 Savage)', '00:03:41', 20, 3, 10, '2022-12-02');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Rouxinol', '00:03:13', 21, 6, 5, '2016-09-20');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Subirusdoistiozin', '00:03:33', 22, 7, 3, '2010-12-20');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Anjos (Pra quem tem fé)', '00:06:59', 23, 8, 2, '2013-05-13');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Sunflower - Spider-Man: Into the Spider-Verse', '00:02:37', 25, 9, 10, '2018-10-18');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Me Desculpa Jay Z', '00:03:32', 26, 12, 3, '2018-11-23');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Máquina do Tempo', '00:03:50', 27, 13, 3, '2020-09-10');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Sozinho - Ao Vivo', '00:03:10', 31, 16, 5, '1998-01-01');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Se...', '00:04:51', 32, 17, 5, '1992-03-25');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Eduardo e Mônica', '00:04:31', 33, 18, 5, '1986-07-20');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Vamos Fugir', '00:04:00', 34, 19, 2, '2004-10-01');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Saint Pablo', '00:06:12', 35, 20, 3, '2016-06-14');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Homecoming', '00:03:23', 36, 20, 3, '2007-09-11');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Lucro (Descomprimindo)', '00:04:06', 37, 21, 5, '2016-01-26');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('O Que Eu Vejo', '00:06:16', 38, 24, 6, '2013-12-10');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Querem Meu Sangue (The Harder They Come)', '00:03:21', 39, 25, 6, '1994-02-26');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Dont Look Back in Anger', '00:04:49', 40, 26, 2, '1995-10-02');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Babylon By Gus', '00:04:16', 41, 29, 3, '2004-09-08');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('Quero Ser Feliz Também - Ao Vivo', '00:03:34', 42, 30, 6, '2012-09-17');
insert into faixa (titulo, tempo, codigo_album, codigo_artista, codigo_genero, data_lancamento) values ('', '', , , , '');




insert into genero (nome) values ('Pop');
insert into genero (nome) values ('Rock');
insert into genero (nome) values ('Rap/Hip-hop');
insert into genero (nome) values ('Alternativa');
insert into genero (nome) values ('MPB');
insert into genero (nome) values ('Reggae');
insert into genero (nome) values ('EDM');
insert into genero (nome) values ('Forró');
insert into genero (nome) values ('Funk');
insert into genero (nome) values ('R&B');




insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Clancy', '2024-05-24', '00:47:18', 4, 1);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Trench', '2018-10-05', '00:56:09', 4, 1);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('From Zero', '2024-11-15', '00:31:58', 2, 10);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Vessel', '2013-01-08', '00:47:49', 4, 1);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Blurryface', '2015-05-15', '00:52:23', 4, 1);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Scaled And Icy', '2021-05-21', '00:37:42', 4, 1);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('O Glorioso Retorno de Quem Nunca Esteve Aqui', '2013-08-21', '00:51:41', 3, 5);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Minutes to Midnight', '2007-05-14', '00:57:24', 2, 10);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Songs About Jane', '2002-06-25', '00:45:59', 2, 28);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('good kid, m.A.A.d city', '2012-10-22', '01:17:59', 3, 4);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('AmarElo', '2019-10-30', '00:48:47', 3, 5);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Flower Boy', '2017-07-21', '00:46:39', 3, 32);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Moon Music', '2024-10-04', '00:43:56', 1, 27);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('OK Computer', '1997-05-21', '00:53:41', 4, 31);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Mr. Morale & The Big Steppers', '2022-05-13', '01:18:37', 3, 4);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('24K Magic', '2016-11-17', '00:33:32', 10, 11);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Dawn FM', '2022-01-07', '00:51:49', 1, 2);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('GNX', '2024-11-22', '00:44:20', 3, 4);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('An Evening With Silk Sonic', '2021-11-12', '00:36:26', 10, 11);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('HEROES & VILLAINS', '2022-12-02', '00:48:04', 3, 3);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Coisas do Meu Imaginário', '2016-11-11', '00:39:06', 3, 6);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Nó na Orelha', '2011-12-09', '00:42:36', 3, 7);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Nunca Tem Fim (Standard)', '2013-08-15', '00:53:23', 2, 8);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Acústico Cidade Negra', '2002-12-02', '01:05:34', 6, 25);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Hollywoods Bleeding', '2019-09-06', '00:51:04', 3, 9);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Bluesman', '2018-11-23', '00:30:24', 3, 12);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Máquina do Tempo', '2020-09-10', '00:19:32', 3, 13);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Pablo Honey', '1993-02-22', '00:42:15', 2, 31);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('A Fever You Cant Sweat Out', '2005-09-27', '00:39:50', 2, 14);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Los Hermanos', '1999-06-05', '00:36:44', 2, 15);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Prenda Minha', '1998-01-01', '01:03:00', 5, 16);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Coisa de Acender', '1992-03-25', '00:40:52', 5, 17);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Dois', '1986-01-01', '00:47:01', 2, 18);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Radiola', '2004-10-01', '00:54:59', 2, 19);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('The Life Of Pablo', '2016-06-10', '01:06:00', 3, 20);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Graduation', '2007-09-11', '00:54:29', 3, 20);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Duas Cidades', '2016-09-01', '00:42:57', 5, 21);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Dia Após Dia Lutando', '2013-12-10', '01:14:00', 6, 24);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Sobre Todas As Forças', '1994-02-26', '00:38:04', 6, 25);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('(Whats The Story) Morning Glory?', '1995-10-02', '02:49:00', 2, 26);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Babylon By Gus Vol. 1 - o Ano do Macaco', '2004-09-08', '00:46:23', 3, 29);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('Natiruts Acústico no Rio de Janeiro (Ao Vivo)', '2012-09-18', '01:21:00', 6, 30);
insert into album (titulo, data_lancamento, tempo, codigo_genero, codigo_artista) values ('', '', '', , );



insert into gravadora (nome, pais) values ('Warner Music', 'EUA');
insert into gravadora (nome, pais) values ('Universal Music', 'EUA');
insert into gravadora (nome, pais) values ('Sony Music', 'EUA');
insert into gravadora (nome, pais) values ('30PRAUM', 'Brasil');
insert into gravadora (nome, pais) values ('Máquina de Louco', 'Brasil');
insert into gravadora (nome, pais) values ('Som Livre', 'Brasil');
insert into gravadora (nome, pais) values ('Parlophone Records', 'Reino Unido');
insert into gravadora (nome, pais) values ('XL Recordings', 'Reino Unido');




select * from usuario;

select * from genero;

select * from gravadora;

select * from artista;

select * from album;

select * from faixa;


select
	art.codigo as codigo_artista,
	art.nome,
	art.pais,
	alb.titulo as album,
	alb.tempo,
	alb.data_lancamento
from
	artista art
join
	album alb on art.codigo = alb.codigo_artista;


select
	art.codigo as codigo_artista,
	art.nome,
	art.pais as pais_artista,
	grav.nome as gravadora,
	grav.pais as pais_gravadora
from
	gravadora grav
join
	artista art on grav.codigo = art.codigo_gravadora; 
	

select
	alb.codigo as codigo_album,
	alb.titulo as album,
	alb.tempo,
	f.titulo,
	f.tempo as tempo_musica
from
	album alb
join
	faixa f on alb.codigo = f.codigo_album;