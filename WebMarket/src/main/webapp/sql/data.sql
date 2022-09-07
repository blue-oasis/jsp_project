create table if not exists product(
	p_id varchar(10) not null,
	p_name varchar(10),
	p_unitPrice integer,
	p_description text,
	p_category varchar(20),
	p_manufacturer varchar(20),
	p_unitsInstock Long,
	p_condition varchar(20),
	p_filename varchar(20),
	primary key (p_id)) default charset=utf8;

desc product;

insert into product values('P1234', 'iPhone 6s', '800000', '4.7-inch, 1334x750 Renina HD dispaly, 8-megapixel iSight Camera',
'Smart Phone', 'Apple', 1000, 'new', 'P1234.png');
insert into product values('P1235', 'LG gram', '1500000', '13.3-inch, IPS LED dispaly, 5rd Generation Intel Core processors',
'Notebook', 'LG', 1000, 'new', 'P1235.png');
insert into product values('P1236', 'Galaxy Tab', '900000', '212.8*125.6*6.6mm, Super AMOLED display, octa-Core processor',
'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

select * from product;

alter table product modify p_name varchar(20);
update product set p_name='Galaxy Tab S' where p_name='Galaxy Tab';