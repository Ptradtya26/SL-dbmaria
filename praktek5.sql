MariaDB [dbtoko1]> DELIMITER $$
MariaDB [dbtoko1]> CREATE TRIGGER kranjang_pesanan_items BEFORE INSERT ON pesanan_items
    -> FOR EACH ROW
    -> BEGIN
    -> SET @stok = (SELECT stok FROM produk WHERE id = NEW.produk_id);
    -> SET @sisa = @sisa = @stok - NEW.qty;
    -> IF @sisa < 0 THEN
    -> SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning: stok tidak cukup';
    -> END IF;
    -> UPDATE produk SET stok = @sisa WHERE id = NEW.produk_id;
    -> END
    -> $$
Query OK, 0 rows affected (0.321 sec)

MariaDB [dbtoko1]> DELIMITER ;
MariaDB [dbtoko1]> SELECT * FROM pesanan_items;
Empty set (0.104 sec)

MariaDB [dbtoko1]> INSERT INTO pesanan_items (produk_id,pesanan_id,qty,harga) VALUES
    -> (3,2,3,5000000);
Query OK, 1 row affected (0.299 sec)

MariaDB [dbtoko1]> SELECT * FROM pesanan_items;
+----+-----------+------------+------+---------+
| id | produk_id | pesanan_id | qty  | harga   |
+----+-----------+------------+------+---------+
|  1 |         3 |          2 |    3 | 5000000 |
+----+-----------+------------+------+---------+
1 row in set (0.001 sec)

MariaDB [dbtoko1]> SELECT * FROM produk;
+----+------+---------------+------------+------------+------+----------+-----------------+
| id | kode | nama          | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+---------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | TV            |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch    |    2000000 |    3000000 |   10 |        3 |               1 |
|  3 | K001 | Kulkas        |    4000000 |    5000000 | NULL |        6 |               1 |
|  4 | M001 | Meja Makan    |    1000000 |    2000000 |    5 |        3 |               2 |
|  5 | T001 | Taro          |       4000 |       5000 |    6 |        4 |               4 |
|  6 | S002 | Kursi         |     500000 |     800000 |    4 |        2 |               3 |
|  7 | F005 | Kursi Jati    |    1300000 |    2000000 |    5 |        2 |               3 |
|  8 | G002 | Keranjang     |       5000 |       8000 |    1 |        2 |               3 |
|  9 | M003 | Keramik       |    1000000 |    1700000 |   10 |        2 |               1 |
| 10 | X002 | Sapu          |      10000 |      17000 |   19 |       10 |               2 |
| 11 | X001 | Sapu Lidi     |       8000 |      10000 |    9 |        8 |               2 |
| 12 | A003 | Sepeda        |    1000000 |    1200000 |    8 |        6 |               1 |
| 13 | L002 | Mobil Civic   |  500000000 |  600000000 |   15 |        6 |               4 |
| 15 | K003 | Mobil Mustang |  500000000 |  600000000 |   15 |        6 |               4 |
+----+------+---------------+------------+------------+------+----------+-----------------+
14 rows in set (0.001 sec)



//
MariaDB [dbtoko1]> DELIMITER $$
MariaDB [dbtoko1]> FOR EACH ROW
    -> BEGIN
    -> IF OLD.id = NEW.produk_id THEN
    -> SET @stok = (SELECT stok FROM produk WHERE id = OLD.produk_id);
    -> SET @sisa = (@stok + OLD.qty) - NEW.qty;
    -> IF @sisa < 0 THEN
    -> SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'warning: stok tidak cukup';
    -> END IF;
    -> UPDATE produk SET stok = @sisa WHERE id = OLD.produk_id;
    -> ELSE
    -> SET @stok_lama = (SELECT stok FROM produk WHERE id = OLD.produk_id);
    -> SET @sisa_lama = (@stok_lama + OLD.qty);
    -> UPDATE produk SET stok = @sisa_lama WHERE id = OLD.produk_id;
    -> SET @stok_baru = (SELECT stok FROM produk WHERE id = NEW.produk_id);
    -> SET @sisa_baru = @stok_baru - NEW.qty;
    -> IF @sisa_baru < 0 THEN
    -> SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT 'Warning: stok tidak tersedia';
    -> END IF;
    -> UPDATE produk SET stok = @sisa_baru WHERE id = NEW.produk_id;
    -> END IF;
    -> END;
    -> $$

    MariaDB [dbtoko1]> SELECT * FROM pesanan_items;
+----+-----------+------------+------+---------+
| id | produk_id | pesanan_id | qty  | harga   |
+----+-----------+------------+------+---------+
|  1 |         3 |          2 |    3 | 5000000 |
+----+-----------+------------+------+---------+
1 row in set (0.345 sec)

MariaDB [dbtoko1]> UPDATE pesanan_items SET qty = 2 WHERE id=3;
Query OK, 0 rows affected (0.117 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [dbtoko1]> SELECT * FROM pesanan_items;
+----+-----------+------------+------+---------+
| id | produk_id | pesanan_id | qty  | harga   |
+----+-----------+------------+------+---------+
|  1 |         3 |          2 |    3 | 5000000 |
+----+-----------+------------+------+---------+
1 row in set (0.001 sec)

MariaDB [dbtoko1]> SELECT * FROM produk;
+----+------+---------------+------------+------------+------+----------+-----------------+
| id | kode | nama          | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+---------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | TV            |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch    |    2000000 |    3000000 |   10 |        3 |               1 |
|  3 | K001 | Kulkas        |    4000000 |    5000000 |    7 |        6 |               1 |
|  4 | M001 | Meja Makan    |    1000000 |    2000000 |    5 |        3 |               2 |
|  5 | T001 | Taro          |       4000 |       5000 |    6 |        4 |               4 |
|  6 | S002 | Kursi         |     500000 |     800000 |    4 |        2 |               3 |
|  7 | F005 | Kursi Jati    |    1300000 |    2000000 |    5 |        2 |               3 |
|  8 | G002 | Keranjang     |       5000 |       8000 |    1 |        2 |               3 |
|  9 | M003 | Keramik       |    1000000 |    1700000 |   10 |        2 |               1 |
| 10 | X002 | Sapu          |      10000 |      17000 |   19 |       10 |               2 |
| 11 | X001 | Sapu Lidi     |       8000 |      10000 |    9 |        8 |               2 |
| 12 | A003 | Sepeda        |    1000000 |    1200000 |    8 |        6 |               1 |
| 13 | L002 | Mobil Civic   |  500000000 |  600000000 |   15 |        6 |               4 |
| 15 | K003 | Mobil Mustang |  500000000 |  600000000 |   15 |        6 |               4 |
+----+------+---------------+------------+------------+------+----------+-----------------+
14 rows in set (0.001 sec)




