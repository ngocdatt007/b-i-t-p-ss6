SELECT * FROM Sach
WHERE NamXuatBan >= 1990 AND NamXuatBan <= 2000;

SELECT * FROM Sach
WHERE TenSach = 'Harry Potter và Hòn đá Phù thủy' OR TenSach = 'Harry Potter và Phòng chứa Bí mật';
SELECT * FROM Sach
WHERE TenSach IN ('Harry Potter và Hòn đá Phù thủy', 'Harry Potter và Phòng chứa Bí mật');
SELECT * FROM Sach
WHERE MaTacGia = 1 AND NamXuatBan > 2000;
