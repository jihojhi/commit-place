create sequence seq_user start 1;
create sequence seq_city start 1;
create sequence seq_commit start 1;

--drop table "user";
create table "user" (
	userNo int primary key default nextval('seq_user'),
	userName varchar(32),
	userEmail varchar(128),
	userID varchar(256),
	password varchar(256),
	pwdExpiredDate timestamp,
	lastLoginDatetime timestamp,
	lastPwdChangeDate timestamp,
	userStatus varchar(32)
);

--drop table city;
create table city(
	cityNo int primary key default nextval('seq_city'),
	groupID varchar(256),
	selectable varchar(64),
	title varchar(64),
	longitude numeric,
	latitude numeric,
	"type" varchar(64),
	color varchar(64),
	width int,
	height int,
	"scale" int,
	fixedSize int
);

--drop table commit;
create table "commit"(
	commitNo int primary key default nextval('seq_commit'),
	userNo int,
	cityNo int
);
