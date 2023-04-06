//Masuk kedalam mariadb dengan command promt xampp
C:\Users\user>cd \xampp\mysql\bin
C:\xampp\mysql\bin\mysql -u root -p
//UNTUK MELIHAT SELURUH DATABASE
MariaDB [(none)]> show database;
//MEMBUATDATABASE
CREATE DATABASE dbtoko1;
//MENGGUNAKAN DB
MariaDB [(dbtoko1)]> USE dbtoko1;
//CREATE TABLE KARTU
MariaDB [(dbtoko1)]> CREATE TABLE kartu
//CREATE TABLE PELANGGAN
MariaDB [(dbtoko1)]> CREATE TABLE pelanggan
//CREATE TABLE PESANAN
MariaDB [(dbtoko1)]> CREATE TABLE pesanan
//ALTER TABLE
MariaDB [(dbtoko1)]> ALTER TABLE jenis_produk
-> ADD COLUMN keterangan varchar(30) AFTER nama;
Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\user>cd \xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.27-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use dbtoko1
Database changed
MariaDB [dbtoko1]> showtables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MariaDB server version for the right syntax to use near 'sho
wtables' at line 1
MariaDB [dbtoko1]> show tables;
+-------------------+
| Tables_in_dbtoko1 |
+-------------------+
| jenis_produk      |
| kartu             |
| pelanggan         |
| pembayaran        |
| pesanan           |
+-------------------+
5 rows in set (0.001 sec)

MariaDB [dbtoko1]> ALTER TABLE jenis_produk
    -> CHANGE keterangan ket varchar (30);
Query OK, 0 rows affected (0.213 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> desc jenis_produk;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| nama  | varchar(20) | YES  |     | NULL    |                |
| ket   | varchar(30) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.003 sec)

MariaDB [dbtoko1]> ALTER TABLE jenis_produk
    -> MODIFY ket varchar(50) after nama;
Query OK, 0 rows affected (0.145 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> desc jenis_produk;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| nama  | varchar(20) | YES  |     | NULL    |                |
| ket   | varchar(50) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.003 sec)

Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\user>cd \xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.27-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use dbtoko1
Database changed
MariaDB [dbtoko1]> showtables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MariaDB server version for the right syntax to use near 'sho
wtables' at line 1
MariaDB [dbtoko1]> show tables;
+-------------------+
| Tables_in_dbtoko1 |
+-------------------+
| jenis_produk      |
| kartu             |
| pelanggan         |
| pembayaran        |
| pesanan           |
+-------------------+
5 rows in set (0.001 sec)

MariaDB [dbtoko1]> ALTER TABLE jenis_produk
    -> CHANGE keterangan ket varchar (30);
Query OK, 0 rows affected (0.213 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> desc jenis_produk;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| nama  | varchar(20) | YES  |     | NULL    |                |
| ket   | varchar(30) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.003 sec)

MariaDB [dbtoko1]> ALTER TABLE jenis_produk
    -> MODIFY ket varchar(50) after nama;
Query OK, 0 rows affected (0.145 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> desc jenis_produk;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| nama  | varchar(20) | YES  |     | NULL    |                |
| ket   | varchar(50) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.003 sec)

Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\user>cd \xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.27-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use dbtoko1
Database changed
MariaDB [dbtoko1]> showtables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MariaDB server version for the right syntax to use near 'sho
wtables' at line 1
MariaDB [dbtoko1]> show tables;
+-------------------+
| Tables_in_dbtoko1 |
+-------------------+
| jenis_produk      |
| kartu             |
| pelanggan         |
| pembayaran        |
| pesanan           |
+-------------------+
5 rows in set (0.001 sec)

MariaDB [dbtoko1]> ALTER TABLE jenis_produk
    -> CHANGE keterangan ket varchar (30);
Query OK, 0 rows affected (0.213 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> desc jenis_produk;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| nama  | varchar(20) | YES  |     | NULL    |                |
| ket   | varchar(30) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.003 sec)

MariaDB [dbtoko1]> ALTER TABLE jenis_produk
    -> MODIFY ket varchar(50) after nama;
Query OK, 0 rows affected (0.145 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> desc jenis_produk;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| nama  | varchar(20) | YES  |     | NULL    |                |
| ket   | varchar(50) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.003 sec)

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
| pesanan           |
+-------------------+
5 rows in set (0.001 sec)


//membuat_Table PRODUK

MariaDB [dbtoko1]> CREATE table produk(
    -> id int auto_increment primary key,
    -> kode varchar(10) unique,
    -> nama varchar(45),
    -> harga_beli DOUBLE,
    -> harga_jual DOUBLE,
    -> stok INT(11),
    -> min_stok INT(11),
    -> jenis_produk int(11) not null unique);
Query OK, 0 rows affected (0.319 sec)

MariaDB [dbtoko1]> show tables;
+-------------------+
| Tables_in_dbtoko1 |
+-------------------+
| jenis_produk      |
| kartu             |
| pelanggan         |
| pembayaran        |
| pesanan           |
| produk            |
+-------------------+
6 rows in set (0.002 sec)

//membuat_Table pesanan items
MariaDB [dbtoko1]> CREATE table pesanan_items(
    -> id int auto_increment primary key,
    -> produk INT(11),
    -> pesanan INT(11),
    -> qty INT(11),
    -> harga DOUBLE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MariaDB server version for the right syntax to use near '' a
t line 6
MariaDB [dbtoko1]> CREATE table pesanan_items(
    -> id int auto_increment primary key,
    -> produk INT(11),
    -> pesanan INT(11),
    -> qty INT(11),
    -> harga DOUBLE);
Query OK, 0 rows affected (0.499 sec)

MariaDB [dbtoko1]> show tables;
+-------------------+
| Tables_in_dbtoko1 |
+-------------------+
| jenis_produk      |
| kartu             |
| pelanggan         |
| pembayaran        |
| pesanan           |
| pesanan_items     |
| produk            |
+-------------------+
7 rows in set (0.001 sec)

//membuat_Table VENDOR
MariaDB [dbtoko1]> CREATE TABLE vendor(
    -> id int auto_increment primary key,
    -> nomor VARCHAR(4),
    -> nama VARCHAR(40),
    -> kota VARCHAR(30),
    -> kontak VARCHAR(30));
Query OK, 0 rows affected (0.220 sec)

MariaDB [dbtoko1]> show tables;
+-------------------+
| Tables_in_dbtoko1 |
+-------------------+
| jenis_produk      |
| kartu             |
| pelanggan         |
| pembayaran        |
| pesanan           |
| pesanan_items     |
| produk            |
| vendor            |
+-------------------+
8 rows in set (0.002 sec)


//membuat_Table PEMBELIAN
MariaDB [dbtoko1]> CREATE TABLE pembelian(
    -> id int auto_increment primary key,
    -> tanggal VARCHAR(45),
    -> nomor varchar(10),
    -> produk int(11),
    -> jumlah int(11),
    -> Harga double,
    -> vendor int(11));
Query OK, 0 rows affected (0.486 sec)

MariaDB [dbtoko1]> Show tables;
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
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| id        | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode      | varchar(10) | YES  | UNI | NULL    |                |
| nama      | varchar(45) | YES  |     | NULL    |                |
| jk        | char(1)     | YES  |     | NULL    |                |
| tmp_lahir | varchar(20) | YES  |     | NULL    |                |
| tgl_lahir | date        | YES  |     | NULL    |                |
| email     | varchar(30) | YES  |     | NULL    |                |
| kartu_id  | int(11)     | NO   |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
8 rows in set (0.004 sec)

//menambahkan column alamat
MariaDB [dbtoko1]> ALTER TABLE pelanggan
    -> ADD COLUMN IF NOT EXISTS
    -> alamat varchar(40) AFTER stok;
ERROR 1054 (42S22): Unknown column 'stok' in 'pelanggan'
MariaDB [dbtoko1]> ALTER TABLE pelanggan
    -> ADD COLUMN IF NOT EXISTS
    -> alamat varchar(40);
Query OK, 0 rows affected (0.130 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> desc pelanggan;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| id        | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode      | varchar(10) | YES  | UNI | NULL    |                |
| nama      | varchar(45) | YES  |     | NULL    |                |
| jk        | char(1)     | YES  |     | NULL    |                |
| tmp_lahir | varchar(20) | YES  |     | NULL    |                |
| tgl_lahir | date        | YES  |     | NULL    |                |
| email     | varchar(30) | YES  |     | NULL    |                |
| kartu_id  | int(11)     | NO   |     | NULL    |                |
| alamat    | varchar(40) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
9 rows in set (0.005 sec)

//ubah kolom nama pelanggan

MariaDB [dbtoko1]> ALTER TABLE pelanggan
    -> CHANGE nama nama_pelanggan varchar(45) NOT NULL;
Query OK, 0 rows affected (1.169 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [dbtoko1]> desc pelanggan;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| id             | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode           | varchar(10) | YES  | UNI | NULL    |                |
| nama_pelanggan | varchar(45) | NO   |     | NULL    |                |
| jk             | char(1)     | YES  |     | NULL    |                |
| tmp_lahir      | varchar(20) | YES  |     | NULL    |                |
| tgl_lahir      | date        | YES  |     | NULL    |                |
| email          | varchar(30) | YES  |     | NULL    |                |
| kartu_id       | int(11)     | NO   |     | NULL    |                |
| alamat         | varchar(40) | YES  |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
9 rows in set (0.005 sec)

//ubah tipedata
MariaDB [dbtoko1]> ALTER TABLE pelanggan
    -> MODIFY nama_pelanggan varhcar(50)
    -> AFTER jk;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MariaDB server version for the right syntax to use near '(50
)
AFTER jk' at line 2
MariaDB [dbtoko1]> ALTER TABLE pelanggan
    -> MODIFY nama_pelanggan varchar(50);
Query OK, 0 rows affected (0.593 sec)
Records: 0  Duplicates: 0  Warnings: 0

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
