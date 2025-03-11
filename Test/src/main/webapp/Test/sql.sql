create table member_02(
ID number(2) not null primary key,
name varchar(20),
Phone varchar2(13),
grade char(1)
);

insert into member_02 values(01,'김행복','010-1111-2222','A');


--U_change.jsp & U_Delete.jsp
SELECT * FROM member_02

--E_AllDelete.jsp & E_Delete.jsp
DELETE FROM member_02
DELETE member_02 where id = ?

--E_change.jsp
UPDATE member_02 SET name = ?, phone = ?, grade = ? WHERE id = ?

--E_Input.jsp
insert into member_02 values(?,?,?,?)