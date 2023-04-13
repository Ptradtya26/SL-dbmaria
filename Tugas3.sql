1.	Berapa jumlah pelanggan yang tahun lahirnya_1998
MariaDB [dbtoko1]> SELECT * FROM pelanggan;
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
+----+-------+----------------+-------------+------+-------------+------------+-------------------+----------+
9 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT COUNT(tgl_lahir) FROM pelanggan WHERE YEAR(tgl_lahir)=1998;
+------------------+
| COUNT(tgl_lahir) |
+------------------+
|                1 |
+------------------+
1 row in set (0.001 sec)

2.	Berapa jumlah pelanggan perempuan yang tempat lahirnya di Jakarta
MariaDB [dbtoko1]> SELECT * FROM pelanggan;
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
+----+-------+----------------+-------------+------+-------------+------------+-------------------+----------+
9 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT COUNT(*) FROM pelanggan WHERE jk = 'P' AND tmp_lahir LIKE '%Jakarta%';
+----------+
| COUNT(*) |
+----------+
|        1 |
+----------+
1 row in set (0.195 sec)

3.	Berapa jumlah total stok semua produk yang harga jualnya dibawah 10rb
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
|  9 | M003 | Keramik    |    1000000 |    1700000 |   10 |        2 |               1 |
| 10 | X002 | Sapu       |      10000 |      17000 |   19 |       10 |               2 |
| 11 | X001 | Sapu Lidi  |       8000 |      10000 |    9 |        8 |               2 |
| 12 | A003 | Sepeda     |    1000000 |    1200000 |    8 |        6 |               1 |
+----+------+------------+------------+------------+------+----------+-----------------+
12 rows in set (0.040 sec)

MariaDB [dbtoko1]> SELECT COUNT(*) FROM produk WHERE stok > 0 AND harga_jual < 10000;
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
1 row in set (0.044 sec)


4.	Ada berapa produk yang mempunyai kode awal K
MariaDB [dbtoko1]> SELECT COUNT(*) FROM produk WHERE kode LIKE "%K%";
+----------+
| COUNT(*) |
+----------+
|        1 |
+----------+
1 row in set (0.001 sec)



5.	Berapa harga jual rata-rata produk yang diatas 1jt
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
|  9 | M003 | Keramik    |    1000000 |    1700000 |   10 |        2 |               1 |
| 10 | X002 | Sapu       |      10000 |      17000 |   19 |       10 |               2 |
| 11 | X001 | Sapu Lidi  |       8000 |      10000 |    9 |        8 |               2 |
| 12 | A003 | Sepeda     |    1000000 |    1200000 |    8 |        6 |               1 |
+----+------+------------+------------+------------+------+----------+-----------------+
12 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT AVG(harga_jual) FROM produk WHERE harga_jual >= 1000000;
+-----------------+
| AVG(harga_jual) |
+-----------------+
|         2700000 |
+-----------------+
1 row in set (0.001 sec)

6.	Tampilkan jumlah stok yang paling besar
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
|  9 | M003 | Keramik    |    1000000 |    1700000 |   10 |        2 |               1 |
| 10 | X002 | Sapu       |      10000 |      17000 |   19 |       10 |               2 |
| 11 | X001 | Sapu Lidi  |       8000 |      10000 |    9 |        8 |               2 |
| 12 | A003 | Sepeda     |    1000000 |    1200000 |    8 |        6 |               1 |
+----+------+------------+------------+------------+------+----------+-----------------+
12 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT MAX(stok) FROM produk;
+-----------+
| MAX(stok) |
+-----------+
|        19 |
+-----------+
1 row in set (0.013 sec)

7.	Ada berapa produk yang stoknya kurang dari minimal stok

MariaDB [dbtoko1]> SELECT COUNT(*) AS 'produk kurang dari minimal stok' FROM produk WHERE stok < min_stok;
+---------------------------------+
| produk kurang dari minimal stok |
+---------------------------------+
|                               1 |
+---------------------------------+
1 row in set (0.001 sec)

8.	Berapa total asset dari keseluruhan produk
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
|  9 | M003 | Keramik    |    1000000 |    1700000 |   10 |        2 |               1 |
| 10 | X002 | Sapu       |      10000 |      17000 |   19 |       10 |               2 |
| 11 | X001 | Sapu Lidi  |       8000 |      10000 |    9 |        8 |               2 |
| 12 | A003 | Sepeda     |    1000000 |    1200000 |    8 |        6 |               1 |
+----+------+------------+------------+------------+------+----------+-----------------+
12 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT SUM(harga_beli * stok) AS "total_asset" FROM produk;
+-------------+
| total_asset |
+-------------+
|   100791000 |
+-------------+
1 row in set (0.042 sec)

soal 3.3
1_Tampilkan_data produk : id, nama, stok dan informasi jika stok telah sampai batas minimal atau kurang dari minimum stok dengan informasi segera belanja jika tidak stok aman.

MariaDB [dbtoko1]> SELECT id, nama, stok,
    -> CASE
    -> WHEN stok < min_stok THEN "SEGERA BELANJA"
    -> ELSE "STOK AMAN"
    -> END AS status_produk
    -> FROM produk;
+----+------------+------+----------------+
| id | nama       | stok | status_produk  |
+----+------------+------+----------------+
|  1 | TV         |    3 | STOK AMAN      |
|  2 | TV 21 inch |   10 | STOK AMAN      |
|  3 | Kulkas     |   10 | STOK AMAN      |
|  4 | Meja Makan |    5 | STOK AMAN      |
|  5 | Taro       |    6 | STOK AMAN      |
|  6 | Kursi      |    4 | STOK AMAN      |
|  7 | Kursi Jati |    5 | STOK AMAN      |
|  8 | Keranjang  |    1 | SEGERA BELANJA |
|  9 | Keramik    |   10 | STOK AMAN      |
| 10 | Sapu       |   19 | STOK AMAN      |
| 11 | Sapu Lidi  |    9 | STOK AMAN      |
| 12 | Sepeda     |    8 | STOK AMAN      |
+----+------------+------+----------------+
12 rows in set (0.001 sec)

2.	Tampilkan_data pelanggan: id, nama, umur dan kategori umur : jika umur < 17 → muda, 17-55 → Dewasa, selainnya Tua

MariaDB [dbtoko1]> SELECT id, nama_pelanggan, (YEAR(NOW())-YEAR(tgl_lahir)) AS umur,
    -> CASE
    -> WHEN (YEAR(NOW())-YEAR(tgl_lahir)) < 17 THEN "MUDA"
    -> WHEN (YEAR(NOW())-YEAR(tgl_lahir)) >= 17 OR (YEAR(NOW())-YEAR(tgl_lahir)) <= 55 THEN "DEWASA"
    -> ELSE "TUA"
    -> END AS "kategori umur"
    -> FROM pelanggan;
+----+----------------+------+---------------+
| id | nama_pelanggan | umur | kategori umur |
+----+----------------+------+---------------+
|  1 | Putra Aditya   |   23 | DEWASA        |
|  4 | Naruto         |   25 | DEWASA        |
|  5 | Sasuke         |   24 | DEWASA        |
|  7 | Ani            |   27 | DEWASA        |
| 11 | Habibi         |   31 | DEWASA        |
| 13 | Agim           |   28 | DEWASA        |
| 15 | Yatim          |   32 | DEWASA        |
| 16 | Sari           |   32 | DEWASA        |
| 17 | Habiba         |   21 | DEWASA        |
+----+----------------+------+---------------+
9 rows in set (0.001 sec)

3.	Tampilkan_data produk: id, kode, nama, dan bonus untuk kode TV01 →DVD Player , K001 → Rice Cooker selain dari diatas Tidak Ada
MariaDB [dbtoko1]> SELECT id, kode, nama,
    ->     CASE
    ->         WHEN kode = "TV01" THEN "DVD Player"
    ->         WHEN kode = "K001" THEN "Rice Cooker"
    ->         ELSE "Tidak Ada"
    ->     END AS "bonus"
    -> FROM produk;
+----+------+------------+-------------+
| id | kode | nama       | bonus       |
+----+------+------------+-------------+
|  1 | TV01 | TV         | DVD Player  |
|  2 | TV02 | TV 21 inch | Tidak Ada   |
|  3 | K001 | Kulkas     | Rice Cooker |
|  4 | M001 | Meja Makan | Tidak Ada   |
|  5 | T001 | Taro       | Tidak Ada   |
|  6 | S002 | Kursi      | Tidak Ada   |
|  7 | F005 | Kursi Jati | Tidak Ada   |
|  8 | G002 | Keranjang  | Tidak Ada   |
|  9 | M003 | Keramik    | Tidak Ada   |
| 10 | X002 | Sapu       | Tidak Ada   |
| 11 | X001 | Sapu Lidi  | Tidak Ada   |
| 12 | A003 | Sepeda     | Tidak Ada   |
+----+------+------------+-------------+
12 rows in set (0.001 sec)


SOAL 4.4
1.	Tampilkan_data statistik jumlah tempat lahir pelanggan
MariaDB [dbtoko1]> SELECT tmp_lahir, COUNT(*) AS "total jumlah pelanggan" FROM pelanggan GROUP BY tmp_lahir;
+-------------+------------------------+
| tmp_lahir   | total jumlah pelanggan |
+-------------+------------------------+
| Bali        |                      1 |
| Depok       |                      1 |
| Desa Konoha |                      1 |
| Jakarta     |                      1 |
| KONOHA      |                      1 |
| PONTIANAK   |                      2 |
| Yogyakarta  |                      2 |
+-------------+------------------------+
7 rows in set (0.074 sec)

2.	Tampilkan jumlah statistik produk berdasarkan jenis produk
MariaDB [dbtoko1]> SELECT jenis_produk_id, COUNT(*) AS jml_produk FROM produk GROUP BY jenis_produk_id;
+-----------------+------------+
| jenis_produk_id | jml_produk |
+-----------------+------------+
|               1 |          5 |
|               2 |          3 |
|               3 |          3 |
|               4 |          1 |
+-----------------+------------+
4 rows in set (0.091 sec)

3.	Tampilkan_data pelanggan yang usianya dibawah rata usia pelanggan

MariaDB [dbtoko1]> SELECT nama_pelanggan, (YEAR(NOW())-YEAR(tgl_lahir)) AS usia FROM pelanggan WHERE (YEAR(NOW())-YEAR(tgl_lahir)) < (SELECT AVG((YEAR(NOW())-YEAR(tgl_lahi
r))) FROM pelanggan);
+----------------+------+
| nama_pelanggan | usia |
+----------------+------+
| Putra Aditya   |   23 |
| Naruto         |   25 |
| Sasuke         |   24 |
| Habiba         |   21 |
+----------------+------+
4 rows in set (0.027 sec)

4.	Tampilkan_data produk yang harganya diatas rata-rata harga produk
MariaDB [dbtoko1]> SELECT id, nama, harga_beli FROM produk WHERE harga_beli > (SELECT AVG(harga_beli) FROM produk);
+----+------------+------------+
| id | nama       | harga_beli |
+----+------------+------------+
|  1 | TV         |    3000000 |
|  2 | TV 21 inch |    2000000 |
|  3 | Kulkas     |    4000000 |
|  7 | Kursi Jati |    1300000 |
+----+------------+------------+
4 rows in set (0.002 sec)

5.	Tampilkan_data pelanggan yang memiliki kartu dimana iuran tahunan kartu diatas 90rb
MariaDB [dbtoko1]> SELECT * FROM kartu;
+----+-------+--------+--------+-------+
| id | kode  | nama   | diskon | iuran |
+----+-------+--------+--------+-------+
|  1 | 10111 | GOLD   |  10000 |  1000 |
|  2 | 10222 | PERAK  |   1000 |   100 |
|  3 | 10333 | SILVER |    100 |    10 |
+----+-------+--------+--------+-------+
3 rows in set (0.001 sec)

MariaDB [dbtoko1]> SELECT pelanggan.id, pelanggan.nama_pelanggan, kartu.kode, kartu.iuran FROM pelanggan
    ->     JOIN kartu ON pelanggan.kartu_id = kartu.id WHERE kartu.iuran > 900;
+----+----------------+-------+-------+
| id | nama_pelanggan | kode  | iuran |
+----+----------------+-------+-------+
|  1 | Putra Aditya   | 10111 |  1000 |
| 11 | Habibi         | 10111 |  1000 |
| 16 | Sari           | 10111 |  1000 |
| 17 | Habiba         | 10111 |  1000 |
+----+----------------+-------+-------+
4 rows in set (0.001 sec)


6.	Tampilkan statistik_data produk dimana harga produknya dibawah rata-rata harga produk secara keseluruhan

MariaDB [dbtoko1]> SELECT COUNT(*) AS jumlah_produk, MIN(harga_jual) AS harga_minimal, MAX(harga_jual) AS harga_maksimal,
    ->     AVG(harga_jual) AS rata_rata_harga FROM produk
    ->     WHERE harga_jual < (SELECT AVG(harga_jual) FROM produk);
+---------------+---------------+----------------+-----------------+
| jumlah_produk | harga_minimal | harga_maksimal | rata_rata_harga |
+---------------+---------------+----------------+-----------------+
|             6 |          5000 |        1200000 |          340000 |
+---------------+---------------+----------------+-----------------+
1 row in set (0.002 sec)

7.	Tampilkan_data pelanggan yang memiliki kartu dimana diskon kartu yang diberikan diatas 3%
MariaDB [dbtoko1]> SELECT pelanggan.id, pelanggan.nama_pelanggan, pelanggan.tgl_lahir, kartu.kode, kartu.diskon
    ->     FROM pelanggan JOIN kartu  ON pelanggan.kartu_id = kartu.id WHERE kartu.diskon > 0.03;
+----+----------------+------------+-------+--------+
| id | nama_pelanggan | tgl_lahir  | kode  | diskon |
+----+----------------+------------+-------+--------+
|  1 | Putra Aditya   | 2000-08-10 | 10111 |  10000 |
|  4 | Naruto         | 1998-02-09 | 10222 |   1000 |
|  5 | Sasuke         | 1999-06-01 | 10333 |    100 |
|  7 | Ani            | 1996-02-01 | 10222 |   1000 |
| 11 | Habibi         | 1992-06-02 | 10111 |  10000 |
| 13 | Agim           | 1995-01-09 | 10222 |   1000 |
| 15 | Yatim          | 1991-04-07 | 10222 |   1000 |
| 16 | Sari           | 1991-02-02 | 10111 |  10000 |
| 17 | Habiba         | 2002-02-02 | 10111 |  10000 |
+----+----------------+------------+-------+--------+
9 rows in set (0.059 sec)


