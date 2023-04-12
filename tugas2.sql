Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\user>cd\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 16
Server version: 10.4.27-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use dbtoko1
Database changed
MariaDB [dbtoko1]> SELECT * FROM produk;
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 |
|  4 | M001 | Meja Makan |    1000000 |    2000000 |    5 |        3 |               2 |
|  5 | T001 | Taro       |       4000 |       5000 |    6 |        4 |               4 |
+----+------+------------+------------+------------+------+----------+-----------------+
5 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT * FROM produk ORDER BY harga_jual desc;
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 |
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
|  4 | M001 | Meja Makan |    1000000 |    2000000 |    5 |        3 |               2 |
|  5 | T001 | Taro       |       4000 |       5000 |    6 |        4 |               4 |
+----+------+------------+------------+------------+------+----------+-----------------+
5 rows in set (0.094 sec)

//1.3
MariaDB [dbtoko1]> SELECT *  FROM pelanggan;
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir   | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua  | L    | PONTIANAK   | 2000-08-10 | Putra26@gmail.com |        1 |
|  4 | 00102 | Naruto         | KONOHAGURE | L    | KONOHA      | 1998-02-09 | Naruto@gmail.com  |        2 |
|  5 | 00103 | Sasuke         | KONOHAGURE | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com  |        3 |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
3 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT kode, nama_pelanggan, tmp_lahir, tgl_lahir FROM pelanggan;
+-------+----------------+-------------+------------+
| kode  | nama_pelanggan | tmp_lahir   | tgl_lahir  |
+-------+----------------+-------------+------------+
| 00101 | Putra Aditya   | PONTIANAK   | 2000-08-10 |
| 00102 | Naruto         | KONOHA      | 1998-02-09 |
| 00103 | Sasuke         | Desa Konoha | 1999-06-01 |
+-------+----------------+-------------+------------+
3 rows in set (0.001 sec)

//1.4
MariaDB [dbtoko1]> SELECT * FROM produk;
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 |
|  4 | M001 | Meja Makan |    1000000 |    2000000 |    5 |        3 |               2 |
|  5 | T001 | Taro       |       4000 |       5000 |    6 |        4 |               4 |
|  6 | S002 | Kursi      |     500000 |     800000 |    4 |        2 |               3 |
+----+------+------------+------------+------------+------+----------+-----------------+
6 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT kode, nama, stok FROM produk WHERE stok=4;
+------+-------+------+
| kode | nama  | stok |
+------+-------+------+
| S002 | Kursi |    4 |
+------+-------+------+
1 row in set (0.122 sec)

//1.5
MariaDB [dbtoko1]> SELECT * FROM pelanggan;
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir   | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua  | L    | PONTIANAK   | 2000-08-10 | Putra26@gmail.com |        1 |
|  4 | 00102 | Naruto         | KONOHAGURE | L    | KONOHA      | 1998-02-09 | Naruto@gmail.com  |        2 |
|  5 | 00103 | Sasuke         | KONOHAGURE | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com  |        3 |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
3 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT * FROM pelanggan WHERE tmp_lahir='PONTIANAK';
+----+-------+----------------+-----------+------+-----------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat    | jk   | tmp_lahir | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+-----------+------+-----------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua | L    | PONTIANAK | 2000-08-10 | Putra26@gmail.com |        1 |
+----+-------+----------------+-----------+------+-----------+------------+-------------------+----------+
1 row in set (0.001 sec)

//1.6
MariaDB [dbtoko1]> SELECT * FROM pelanggan;
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir   | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua  | L    | PONTIANAK   | 2000-08-10 | Putra26@gmail.com |        1 |
|  4 | 00102 | Naruto         | KONOHAGURE | L    | KONOHA      | 1998-02-09 | Naruto@gmail.com  |        2 |
|  5 | 00103 | Sasuke         | KONOHAGURE | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com  |        3 |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
3 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT kode, nama_pelanggan, tmp_lahir, tgl_lahir FROM pelanggan ORDER BY tgl_lahir DESC;
+-------+----------------+-------------+------------+
| kode  | nama_pelanggan | tmp_lahir   | tgl_lahir  |
+-------+----------------+-------------+------------+
| 00101 | Putra Aditya   | PONTIANAK   | 2000-08-10 |
| 00103 | Sasuke         | Desa Konoha | 1999-06-01 |
| 00102 | Naruto         | KONOHA      | 1998-02-09 |
+-------+----------------+-------------+------------+
3 rows in set (0.001 sec)

//
//2.1
MariaDB [dbtoko1]> SELECT * FROM produk;
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 |
|  4 | M001 | Meja Makan |    1000000 |    2000000 |    5 |        3 |               2 |
|  5 | T001 | Taro       |       4000 |       5000 |    6 |        4 |               4 |
|  6 | S002 | Kursi      |     500000 |     800000 |    4 |        2 |               3 |
+----+------+------------+------------+------------+------+----------+-----------------+
6 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT * FROM produk WHERE stok=3 OR stok=10;
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 |
+----+------+------------+------------+------------+------+----------+-----------------+
3 rows in set (0.059 sec)

//2.2
MariaDB [dbtoko1]> SELECT * FROM produk;
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
+----+------+------------+------------+------------+------+----------+-----------------+
7 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT * FROM produk WHERE harga_jual < 5000000 AND harga_jual > 500000;
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
|  4 | M001 | Meja Makan |    1000000 |    2000000 |    5 |        3 |               2 |
|  6 | S002 | Kursi      |     500000 |     800000 |    4 |        2 |               3 |
|  7 | F005 | Kursi Jati |    1300000 |    2000000 |    5 |        2 |               3 |
+----+------+------------+------------+------------+------+----------+-----------------+
5 rows in set (0.054 sec)

//2.3
MariaDB [dbtoko1]> SELECT * FROM produk;
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
8 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT * from produk WHERE min_stok > stok;
+----+------+-----------+------------+------------+------+----------+-----------------+
| id | kode | nama      | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+-----------+------------+------------+------+----------+-----------------+
|  8 | G002 | Keranjang |       5000 |       8000 |    1 |        2 |               3 |
+----+------+-----------+------------+------------+------+----------+-----------------+
1 row in set (0.001 sec)

//2.4
MariaDB [dbtoko1]> SELECT * FROM pelanggan;
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir   | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua  | L    | PONTIANAK   | 2000-08-10 | Putra26@gmail.com |        1 |
|  4 | 00102 | Naruto         | KONOHAGURE | L    | KONOHA      | 1998-02-09 | Naruto@gmail.com  |        2 |
|  5 | 00103 | Sasuke         | KONOHAGURE | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com  |        3 |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
3 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT * FROM pelanggan ORDER BY tgl_lahir DESC;
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir   | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua  | L    | PONTIANAK   | 2000-08-10 | Putra26@gmail.com |        1 |
|  5 | 00103 | Sasuke         | KONOHAGURE | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com  |        3 |
|  4 | 00102 | Naruto         | KONOHAGURE | L    | KONOHA      | 1998-02-09 | Naruto@gmail.com  |        2 |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
3 rows in set (0.001 sec)

//2.5
MariaDB [dbtoko1]> SELECT * FROM pelanggan;
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir   | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua  | L    | PONTIANAK   | 2000-08-10 | Putra26@gmail.com |        1 |
|  4 | 00102 | Naruto         | KONOHAGURE | L    | KONOHA      | 1998-02-09 | Naruto@gmail.com  |        2 |
|  5 | 00103 | Sasuke         | KONOHAGURE | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com  |        3 |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
3 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT * FROM pelanggan WHERE tmp_lahir='Desa Konoha' AND jk='L';
+----+-------+----------------+------------+------+-------------+------------+------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir   | tgl_lahir  | email            | kartu_id |
+----+-------+----------------+------------+------+-------------+------------+------------------+----------+
|  5 | 00103 | Sasuke         | KONOHAGURE | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com |        3 |
+----+-------+----------------+------------+------+-------------+------------+------------------+----------+
1 row in set (0.001 sec)

//2.6
MariaDB [dbtoko1]> SELECT * FROM pelanggan;
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir   | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua  | L    | PONTIANAK   | 2000-08-10 | Putra26@gmail.com |        1 |
|  4 | 00102 | Naruto         | KONOHAGURE | L    | KONOHA      | 1998-02-09 | Naruto@gmail.com  |        2 |
|  5 | 00103 | Sasuke         | KONOHAGURE | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com  |        3 |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
3 rows in set (0.183 sec)

MariaDB [dbtoko1]> SELECT * FROM pelanggan where id IN (1,5);
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir   | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua  | L    | PONTIANAK   | 2000-08-10 | Putra26@gmail.com |        1 |
|  5 | 00103 | Sasuke         | KONOHAGURE | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com  |        3 |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
2 rows in set (0.033 sec)

//2.7

MariaDB [dbtoko1]> SELECT * FROM produk;
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
8 rows in set (0.002 sec)

MariaDB [dbtoko1]> SELECT * FROM produk WHERE harga_jual >= 500000 AND harga_jual <=6000000;
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 |
|  4 | M001 | Meja Makan |    1000000 |    2000000 |    5 |        3 |               2 |
|  6 | S002 | Kursi      |     500000 |     800000 |    4 |        2 |               3 |
|  7 | F005 | Kursi Jati |    1300000 |    2000000 |    5 |        2 |               3 |
+----+------+------------+------------+------------+------+----------+-----------------+
6 rows in set (0.002 sec)

//3.1
MariaDB [dbtoko1]> SELECT * FROM produk;
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
8 rows in set (0.002 sec)

MariaDB [dbtoko1]> SELECT * FROM produk WHERE kode LIKE 'K%' OR kode LIKE 'T%';
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
|  3 | K001 | Kulkas     |    4000000 |    5000000 |   10 |        6 |               1 |
|  5 | T001 | Taro       |       4000 |       5000 |    6 |        4 |               4 |
+----+------+------------+------------+------------+------+----------+-----------------+
4 rows in set (0.097 sec)

//3.2
//TAMPILKAN PRODUK dengan kode awalan Huruf M
MariaDB [dbtoko1]> SELECT * FROM produk WHERE kode LIKE 'M%';
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  4 | M001 | Meja Makan |    1000000 |    2000000 |    5 |        3 |               2 |
+----+------+------------+------------+------------+------+----------+-----------------+
1 row in set (0.044 sec)

//3.3
//PRODUK-PRODUK TV
MariaDB [dbtoko1]> SELECT * FROM produk WHERE id ='1' OR id ='2';
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | TV         |    3000000 |    4000000 |    3 |        2 |               1 |
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
+----+------+------------+------------+------------+------+----------+-----------------+
2 rows in set (0.039 sec)

//3.4
//Tampilkan pelanggan mengandung huruf Na
MariaDB [dbtoko1]> SELECT * FROM pelanggan;
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir   | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua  | L    | PONTIANAK   | 2000-08-10 | Putra26@gmail.com |        1 |
|  4 | 00102 | Naruto         | KONOHAGURE | L    | KONOHA      | 1998-02-09 | Naruto@gmail.com  |        2 |
|  5 | 00103 | Sasuke         | KONOHAGURE | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com  |        3 |
+----+-------+----------------+------------+------+-------------+------------+-------------------+----------+
3 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT * FROM pelanggan WHERE nama_pelanggan LIKE '%Na%';
+----+-------+----------------+------------+------+-----------+------------+------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir | tgl_lahir  | email            | kartu_id |
+----+-------+----------------+------------+------+-----------+------------+------------------+----------+
|  4 | 00102 | Naruto         | KONOHAGURE | L    | KONOHA    | 1998-02-09 | Naruto@gmail.com |        2 |
+----+-------+----------------+------------+------+-----------+------------+------------------+----------+
1 row in set (0.001 sec)

//3.5
MariaDB [dbtoko1]> SELECT * FROM pelanggan WHERE tmp_lahir NOT LIKE '%PONTIANAK%' nama_pelanggan LIKE '%Pu%';
+----+-------+----------------+------------+------+-----------+------------+------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir | tgl_lahir  | email            | kartu_id |
+----+-------+----------------+------------+------+-----------+------------+------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala dua  | L    | PONTIANAK | 1998-02-09 | Naruto@gmail.com |        2 |
+----+-------+----------------+------------+------+-----------+------------+------------------+----------+
1 row in set (0.001 sec)

//3.6
MariaDB [dbtoko1]> SELECT * FROM pelanggan WHERE SUBSTRING(nama_pelanggan, 2, 1) = 'A';
+----+-------+----------------+------------+------+-------------+------------+------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir   | tgl_lahir  | email            | kartu_id |
+----+-------+----------------+------------+------+-------------+------------+------------------+----------+
|  4 | 00102 | Naruto         | KONOHAGURE | L    | KONOHA      | 1998-02-09 | Naruto@gmail.com |        2 |
|  5 | 00103 | Sasuke         | KONOHAGURE | L    | Desa Konoha | 1999-06-01 | Sasuke@gmail.com |        3 |
+----+-------+----------------+------------+------+-------------+------------+------------------+----------+
2 rows in set (0.074 sec)

//4.1
MariaDB [dbtoko1]> SELECT * FROM produk;
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
8 rows in set (0.002 sec)

MariaDB [dbtoko1]> SELECT * FROM produk ORDER by harga_beli DESC LIMIT 2;
+----+------+--------+------------+------------+------+----------+-----------------+
| id | kode | nama   | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+--------+------------+------------+------+----------+-----------------+
|  3 | K001 | Kulkas |    4000000 |    5000000 |   10 |        6 |               1 |
|  1 | TV01 | TV     |    3000000 |    4000000 |    3 |        2 |               1 |
+----+------+--------+------------+------------+------+----------+-----------------+
2 rows in set (0.001 sec)

//4.2
MariaDB [dbtoko1]> SELECT * FROM produk WHERE harga_jual = (SELECT MIN(harga_jual) FROM produk);
+----+------+------+------------+------------+------+----------+-----------------+
| id | kode | nama | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------+------------+------------+------+----------+-----------------+
|  5 | T001 | Taro |       4000 |       5000 |    6 |        4 |               4 |
+----+------+------+------------+------------+------+----------+-----------------+
1 row in set (0.086 sec)

//4.3
MariaDB [dbtoko1]> SELECT * FROM produk ORDER BY stok DESC LIMIT 1;
+----+------+------------+------------+------------+------+----------+-----------------+
| id | kode | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------+------------+------------+------+----------+-----------------+
|  2 | TV02 | TV 21 inch |    2000000 |    3000000 |   10 |        3 |               1 |
+----+------+------------+------------+------------+------+----------+-----------------+
1 row in set (0.001 sec)

//4.4
MariaDB [dbtoko1]> SELECT * FROM produk ORDER BY stok ASC LIMIT 2;
+----+------+-----------+------------+------------+------+----------+-----------------+
| id | kode | nama      | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+-----------+------------+------------+------+----------+-----------------+
|  8 | G002 | Keranjang |       5000 |       8000 |    1 |        2 |               3 |
|  1 | TV01 | TV        |    3000000 |    4000000 |    3 |        2 |               1 |
+----+------+-----------+------------+------------+------+----------+-----------------+
2 rows in set (0.001 sec)

//4.5
MariaDB [dbtoko1]> SELECT * FROM pelanggan WHERE tgl_lahir = (SELECT MAX(tgl_lahir) FROM pelanggan);
+----+-------+----------------+-----------+------+-----------+------------+-------------------+----------+
| id | kode  | nama_pelanggan | alamat    | jk   | tmp_lahir | tgl_lahir  | email             | kartu_id |
+----+-------+----------------+-----------+------+-----------+------------+-------------------+----------+
|  1 | 00101 | Putra Aditya   | Kuala Dua | L    | PONTIANAK | 2000-08-10 | Putra26@gmail.com |        1 |
+----+-------+----------------+-----------+------+-----------+------------+-------------------+----------+
1 row in set (0.032 sec)

//4.6
MariaDB [dbtoko1]> SELECT * FROM pelanggan WHERE tgl_lahir = (SELECT MIN(tgl_lahir) FROM pelanggan);
+----+-------+----------------+------------+------+-----------+------------+------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir | tgl_lahir  | email            | kartu_id |
+----+-------+----------------+------------+------+-----------+------------+------------------+----------+
|  4 | 00102 | Naruto         | KONOHAGURE | L    | KONOHA    | 1998-02-09 | Naruto@gmail.com |        2 |
+----+-------+----------------+------------+------+-----------+------------+------------------+----------+
1 row in set (0.001 sec)