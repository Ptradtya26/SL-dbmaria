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

MariaDB [(none)]> use dbtoko1
Database changed
MariaDB [dbtoko1]> show tables;
+-------------------+
| Tables_in_dbtoko1 |
+-------------------+
| jenis_produk      |
| kartu             |
| pelanggan         |
| pembayaran        |
| pembelian         |
| pesanan           |
| pesanan_items     |
| produk            |
| vendor            |
+-------------------+
9 rows in set (0.002 sec)

MariaDB [dbtoko1]> SELECt * FROM produk;
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
+----+------+------------+------------+------------+------+----------+-----------------+
8 rows in set (0.140 sec)

//menghitung_hargabeli_ada_berapa
MariaDB [dbtoko1]> SELECT COUNT(*) AS harga_beli FROM produk;
+------------+
| harga_beli |
+------------+
|          8 |
+------------+
1 row in set (0.104 sec)

//menghitung_hargabeli_yanglebih_dari_4000
MariaDB [dbtoko1]> SELECT COUNT(*) AS harga_beli FROM produk WHERE harga_beli > 4000;
+------------+
| harga_beli |
+------------+
|          7 |
+------------+
1 row in set (0.528 sec)

//menghitung_hargabeli_termahal
MariaDB [dbtoko1]> SELECT MAX(harga_beli) AS harga_beli FROM produk;
+------------+
| harga_beli |
+------------+
|    4000000 |
+------------+
1 row in set (0.001 sec)

//menghitung_hargabeli_termurah
MariaDB [dbtoko1]> SELECT MIN(harga_beli) AS harga_beli FROM produk;
+------------+
| harga_beli |
+------------+
|       4000 |
+------------+
1 row in set (0.001 sec)

 //MENGHITUNG_RATA2_hargabeli
MariaDB [dbtoko1]> SELECT AVG(harga_beli) AS harga_rata2 FROM produk;
+-------------+
| harga_rata2 |
+-------------+
|     1476125 |
+-------------+
1 row in set (0.001 sec)

//MENGHITUNG_totalsemua_hargabeli
MariaDB [dbtoko1]> SELECT SUM(harga_beli) AS jumlah_hargabeli FROM produk;
+------------------+
| jumlah_hargabeli |
+------------------+
|         11809000 |
+------------------+
1 row in set (0.001 sec)

//MENAMPILKAN_DATA_di_stok_terbanyak
MariaDB [dbtoko1]> SELECT * FROM produk WHERE stok = (SELECT MAX(stok) FROM produk);
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 |
+----+------+------------+------------+------------+------+----------+-----------------+
2 rows in set (0.068 sec)

//MENAMPILKAN_DATA_di_stok_tersikit
MariaDB [dbtoko1]> SELECT * FROM produk WHERE stok = (SELECT MIN(stok) FROM produk);
+----+------+-----------+------------+------------+------+----------+-----------------+
| id | kode | nama      | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+-----------+------------+------------+------+----------+-----------------+
|  8 | G002 | Keranjang |       5000 |       8000 |    1 |        2 |               3 |
+----+------+-----------+------------+------------+------+----------+-----------------+
1 row in set (0.001 sec)

MariaDB [dbtoko1]> SELECT * FROM produk WHERE stok = (SELECT MIN(stok) FROM produk);
+----+------+-----------+------------+------------+------+----------+-----------------+
| id | kode | nama      | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+-----------+------------+------------+------+----------+-----------------+
|  8 | G002 | Keranjang |       5000 |       8000 |    1 |        2 |               3 |
+----+------+-----------+------------+------------+------+----------+-----------------+
1 row in set (0.001 sec)

//Menggunakan_CLAUSA_CASE_jika_jumlah_stok_3_keatas
MariaDB [dbtoko1]> SELECT kode, nama, stok,
    -> CASE
    -> WHEN stok >= 3 THEN 'cukup'
    -> ELSE 'kurang'
    -> END AS keterangan
    -> FROM produk;
+------+------------+------+------------+
| kode | nama       | stok | keterangan |
+------+------------+------+------------+
| TV01 | TV         |    3 | cukup      |
| TV02 | TV 21 inch |   10 | cukup      |
| K001 | Kulkas     |   10 | cukup      |
| M001 | Meja Makan |    5 | cukup      |
| T001 | Taro       |    6 | cukup      |
| S002 | Kursi      |    4 | cukup      |
| F005 | Kursi Jati |    5 | cukup      |
| G002 | Keranjang  |    1 | kurang     |
+------+------------+------+------------+
8 rows in set (0.061 sec)

MariaDB [dbtoko1]> SELECt * FROM jenis_produk;
+----+------------+----------------+
| id | nama       | ket            |
+----+------------+----------------+
|  1 | elektronik | tersedia       |
|  2 | makanan    | tersedia       |
|  3 | minuman    | tidak tersedia |
|  4 | furniture  | tersedia       |
+----+------------+----------------+
4 rows in set (0.001 sec)

//CLAUSA_CASE_menggunakan_switch_case
MariaDB [dbtoko1]> SELECT
    -> CASE
    -> WHEN jenis_produk_id = 1 THEN 'elektronik'
    -> WHEN jenis_produk_id = 2 THEN 'makanan'
    -> WHEN jenis_produk_id = 3 THEN 'minuman'
    -> ELSE 'furniture'
    -> END AS kategori, SUM(stok) AS jumlah FROM produk GROUP BY jenis_produk_id;
+------------+--------+
| kategori   | jumlah |
+------------+--------+
| elektronik |     23 |
| makanan    |      5 |
| minuman    |     10 |
| furniture  |      6 |
+------------+--------+
4 rows in set (0.001 sec)

//klausa_HAVING_jumlah_stok_yang_ditampilkan lebih dari 2
MariaDB [dbtoko1]> SELECT stok, SUM(stok) AS jml_stok FROM produk
    -> GROUP BY stok HAVING SUM(stok) >2;
+------+----------+
| stok | jml_stok |
+------+----------+
|    3 |        3 |
|    4 |        4 |
|    5 |       10 |
|    6 |        6 |
|   10 |       20 |
+------+----------+
5 rows in set (0.071 sec)

//
