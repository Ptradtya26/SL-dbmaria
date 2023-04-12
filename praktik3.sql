Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\user>cd\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
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
9 rows in set (0.001 sec)

MariaDB [dbtoko1]> desc pelanggan;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| id             | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode           | varchar(10) | YES  | UNI | NULL    |                |
| nama_pelanggan | varchar(50) | YES  |     | NULL    |                |
| jk             | char(1)     | YES  |     | NULL    |                |
| tmp_lahir      | varchar(20) | YES  |     | NULL    |                |
| tgl_lahir      | date        | YES  |     | NULL    |                |
| email          | varchar(30) | YES  |     | NULL    |                |
| kartu_id       | int(11)     | NO   |     | NULL    |                |
| alamat         | varchar(40) | YES  |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
9 rows in set (0.005 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0001','PUTRA','L','Pontianak','2000-01-01','Ptra2@gmail',1);
Query OK, 1 row affected (0.290 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0002','Merah','L','Mempawah','2000-02-01','Merah11@gmail.com',2);
Query OK, 1 row affected (0.146 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0003','Biru','L','Jawai','1998-04-03','Biru3@gmail.com',3);
Query OK, 1 row affected (0.056 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0004','Hijau','L','Sambas','2002-01-09','Hijau55@gmail.com',4);
Query OK, 1 row affected (0.095 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0005','Hitam','L','Singkawang','2000-02-03','Hitam32@gmail.com',5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MariaDB server version for the right syntax to use near '' a
t line 2
MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0005','Hitam','L','Singkawang','2000-02-03','Hitam32@gmail.com',5);
Query OK, 1 row affected (0.075 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0006','Abu','P','Kualadua','2002-01-05','Abu32@gmail.com',6);
Query OK, 1 row affected (0.101 sec)

Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\user>cd\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
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
9 rows in set (0.001 sec)

MariaDB [dbtoko1]> desc pelanggan;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| id             | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode           | varchar(10) | YES  | UNI | NULL    |                |
| nama_pelanggan | varchar(50) | YES  |     | NULL    |                |
| jk             | char(1)     | YES  |     | NULL    |                |
| tmp_lahir      | varchar(20) | YES  |     | NULL    |                |
| tgl_lahir      | date        | YES  |     | NULL    |                |
| email          | varchar(30) | YES  |     | NULL    |                |
| kartu_id       | int(11)     | NO   |     | NULL    |                |
| alamat         | varchar(40) | YES  |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
9 rows in set (0.005 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0001','PUTRA','L','Pontianak','2000-01-01','Ptra2@gmail',1);
Query OK, 1 row affected (0.290 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0002','Merah','L','Mempawah','2000-02-01','Merah11@gmail.com',2);
Query OK, 1 row affected (0.146 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0003','Biru','L','Jawai','1998-04-03','Biru3@gmail.com',3);
Query OK, 1 row affected (0.056 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0004','Hijau','L','Sambas','2002-01-09','Hijau55@gmail.com',4);
Query OK, 1 row affected (0.095 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0005','Hitam','L','Singkawang','2000-02-03','Hitam32@gmail.com',5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MariaDB server version for the right syntax to use near '' a
t line 2
MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0005','Hitam','L','Singkawang','2000-02-03','Hitam32@gmail.com',5);
Query OK, 1 row affected (0.075 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0006','Abu','P','Kualadua','2002-01-05','Abu32@gmail.com',6);
Query OK, 1 row affected (0.101 sec)

Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\user>cd\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
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
9 rows in set (0.001 sec)

MariaDB [dbtoko1]> desc pelanggan;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| id             | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode           | varchar(10) | YES  | UNI | NULL    |                |
| nama_pelanggan | varchar(50) | YES  |     | NULL    |                |
| jk             | char(1)     | YES  |     | NULL    |                |
| tmp_lahir      | varchar(20) | YES  |     | NULL    |                |
| tgl_lahir      | date        | YES  |     | NULL    |                |
| email          | varchar(30) | YES  |     | NULL    |                |
| kartu_id       | int(11)     | NO   |     | NULL    |                |
| alamat         | varchar(40) | YES  |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
9 rows in set (0.005 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0001','PUTRA','L','Pontianak','2000-01-01','Ptra2@gmail',1);
Query OK, 1 row affected (0.290 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0002','Merah','L','Mempawah','2000-02-01','Merah11@gmail.com',2);
Query OK, 1 row affected (0.146 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0003','Biru','L','Jawai','1998-04-03','Biru3@gmail.com',3);
Query OK, 1 row affected (0.056 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0004','Hijau','L','Sambas','2002-01-09','Hijau55@gmail.com',4);
Query OK, 1 row affected (0.095 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0005','Hitam','L','Singkawang','2000-02-03','Hitam32@gmail.com',5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MariaDB server version for the right syntax to use near '' a
t line 2
MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0005','Hitam','L','Singkawang','2000-02-03','Hitam32@gmail.com',5);
Query OK, 1 row affected (0.075 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0006','Abu','P','Kualadua','2002-01-05','Abu32@gmail.com',6);
Query OK, 1 row affected (0.101 sec)

Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\user>cd\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
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
9 rows in set (0.001 sec)

MariaDB [dbtoko1]> desc pelanggan;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| id             | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode           | varchar(10) | YES  | UNI | NULL    |                |
| nama_pelanggan | varchar(50) | YES  |     | NULL    |                |
| jk             | char(1)     | YES  |     | NULL    |                |
| tmp_lahir      | varchar(20) | YES  |     | NULL    |                |
| tgl_lahir      | date        | YES  |     | NULL    |                |
| email          | varchar(30) | YES  |     | NULL    |                |
| kartu_id       | int(11)     | NO   |     | NULL    |                |
| alamat         | varchar(40) | YES  |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
9 rows in set (0.005 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0001','PUTRA','L','Pontianak','2000-01-01','Ptra2@gmail',1);
Query OK, 1 row affected (0.290 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0002','Merah','L','Mempawah','2000-02-01','Merah11@gmail.com',2);
Query OK, 1 row affected (0.146 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0003','Biru','L','Jawai','1998-04-03','Biru3@gmail.com',3);
Query OK, 1 row affected (0.056 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0004','Hijau','L','Sambas','2002-01-09','Hijau55@gmail.com',4);
Query OK, 1 row affected (0.095 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0005','Hitam','L','Singkawang','2000-02-03','Hitam32@gmail.com',5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MariaDB server version for the right syntax to use near '' a
t line 2
MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0005','Hitam','L','Singkawang','2000-02-03','Hitam32@gmail.com',5);
Query OK, 1 row affected (0.075 sec)

MariaDB [dbtoko1]> INSERT INTO pelanggan (kode, nama_pelanggan, jk, tmp_lahir, t
gl_lahir, email, kartu_id) VALUES
    -> ('0006','Abu','P','Kualadua','2002-01-05','Abu32@gmail.com',6);
Query OK, 1 row affected (0.101 sec)

MariaDB [dbtoko1]> SELECT * FROM pelanggan;
+----+------+----------------+------+------------+------------+-----------------
--+----------+--------+
| id | kode | nama_pelanggan | jk   | tmp_lahir  | tgl_lahir  | email
| kartu_id | alamat |
+----+------+----------------+------+------------+------------+-----------------
--+----------+--------+
|  1 | 0001 | PUTRA          | L    | Pontianak  | 2000-01-01 | Ptra2@gmail
  |        1 | NULL   |
|  2 | 0002 | Merah          | L    | Mempawah   | 2000-02-01 | Merah11@gmail.co
m |        2 | NULL   |
|  3 | 0003 | Biru           | L    | Jawai      | 1998-04-03 | Biru3@gmail.com
  |        3 | NULL   |
|  4 | 0004 | Hijau          | L    | Sambas     | 2002-01-09 | Hijau55@gmail.co
m |        4 | NULL   |
|  5 | 0005 | Hitam          | L    | Singkawang | 2000-02-03 | Hitam32@gmail.co
m |        5 | NULL   |
|  6 | 0006 | Abu            | P    | Kualadua   | 2002-01-05 | Abu32@gmail.com
  |        6 | NULL   |
+----+------+----------------+------+------------+------------+-----------------
--+----------+--------+
6 rows in set (0.061 sec)

MariaDB [dbtoko1]>
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

MariaDB [dbtoko1]> desc jenis_produk;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| nama  | varchar(20) | YES  |     | NULL    |                |
| ket   | varchar(50) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.048 sec)

MariaDB [dbtoko1]> INSERT INTO jenis_produk (nama,ket) VALUES
    -> ('elektronik','tersedia'),
    -> ('makanan','tersedia'),
    -> ('minuman','tidak tersedia'),
    -> ('furniture',' tersedia');
Query OK, 4 rows affected (0.130 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> SELECt * FROM jenis_produk
    -> ;
+----+------------+----------------+
| id | nama       | ket            |
+----+------------+----------------+
|  1 | elektronik | tersedia       |
|  2 | makanan    | tersedia       |
|  3 | minuman    | tidak tersedia |
|  4 | furniture  |  tersedia      |
+----+------------+----------------+
4 rows in set (0.001 sec)

MariaDB [dbtoko1]>


MariaDB [dbtoko1]>
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

MariaDB [dbtoko1]> desc jenis_produk;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| nama  | varchar(20) | YES  |     | NULL    |                |
| ket   | varchar(50) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.048 sec)

MariaDB [dbtoko1]> INSERT INTO jenis_produk (nama,ket) VALUES
    -> ('elektronik','tersedia'),
    -> ('makanan','tersedia'),
    -> ('minuman','tidak tersedia'),
    -> ('furniture',' tersedia');
Query OK, 4 rows affected (0.130 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> SELECt * FROM jenis_produk
    -> ;
+----+------------+----------------+
| id | nama       | ket            |
+----+------------+----------------+
|  1 | elektronik | tersedia       |
|  2 | makanan    | tersedia       |
|  3 | minuman    | tidak tersedia |
|  4 | furniture  |  tersedia      |
+----+------------+----------------+
4 rows in set (0.001 sec)

MariaDB [dbtoko1]

MariaDB [dbtoko1]>
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

MariaDB [dbtoko1]> desc jenis_produk;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| nama  | varchar(20) | YES  |     | NULL    |                |
| ket   | varchar(50) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.048 sec)

MariaDB [dbtoko1]> INSERT INTO jenis_produk (nama,ket) VALUES
    -> ('elektronik','tersedia'),
    -> ('makanan','tersedia'),
    -> ('minuman','tidak tersedia'),
    -> ('furniture',' tersedia');
Query OK, 4 rows affected (0.130 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> SELECt * FROM jenis_produk
    -> ;
+----+------------+----------------+
| id | nama       | ket            |
+----+------------+----------------+
|  1 | elektronik | tersedia       |
|  2 | makanan    | tersedia       |
|  3 | minuman    | tidak tersedia |
|  4 | furniture  |  tersedia      |
+----+------------+----------------+
4 rows in set (0.001 sec)

MariaDB [dbtoko1]>

MariaDB [dbtoko1]>
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

MariaDB [dbtoko1]> desc jenis_produk;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| nama  | varchar(20) | YES  |     | NULL    |                |
| ket   | varchar(50) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.048 sec)

MariaDB [dbtoko1]> INSERT INTO jenis_produk (nama,ket) VALUES
    -> ('elektronik','tersedia'),
    -> ('makanan','tersedia'),
    -> ('minuman','tidak tersedia'),
    -> ('furniture',' tersedia');
Query OK, 4 rows affected (0.130 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> SELECt * FROM jenis_produk
    -> ;
+----+------------+----------------+
| id | nama       | ket            |
+----+------------+----------------+
|  1 | elektronik | tersedia       |
|  2 | makanan    | tersedia       |
|  3 | minuman    | tidak tersedia |
|  4 | furniture  |  tersedia      |
+----+------------+----------------+
4 rows in set (0.001 sec)

MariaDB [dbtoko1]>