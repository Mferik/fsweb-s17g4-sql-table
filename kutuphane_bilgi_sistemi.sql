-- SQL ifadelerinizi buraya yazınız.

CREATE TABLE 'ogrenci'(
    'ogrno' BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    'ograd' VARCHAR NOT NULL,
    'ogrsoyad' VARCHAR NOT NULL,
    'cinsiyet' VARCHAR NOT NULL,
    'dtarih' DATETIME NOT NULL,
    'sinif' VARCHAR NOT NULL,
    'puan' INT UNSIGNED NOT NULL
)

ALTER TABLE 'ogrenci' ADD PRIMARY KEY 'ogrenci_ogrno_primary'('ogrno');


CREATE TABLE 'islem' (
    'islemno' BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    'ogrno' BIGINT UNSIGNED NOT NULL,
    'kitapno' BIGINT UNSIGNED NOT NULL,
    'atarih' DATETIME NOT NULL,
    'vtarih' DATETIME NOT NULL,
)

ALTER TABLE 'islem' ADD PRIMARY KEY 'islem_islemno_primary'('islemno')

CREATE TABLE 'kitap' (
    'kitapno' BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    'kitapadi' VARCHAR NOT NULL,
    'sayfasayisi' INT UNSIGNED NOT NULL,
    'puan' INT UNSIGNED NOT NULL,
    'yazarno' BIGINT UNSIGNED NOT NULL
    'turno' BIGINT UNSIGNED NOT NULL
)

ALTER TABLE 'kitap' ADD PRIMARY KEY 'kitap_kitapno_primary' ('kitapno')

CREATE TABLE 'yazar' (
    'yazarno' BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    'yazarad' VARCHAR NOT NULL,
    'yazarsoyad' VARCHAR NOT NULL
)

ALTER TABLE 'yazar' ADD PRIMARY KEY 'yazar_yazarno_primary' ('yazarno')

CREATE TABLE 'tur' (
    'turno' BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    'turadi' VARCHAR NOT NULL,
)

ALTER TABLE 'tur' ADD PRIMARY KEY 'tur_turno_primary' ('turno')


ALTER TABLE 'kitap' ADD CONSTRAINT 'kitap_yazarno_foreign' FOREIGN KEY('yazarno') REFERENCES 'yazar'('yazarno')

ALTER TABLE 'kitap' ADD CONSTRAINT 'kitap_turno_foreign' FOREIGN KEY('turno') REFERENCES 'tur'('turno')

ALTER TABLE 'islem' ADD CONSTRAINT 'islem_kitapno_foreign' FOREIGN KEY('kitapno') REFERENCES 'kitap'('kitapno')

ALTER TABLE 'islem' ADD CONSTRAINT 'islem_ogrno_foreign' FOREIGN KEY('ogrno') REFERENCES 'ogrenci'('ogrno')
