SELECT * FROM Sach
ORDER BY NamXuatBan DESC;
SELECT * FROM DocGia
ORDER BY TenDocGia ASC;

CREATE TABLE PhieuMuon (
    MaPhieuMuon INT PRIMARY KEY AUTO_INCREMENT,
    NgayMuon DATE,
    NgayTra DATE NULL,
    MaDocGia INT,
    MaSach INT,
    FOREIGN KEY (MaDocGia) REFERENCES DocGia(MaDocGia),
    FOREIGN KEY (MaSach) REFERENCES Sach(MaSach)
);
