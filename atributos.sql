/* insert into <nome> opcional(ordem) values(entrada)cria dados para atributos 
  opcional caso nao usado segue a ordem padrao*/
insert into categoria (descricao) values ('comidas');

/*altera a descricao do id 2 para sucos*/
update categoria set descricao = 'sucos' where id = 2;

/*deleta todos os dados da fila com id 3*/
delete from categoria where id = 3;

/*Seleção*/
select * from categoria;                    /* Seleciona tudo de categoria*/
select descricao from categoria;            /* Seleciona apenas descrico de categoria*/
select * from categoria order by id         /* mostra por id ordenado*/ 
select * from categoria order by id desc    /* mostra por id ordenado decresente*/ 
/* alguns exemplos das opeções a seguir  =,<,>,<=,>=,!=,not,like,between,in,is null,exists,year,month,day,and,or */
select * from categoria where id = 5                    /* mostra apens linha que contem id 5 */ 
select * from categoria where id between = 1 and 4      /* mostra entre o id 1 ate 4*/  
select * from categoria where id is not null            /* mostra apenas os nao nulos */  
select * from categoria where descricao like '%C'       /* C% começa com 'c' e termina com qualquer coisa ou coisa nenhuma c_ termina com alguma coisa*/ 
select conut(*) from categoria                          /*conta quantos linhas tem*/  
select avg(*) from categoria                            /*media das linhas*/ 
select sum(*) from categoria                            /**/ 
select min(*) from categoria                            /*valor minimo da linha*/ 
select max(*) from categoria                            /*valor maximo da linha*/
/*depois de categoria poderia conter 'left outer' ou 'right outer'*/
select * from produto inner join categoria on produto.categoria_id = categoria.id  /* mostra os atributos de produto mais id de categoria */
	 

