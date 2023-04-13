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
