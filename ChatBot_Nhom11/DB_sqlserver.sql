CREATE DATABASE ChatBot
USE ChatBot
GO

DROP TABLE thuoctinh
DROP TABLE trangphuc
DROP TABLE luat
DROP TABLE suydien

CREATE TABLE thuoctinh (
    idthuoctinh VARCHAR(50) PRIMARY KEY,
    tenThuocTinh NVARCHAR(MAX),
    desThuocTinh NVARCHAR(MAX)
);

CREATE TABLE trangphuc (
    idtrangphuc VARCHAR(50) PRIMARY KEY,
    tenTrangPhuc NVARCHAR(MAX),
    desTrangPhuc NVARCHAR(MAX),
    noteTrangPhuc NVARCHAR(MAX)
);

CREATE TABLE luat (
    idluat VARCHAR(50) PRIMARY KEY,
    trangthai INT
);

CREATE TABLE suydien (
    idsuydien INT IDENTITY(1,1) PRIMARY KEY,
    idluat VARCHAR(50),
    idthuoctinh VARCHAR(50),
    idtrangphuc VARCHAR(50),
    FOREIGN KEY (idluat) REFERENCES luat(idluat),
    FOREIGN KEY (idthuoctinh) REFERENCES thuoctinh(idthuoctinh),
    FOREIGN KEY (idtrangphuc) REFERENCES trangphuc(idtrangphuc)
);
