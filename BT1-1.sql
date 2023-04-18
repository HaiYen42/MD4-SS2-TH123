create database QuanLyBanHang;
use QuanLyBanHang;
create table PhieuXuat(
SoPX int primary key auto_increment,
NgayXuat datetime
);
create table VatTu(
MaVTu int primary key auto_increment,
TenVTu varchar(255)
);
create table PhieuNhap(
SoPN int primary key auto_increment,
NgayNhap datetime
);
create table DonDh(
SoDH int primary key auto_increment,
NgayDH datetime
);
create table NhaCC(
MaNCC int primary key auto_increment,
TenNCC varchar(255),
DiaChi varchar(255),
SDT varchar(10) 
);
create table ChiTietPhieuXuat(
DGXuat float,
SLXuat float,
SoPX int,
MaVTu int,
foreign key (SoPX) references PhieuXuat(SoPX),
foreign key (MaVTu) references VatTu(MaVTu)
);
create table ChiTietPhieuNhap(
DGNhap float,
SLNhap int,
MaVTu int,
SoPN int,
foreign key (MaVTu) references VatTu(MaVTu),
foreign key (SoPN) references PhieuNhap(SoPN)
);
create table ChiTietDonDatHang(
MaVTu int,
SoDh int,
foreign key (MaVTu)references VatTu(MaVTu),
foreign key (SoDh) references DonDh(SoDH)
);
create table CungCap(
SoDh int,
MaNCC int,
foreign key (SoDh) references DonDh(SoDH),
foreign key (MaNCC) references NhaCC(MaNCC)
)