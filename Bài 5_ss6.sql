CREATE TABLE TacGia (
    MaTacGia INT PRIMARY KEY AUTO_INCREMENT,
    TenTacGia VARCHAR(200) NOT NULL
);
INSERT INTO TacGia (TenTacGia)
VALUES
('Nguyễn Nhật Ánh'),     -- MaTacGia = 1
('J.K. Rowling'),        -- MaTacGia = 2
('Khuyết danh'),         -- MaTacGia = 3 (không dùng)
('Dale Carnegie');       -- MaTacGia = 4

------------------------------------------------------

-- Tạo bảng Sach với khóa ngoại MaTacGia
CREATE TABLE Sach (
    MaSach INT PRIMARY KEY AUTO_INCREMENT,
    TenSach VARCHAR(200) NOT NULL,
    NamXuatBan INT,
    MaTacGia INT,
    FOREIGN KEY (MaTacGia) REFERENCES TacGia(MaTacGia)
);

INSERT INTO Sach (TenSach, NamXuatBan, MaTacGia)
VALUES
('Cho tôi xin một vé đi tuổi thơ', 2008, 1),
('Mắt biếc', 1990, 1),
('Harry Potter và Hòn đá Phù thủy', 1997, 2),
('Harry Potter và Phòng chứa Bí mật', 1998, 2),
('Đắc nhân tâm', 1936, 4);
