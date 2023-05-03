MariaDB [dbtoko1]> DELIMITER $$
MariaDB [dbtoko1]> CREATE PROCEDURE inputPelanggan(IN kode VARCHAR(11), IN nama_pelanggan VARCHAR(100), IN jk VARCHAR(1), IN tmp_lahir VARCHAR(100), IN tgl_lahir DATE, IN
email VARCHAR(100), IN kartu_id INT(11), OUT id_pelanggan INT(11))
    -> BEGIN
    -> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, tgl_lahir, email, kartu_id) VALUES (kode, nama_pelanggan, jk, tmp_lahir, tgl_lahir, email, kartu_id);
    -> SET id_pelanggan = LAST_INSERT_ID();
    -> END $$
Query OK, 0 rows affected (0.151 sec)

//

MariaDB [dbtoko1]> DELIMITER ;
MariaDB [dbtoko1]> CALL inputPelanggan('X044', 'GOKU', 'L', 'PONTIANAK', '1995-05-18', 'Gokuee@gmail.com', 2, @id);
Query OK, 1 row affected (0.090 sec)

MariaDB [dbtoko1]> SELECT @id;
+------+
| @id  |
+------+
|   20 |
+------+
1 row in set (0.000 sec)

////////
MariaDB [dbtoko1]> DELIMITER ;
MariaDB [dbtoko1]> CALL showPelanggan();
+----+-------+----------------+-------------+------+-------------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat      | jk   | tmp_lahir   | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+-------------+------+-------------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua   | L    | PONTIANAK   | 2000-08-10 | Putra26@gmail.com |        1 |
|  4 | 00102 | Naruto         | KONOHAGURE  | L    | KONOHA      | 1998-02-09 | Naruto@gmail.com  |        2 |
|  5 | 00103 | Sasuke         | KONOHAGURE  | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com  |        3 |
|  7 | 20001 | Ani            | Bali        | P    | Jakarta     | 1996-02-01 | Ani@gmail.com     |        2 |
| 11 | 20002 | Habibi         | Karimunting | L    | Yogyakarta  | 1992-06-02 | Habibi@gmail.com  |        1 |
| 13 | 20004 | Agim           | Mojokerto   | L    | Pontianak   | 1995-01-09 | Agim@gmail.com    |        2 |
| 15 | 20003 | Yatim          | Binjai      | P    | Depok       | 1991-04-07 | Yatim@gmail.com   |        2 |
| 16 | 20005 | Sari           | Yogyakarta  | P    | Bali        | 1991-02-02 | Sari@gmail.com    |        1 |
| 17 | 20006 | Habiba         | Beting      | L    | Yogyakarta  | 2002-02-02 | Habiba@gmail.com  |        1 |
| 18 | C012  | Adul           | NULL        | L    | Jakarta     | 1992-02-22 | adul@gmail.com    |        2 |
| 20 | X044  | GOKU           | NULL        | L    | PONTIANAK   | 1995-05-18 | Gokuee@gmail.com  |        2 |
+----+-------+----------------+-------------+------+-------------+------------+-------------------+----------+
11 rows in set (0.001 sec)

Query OK, 0 rows affected (0.155 sec)

////

MariaDB [dbtoko1]> DELIMITER $$
MariaDB [dbtoko1]> CREATE PROCEDURE inputProduk(
    -> IN kode VARCHAR(10),
    -> IN nama VARCHAR(100),
    -> IN jenis_produk_id VARCHAR(100),
    -> IN harga_jual DOUBLE,
    -> IN harga_beli DOUBLE,
    -> IN stok INT(11),
    -> IN min_stok INT(11)
    -> )
    -> BEGIN
    -> INSERT INTO produk (kode, nama, jenis_produk_id, harga_jual, harga_beli, stok, min_stok)
    -> VALUES (kode, nama, jenis_produk_id, harga_jual, harga_beli, stok, min_stok);
    -> END $$
Query OK, 0 rows affected (0.234 sec)
MariaDB [dbtoko1]> CALL inputProduk('K003', 'Mobil Mustang', 4, 600000000,500000000, 15, 6);
Query OK, 1 row affected (0.001 sec)

///

MariaDB [dbtoko1]> DELIMITER ;
MariaDB [dbtoko1]>
MariaDB [dbtoko1]> CALL showProduk();
+---------------+------------+------------+
| nama          | harga_beli | harga_jual |
+---------------+------------+------------+
| TV            |    3000000 |    4000000 |
| TV 21 inch    |    2000000 |    3000000 |
| Kulkas        |    4000000 |    5000000 |
| Meja Makan    |    1000000 |    2000000 |
| Taro          |       4000 |       5000 |
| Kursi         |     500000 |     800000 |
| Kursi Jati    |    1300000 |    2000000 |
| Keranjang     |       5000 |       8000 |
| Keramik       |    1000000 |    1700000 |
| Sapu          |      10000 |      17000 |
| Sapu Lidi     |       8000 |      10000 |
| Sepeda        |    1000000 |    1200000 |
| Mobil Civic   |  500000000 |  600000000 |
| Mobil Mustang |  500000000 |  600000000 |
+---------------+------------+------------+
14 rows in set (0.001 sec)

Query OK, 0 rows affected (0.096 sec)

DELIMITER $$
CREATE PROCEDURE showProduk()
BEGIN
SELECT * FROM produk;
END $$
DELIMITER ;
CALL showProduk();

///
MariaDB [dbtoko1]> DELIMITER $$
MariaDB [dbtoko1]> CREATE PROCEDURE totalPesanan()
    -> BEGIN
    -> DECLARE total_pesanan DECIMAL(10,2);
    -> SELECT SUM(total) INTO total_pesanan FROM pesanan;
    -> SELECT total_pesanan;
    -> END $$
Query OK, 0 rows affected (0.202 sec)
MariaDB [dbtoko1]> CALL totalPesanan();
+---------------+
| total_pesanan |
+---------------+
|     230000.00 |
+---------------+
1 row in set (0.047 sec)

Query OK, 1 row affected (0.051 sec)

///
MariaDB [dbtoko1]> DELIMITER $$
MariaDB [dbtoko1]> CREATE PROCEDURE showAllPesanan()
    -> BEGIN
    ->   SELECT pesanan.id, pesanan.tanggal, pesanan.total, pelanggan.nama_pelanggan
    ->   FROM pesanan
    ->   JOIN pelanggan ON pesanan.pelanggan_id = pelanggan.id;
    -> END $$
Query OK, 0 rows affected (0.169 sec)

///
MariaDB [dbtoko1]> DELIMITER ;
MariaDB [dbtoko1]> CALL showAllPesanan();
+----+------------+--------+----------------+
| id | tanggal    | total  | nama_pelanggan |
+----+------------+--------+----------------+
|  1 | 0000-00-00 | 200000 | Putra Aditya   |
|  2 | 2023-01-01 |  30000 | Putra Aditya   |
+----+------------+--------+----------------+
2 rows in set (0.043 sec)

Query OK, 0 rows affected (0.057 sec)

///
CREATE VIEW pesanan_produk_vw AS
SELECT pesanan.id AS pesanan_id, pesanan.tanggal, pesanan.total, pelanggan.kode AS pelanggan_kode, pelanggan.nama_pelanggan, pelanggan.jk, pelanggan.tmp_lahir, pelanggan.tgl_lahir, pelanggan.email, pelanggan.kartu_id, produk.kode AS produk_kode, produk.nama AS produk_nama, produk.harga_jual, pesanan_items.qty, pesanan_items.harga
FROM pesanan
JOIN pelanggan ON pesanan.pelanggan_id = pelanggan.id
JOIN pesanan_items pesanan_items ON pesanan.id = pesanan_items.pesanan_id
JOIN produk ON pesanan_items.produk_id = produk.id;

SELECT * FROM pesanan_produk_vw;