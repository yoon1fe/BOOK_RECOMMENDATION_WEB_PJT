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
    foreign key(board_number) references board(board_number),
    primary key(comment_number)
)DEFAULT CHARSET=utf8;


show tables;

desc board;
select * from board;
insert into user values('yoon1fe', 'admin', '윤원철', 26, '남자', 'yoon1fe@knu.ac.kr', '', true);
delete from user where id='yoon1fe';
select * from user;

update board set read_count= read_count+1 where board_number = 3;
insert into board(title, board_content, id) values('첫글이다', '반갑다 첫 글이다', 'yoon1fe');
select * from board;
delete from board where id='yoon1fe';

select * from user;

insert into comment(id, board_number, comment_content) values('yoon1fe', '3', '그래 반갑다 첫 댓글이다');
select * from comment;
delete from comment where id='yoon1fe';
select date from board;

select * from board;
