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

select * from information_schema.table_constraints;
show tables;
select * from comment;

select * from user;
select * from board;
insert into user values('yoon1fe', 'admin', '윤원철', 26, '남자', 'yoon1fe@knu.ac.kr', '', true);



update board set read_count= read_count+1 where board_number = 3;
insert into board(title, board_content, id) values('첫글이다', '반갑다 첫 글이다', 'yoon1fe');

select count(likely) from recommend where board_number = 2 and likely = 1;
select count(dislikely) from recommend where board_number = ? and dislikely = 1;



insert into comment(id, board_number, comment_content) values('yoon1fe', '3', '그래 반갑다 첫 댓글이다');
select * from comment;

