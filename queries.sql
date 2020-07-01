use mysql;

show databases;
select host, user from user;
show tables;


use recomm;

CREATE TABLE user(
	id CHAR(20) not null,
	password CHAR(20),
	name CHAR(50),
	age int,
	sex char(10),
	email char(50),
    emailHash varchar(64),
    emailChecked boolean,
    PRIMARY KEY(id)
)DEFAULT CHARSET=utf8;

CREATE TABLE board(
	board_number BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    board_content mediumtext not null,
    id VARCHAR(20),
    date DATETIME DEFAULT NOW(),
    read_count bigint(20) default 0,
    
    FOREIGN KEY(ID) REFERENCES user(id),  
	PRIMARY KEY(board_number)
)DEFAULT CHARSET=utf8;

CREATE TABLE comment(
	comment_number bigint(20) unsigned not null auto_increment,
    id varchar(20),
    board_number bigint(20) unsigned not null,
	comment_content mediumtext not null,
    date DATETIME DEFAULT NOW(),
    
    foreign key(id) references user(id),
    foreign key(board_number) references board(board_number) on delete cascade,
    primary key(comment_number)
)DEFAULT CHARSET=utf8;

create table recommend(
	recommend_number bigint(20) unsigned not null auto_increment,
	likely bigint(20) unsigned default 0,
    dislikely bigint(20) unsigned default 0,
    id varchar(20),
    board_number bigint(20) unsigned not null,
    
    foreign key(id) references user(id),
    foreign key(board_number) references board(board_number) on delete cascade,
    primary key(recommend_number)
)default charset=utf8;


drop table recommend;

delete from comment where id is null;
alter table recommend add constraint foreign_board foreign key(board_number) references board(board_number) on delete cascade;
alter table recommend drop primary key;
alter table recommend add column board_number bigint(20) unsigned not null;


select * from comment;
select * from user;
select * from board;



select * from recommend;

select * from board;

select count(comment.comment_number) from board, comment where board.board_number= 24 and board.board_number = comment.board_number;