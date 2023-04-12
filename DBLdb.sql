Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\user>cd\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 10
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

MariaDB [dbtoko1]> desc kartu;
+--------+-------------+------+-----+---------+----------------+
| Field  | Type        | Null | Key | Default | Extra          |
+--------+-------------+------+-----+---------+----------------+
| id     | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode   | varchar(10) | YES  | UNI | NULL    |                |
| nama   | varchar(30) | NO   |     | NULL    |                |
| diskon | double      | YES  |     | 0       |                |
| iuran  | double      | YES  |     | 0       |                |
+--------+-------------+------+-----+---------+----------------+
5 rows in set (0.053 sec)

MariaDB [dbtoko1]> SELECT * FROM kartu;
+----+-------+--------+--------+-------+
| id | kode  | nama   | diskon | iuran |
+----+-------+--------+--------+-------+
|  1 | 10111 | GOLD   |  20000 |  2000 |
|  2 | 10112 | SILVER |  15000 |  1500 |
+----+-------+--------+--------+-------+
2 rows in set (0.001 sec)

//MENGINPUT_DATA_dengan_menyebutkan_nama_kolom 

MariaDB [dbtoko1]> INSERT INTO kartu (kode,nama,diskon,iuran) VALUES
    -> ('20021','PERAK',10000,1000);
Query OK, 1 row affected (0.058 sec)

MariaDB [dbtoko1]> SELECT * FROM kartu;
+----+-------+--------+--------+-------+
| id | kode  | nama   | diskon | iuran |
+----+-------+--------+--------+-------+
|  1 | 10111 | GOLD   |  20000 |  2000 |
|  2 | 10112 | SILVER |  15000 |  1500 |
|  3 | 20021 | PERAK  |  10000 |  1000 |
+----+-------+--------+--------+-------+
3 rows in set (0.001 sec)

//MENGUPDATE_ATAU_MENGANTI_NAMA_inputan
MariaDB [dbtoko1]> UPDATE kartu SET nama='platinum' WHERE id = 3;
Query OK, 1 row affected (0.388 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [dbtoko1]> SELECT * FROM kartu;
+----+-------+----------+--------+-------+
| id | kode  | nama     | diskon | iuran |
+----+-------+----------+--------+-------+
|  1 | 10111 | GOLD     |  20000 |  2000 |
|  2 | 10112 | SILVER   |  15000 |  1500 |
|  3 | 20021 | platinum |  10000 |  1000 |
+----+-------+----------+--------+-------+
3 rows in set (0.001 sec)

//MEDELETE_DATA
MariaDB [dbtoko1]> DELETE FROM kartu WHERE id = 3;
Query OK, 1 row affected (0.122 sec)
//MENAMBAHKAN_DATA
MariaDB [dbtoko1]> INSERT INTO kartu (kode,nama,diskon,iuran) VALUES
    -> ('20022','PERAK',10000,1000);
Query OK, 1 row affected (0.092 sec)

MariaDB [dbtoko1]> SELECT * FROM kartu;
+----+-------+--------+--------+-------+
| id | kode  | nama   | diskon | iuran |
+----+-------+--------+--------+-------+
|  1 | 10111 | GOLD   |  20000 |  2000 |
|  2 | 10112 | SILVER |  15000 |  1500 |
|  4 | 20022 | PERAK  |  10000 |  1000 |
+----+-------+--------+--------+-------+
3 rows in set (0.001 sec)

MariaDB [dbtoko1]>