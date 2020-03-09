/*cria tabela exc*/
create table exc();

/*cria tabela com seus atributos */
create table categoria(
    num int,                    /* num tem 8 bytes de alocação de numero */
    id serial primary key,      /* chave primaria */
    sozinho serial,             /* incrementa sozinho*/
    status int default 1,       /* padrão igual 1*/
    idade int not null,         /* esse campo nao pode ser nulo*/
    descricao varchar(100),     /* descricao pode ter 100 palavras */ 
    dia date,                   /* dia possui data ano-mes-dia */ 
    horas time,                 /* horas possui hora */ 
    ano year,                   /* ano posui ano */ 
    texto text,                 /* texto possui texto */ 
    casado enum('s','n'),       /* delimita entre escolher s ou n */  
    tamanho decimal(1,2),       /* 1 numero de campo, 2 numero depois da virgula */ 
);

/*adiciona uma lix em categoria*/
alter table categoria add lix int; 

/*remove lix, num, sozinho, idade, dia, horas, ano, texto, casado, tamanho de categoria*/
alter table categoria drop lix, num, sozinho, idade, dia, horas, ano, texto, casado, tamanho;

/*na linha 3 é criado uma chave primaria e na linha 9 uma chave estrangeira*/
create table produto(
	id serial primary key,
    descricao varchar(100) not null,
    qtd integer not null,
    valor decimal(10,2) not null,
    categoria_id integer not null,
    status integer default 1,
    foreign key (categoria_id) references categoria (id)
);

/*deleta tabela exc*/
drop table exc; 

/*nome das tabelas ja criados*/
show tables;


