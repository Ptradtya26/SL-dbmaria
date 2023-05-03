Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\user>cd\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.27-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use dbtoko1;
Database changed
MariaDB [dbtoko1]> SELECT produk.*, jenis_produk.*, jenis_produk.nama as jenis FROM jenis_produk INNER JOIN produk
    -> ON produk.jenis_produk_id = jenis_produk.id;
+----+------+------------+------------+------------+------+----------+-----------------+----+------------+----------------+------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id | id | nama       | ket            | jenis      |
+----+------+------------+------------+------------+------+----------+-----------------+----+------------+----------------+------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 |  1 | elektronik | tersedia       | elektronik |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |  1 | elektronik | tersedia       | elektronik |
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 |  1 | elektronik | tersedia       | elektronik |
|  9 | M003 | Keramik    |    1000000 |    1700000 |   10 |        2 |               1 |  1 | elektronik | tersedia       | elektronik |
| 12 | A003 | Sepeda     |    1000000 |    1200000 |    8 |        6 |               1 |  1 | elektronik | tersedia       | elektronik |
|  4 | M001 | Meja Makan |    1000000 |    2000000 |    5 |        3 |               2 |  2 | makanan    | tersedia       | makanan    |
| 10 | X002 | Sapu       |      10000 |      17000 |   19 |       10 |               2 |  2 | makanan    | tersedia       | makanan    |
| 11 | X001 | Sapu Lidi  |       8000 |      10000 |    9 |        8 |               2 |  2 | makanan    | tersedia       | makanan    |
|  6 | S002 | Kursi      |     500000 |     800000 |    4 |        2 |               3 |  3 | minuman    | tidak tersedia | minuman    |
|  7 | F005 | Kursi Jati |    1300000 |    2000000 |    5 |        2 |               3 |  3 | minuman    | tidak tersedia | minuman    |
|  8 | G002 | Keranjang  |       5000 |       8000 |    1 |        2 |               3 |  3 | minuman    | tidak tersedia | minuman    |
|  5 | T001 | Taro       |       4000 |       5000 |    6 |        4 |               4 |  4 | furniture  | tersedia       | furniture  |
+----+------+------------+------------+------------+------+----------+-----------------+----+------------+----------------+------------+
12 rows in set (0.289 sec)

MariaDB [dbtoko1]>
MariaDB [dbtoko1]> SELECT p.*, j.nama AS jenis FROM jenis_produk j INNER JOIN produk p ON p.jenis_produk_id = j.id;
+----+------+------------+------------+------------+------+----------+-----------------+------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id | jenis      |
+----+------+------------+------------+------------+------+----------+-----------------+------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 | elektronik |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 | elektronik |
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 | elektronik |
|  9 | M003 | Keramik    |    1000000 |    1700000 |   10 |        2 |               1 | elektronik |
| 12 | A003 | Sepeda     |    1000000 |    1200000 |    8 |        6 |               1 | elektronik |
|  4 | M001 | Meja Makan |    1000000 |    2000000 |    5 |        3 |               2 | makanan    |
| 10 | X002 | Sapu       |      10000 |      17000 |   19 |       10 |               2 | makanan    |
| 11 | X001 | Sapu Lidi  |       8000 |      10000 |    9 |        8 |               2 | makanan    |
|  6 | S002 | Kursi      |     500000 |     800000 |    4 |        2 |               3 | minuman    |
|  7 | F005 | Kursi Jati |    1300000 |    2000000 |    5 |        2 |               3 | minuman    |
|  8 | G002 | Keranjang  |       5000 |       8000 |    1 |        2 |               3 | minuman    |
|  5 | T001 | Taro       |       4000 |       5000 |    6 |        4 |               4 | furniture  |
+----+------+------------+------------+------------+------+----------+-----------------+------------+
12 rows in set (0.036 sec)
//membuat_table view
MariaDB [dbtoko1]> CREATE VIEW detail_produk_vw AS
    -> SELECT p.*, j.nama AS jenis FROM jenis_produk j INNER JOIN produk p ON p.jenis_produk_id = j.id;
Query OK, 0 rows affected (0.130 sec)

MariaDB [dbtoko1]> SELECT * FROM detail_produk_vw;
+----+------+------------+------------+------------+------+----------+-----------------+------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id | jenis      |
+----+------+------------+------------+------------+------+----------+-----------------+------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 | elektronik |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 | elektronik |
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 | elektronik |
|  9 | M003 | Keramik    |    1000000 |    1700000 |   10 |        2 |               1 | elektronik |
| 12 | A003 | Sepeda     |    1000000 |    1200000 |    8 |        6 |               1 | elektronik |
|  4 | M001 | Meja Makan |    1000000 |    2000000 |    5 |        3 |               2 | makanan    |
| 10 | X002 | Sapu       |      10000 |      17000 |   19 |       10 |               2 | makanan    |
| 11 | X001 | Sapu Lidi  |       8000 |      10000 |    9 |        8 |               2 | makanan    |
|  6 | S002 | Kursi      |     500000 |     800000 |    4 |        2 |               3 | minuman    |
|  7 | F005 | Kursi Jati |    1300000 |    2000000 |    5 |        2 |               3 | minuman    |
|  8 | G002 | Keranjang  |       5000 |       8000 |    1 |        2 |               3 | minuman    |
|  5 | T001 | Taro       |       4000 |       5000 |    6 |        4 |               4 | furniture  |
+----+------+------------+------------+------------+------+----------+-----------------+------------+
12 rows in set (0.057 sec)

//menampilkan_table yang sudah di view
MariaDB [dbtoko1]> CREATE VIEW tampil_produk AS SELECT nama FROM produk;
Query OK, 0 rows affected (0.093 sec)

MariaDB [dbtoko1]> SELECT * FROM tampil_produk;
+------------+
| nama       |
+------------+
| TV         |
| TV 21 inch |
| Kulkas     |
| Meja Makan |
| Taro       |
| Kursi      |
| Kursi Jati |
| Keranjang  |
| Keramik    |
| Sapu       |
| Sapu Lidi  |
| Sepeda     |
+------------+
12 rows in set (0.002 sec)

//melihat_table_table  yang sudah die view
MariaDB [dbtoko1]> SHOW FULL TABLES;
+-------------------+------------+
| Tables_in_dbtoko1 | Table_type |
+-------------------+------------+
| detail_produk_vw  | VIEW       |
| jenis_produk      | BASE TABLE |
| kartu             | BASE TABLE |
| pelanggan         | BASE TABLE |
| pembayaran        | BASE TABLE |
| pembelian         | BASE TABLE |
| pesanan           | BASE TABLE |
| pesanan_items     | BASE TABLE |
| produk            | BASE TABLE |
| tampil_produk     | VIEW       |
| vendor            | BASE TABLE |
+-------------------+------------+
11 rows in set (0.158 sec)

//_TRANSACTION
MariaDB [dbtoko1]> SELECT * FROM pesanan;
Empty set (0.001 sec)

MariaDB [dbtoko1]> START TRANSACTION;
Query OK, 0 rows affected (0.045 sec)

MariaDB [dbtoko1]> INSERT INTO pesanan(tanggal, total, pelanggan_id) VALUES
    -> (2023-02-01,200000,1);
Query OK, 1 row affected, 1 warning (0.117 sec)

MariaDB [dbtoko1]> COMMIT;
Query OK, 0 rows affected (0.086 sec)

MariaDB [dbtoko1]> SELECT * FROM pesanan;
+----+------------+--------+--------------+
| id | tanggal    | total  | pelanggan_id |
+----+------------+--------+--------------+
|  1 | 0000-00-00 | 200000 |            1 |
+----+------------+--------+--------------+
1 row in set (0.001 sec)

//PROSES_ROLLBACk
MariaDB [dbtoko1]> START TRANSACTIOn;
Query OK, 0 rows affected (0.001 sec)

MariaDB [dbtoko1]> DELETE FROM pesanan;
Query OK, 1 row affected (0.084 sec)

MariaDB [dbtoko1]> SELECT * FROM pesanan;
Empty set (0.001 sec)

MariaDB [dbtoko1]> ROLLBACK;
Query OK, 0 rows affected (0.099 sec)

MariaDB [dbtoko1]> SELECT * FROM pesanan;
+----+------------+--------+--------------+
| id | tanggal    | total  | pelanggan_id |
+----+------------+--------+--------------+
|  1 | 0000-00-00 | 200000 |            1 |
+----+------------+--------+--------------+
1 row in set (0.001 sec)

//SAVEPOINT
MariaDB [dbtoko1]> SELECT * FROM pesanan;
+----+------------+--------+--------------+
| id | tanggal    | total  | pelanggan_id |
+----+------------+--------+--------------+
|  1 | 0000-00-00 | 200000 |            1 |
+----+------------+--------+--------------+
1 row in set (0.001 sec)

MariaDB [dbtoko1]> START TRANSACTION;
Query OK, 0 rows affected (0.003 sec)

MariaDB [dbtoko1]> SAVEPOINT update_tanggal;
Query OK, 0 rows affected (0.000 sec)

MariaDB [dbtoko1]> UPDATE pesanan set tanggal='2023-03-01' WHERE id
Query OK, 1 row affected (0.077 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [dbtoko1]> COMMIT;
Query OK, 0 rows affected (0.000 sec)

MariaDB [dbtoko1]> SELECT * FROM pesanan;
+----+------------+--------+--------------+
| id | tanggal    | total  | pelanggan_id |
+----+------------+--------+--------------+
|  1 | 2023-03-01 | 200000 |            1 |
+----+------------+--------+--------------+
1 row in set (0.001 sec)



//DELIMITER
MariaDB [dbtoko1]> DELIMITER $$
MariaDB [dbtoko1]> SELECT * FROM produk;
    -> $$
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 |
|  4 | M001 | Meja Makan |    1000000 |    2000000 |    5 |        3 |               2 |
|  5 | T001 | Taro       |       4000 |       5000 |    6 |        4 |               4 |
|  6 | S002 | Kursi      |     500000 |     800000 |    4 |        2 |               3 |
|  7 | F005 | Kursi Jati |    1300000 |    2000000 |    5 |        2 |               3 |
|  8 | G002 | Keranjang  |       5000 |       8000 |    1 |        2 |               3 |
|  9 | M003 | Keramik    |    1000000 |    1700000 |   10 |        2 |               1 |
| 10 | X002 | Sapu       |      10000 |      17000 |   19 |       10 |               2 |
| 11 | X001 | Sapu Lidi  |       8000 |      10000 |    9 |        8 |               2 |
| 12 | A003 | Sepeda     |    1000000 |    1200000 |    8 |        6 |               1 |
+----+------+------------+------------+------------+------+----------+-----------------+
12 rows in set (0.001 sec)

MariaDB [dbtoko1]> CREATE PROCEDURE showProduk()
    -> BEGIN
    -> SELECT nama, harga_beli, harga_jual FROM produk;
    -> end
    -> $$
Query OK, 0 rows affected (0.366 sec)

MariaDB [dbtoko1]> CALL showProduk();
    -> $$
+------------+------------+------------+
| nama       | harga_beli | harga_jual |
+------------+------------+------------+
| TV         |    3000000 |    4000000 |
| TV 21 inch |    2000000 |    3000000 |
| Kulkas     |    4000000 |    5000000 |
| Meja Makan |    1000000 |    2000000 |
| Taro       |       4000 |       5000 |
| Kursi      |     500000 |     800000 |
| Kursi Jati |    1300000 |    2000000 |
| Keranjang  |       5000 |       8000 |
| Keramik    |    1000000 |    1700000 |
| Sapu       |      10000 |      17000 |
| Sapu Lidi  |       8000 |      10000 |
| Sepeda     |    1000000 |    1200000 |
+------------+------------+------------+
12 rows in set (0.001 sec)

Query OK, 0 rows affected (0.072 sec)

//DELIMITER_menambah
MariaDB [dbtoko1]> SELECT * FROM jenis_produk;
+----+------------+----------------+
| id | nama       | ket            |
+----+------------+----------------+
|  1 | elektronik | tersedia       |
|  2 | makanan    | tersedia       |
|  3 | minuman    | tidak tersedia |
|  4 | furniture  | tersedia       |
+----+------------+----------------+
4 rows in set (0.001 sec)

MariaDB [dbtoko1]> DELIMITER $$
MariaDB [dbtoko1]> CREATE PROCEDURE addjenis_produk(nama varchar(20), ket varchar(50))
    -> BEGIN
    -> INSERT INTO jenis_produk(nama,ket) VALUES(nama,ket);
    -> END$$
Query OK, 0 rows affected (0.207 sec)

MariaDB [dbtoko1]> DELIMITER ;
MariaDB [dbtoko1]> CALL addjenis_produk('Alat Kebersihan','tersedia');
Query OK, 1 row affected (0.149 sec)

MariaDB [dbtoko1]> SELECT * FROM  jenis_produk;
+----+-----------------+----------------+
| id | nama            | ket            |
+----+-----------------+----------------+
|  1 | elektronik      | tersedia       |
|  2 | makanan         | tersedia       |
|  3 | minuman         | tidak tersedia |
|  4 | furniture       | tersedia       |
|  5 | Alat Kebersihan | tersedia       |
+----+-----------------+----------------+
5 rows in set (0.001 sec)
