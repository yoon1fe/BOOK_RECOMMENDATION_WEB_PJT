use webPjt;
show tables;

CREATE TABLE user(
	id CHAR(20) not null,
	password CHAR(20),
	name CHAR(50),
	age int,
	sex char(10),
	email char(50),
	PRIMARY KEY(id)
)DEFAULT CHARSET=utf8;

CREATE TABLE board(
	board_number BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    board_content mediumtext not null,
    id VARCHAR(20),
    date DATETIME DEFAULT NOW(),
    
    FOREIGN KEY(ID) REFERENCES user(id),  
	PRIMARY KEY(board_number)
);

CREATE TABLE comment(
	comment_number bigint(20) unsigned not null auto_increment,
    id varchar(20),
    board_number bigint(20) unsigned not null,
	comment_content mediumtext not null,
    date DATETIME DEFAULT NOW(),
    
    foreign key(id) references user(id),
    foreign key(board_number) references board(board_number),
    primary key(comment_number)
);


show tables;

insert into user values('yoon1fe', 'admin', '윤원철', 26, '남', 'yoon1fe@knu.ac.kr');


insert into board(title, board_content, id) values('첫글이다', '반갑다 첫 글이다', 'yoon1fe');
select * from board;


insert into comment(id, board_number, comment_content) values('yoon1fe', '1', '그래 반갑다 첫 댓글이다');
select * from comment;

select date from board;