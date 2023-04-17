create database QuanLyDiemThi;
USE QuanLyDiemThi;
create table HocSinh(
MaHs varchar(20) primary key,
TenHs varchar(50),
NgaySinh datetime,
Lop varchar(20),
Gt varchar(20)
);
create table MonHoc(
MaMh varchar (20) primary key,
TenMh varchar(50) 
);
create table BangDiem(
MaHs varchar(20),
MaMh varchar (20),
DiemThi int,
NgayKt datetime,
primary key (MaHs, MaMh),
foreign key (MaHs) references HocSinh(MaHs),
foreign key (MaMh) references MonHoc(MaMh)
);
create table GiaoVien(
MaGv varchar(20) primary key,
TenGv varchar(20),
Sdt varchar(10)
);
alter table MonHoc add MaGv varchar(20);
alter table MonHoc add constraint FK_MaGv foreign key(MaGv)
references GiaoVien(MaGv);

