create database KutuphaneDB
use KutuphaneDB

----------------------------------------------------------------------
--KATEGORİLER TABLOSU
----------------------------------------------------------------------

create table Kategoriler(
Kategori_ID int primary key identity(1,1),
Kategori_Adi nvarchar(30) not null)

insert into Kategoriler (Kategori_Adi) values
('Roman'),
('Bilim Kurgu'),
('Tarih'),
('Dram'),
('Fantastik'),
('Polisiye / Suç'),
('Biyografi / Otobiyografi'),
('Kişisel Gelişim'),
('Psikoloji'),
('Felsefe'),
('Şiir'),
('Dünya Klasikleri'),
('Türk Klasikleri'),
('Çocuk Kitapları'),
('Macera / Aksiyon'),
('Korku / Gerilim'),
('Akademik / Eğitim'),
('Ekonomi / İş Dünyası'),
('Sanat / Tasarım'),
('Gezi / Seyahat')

select * from Kategoriler

----------------------------------------------------------------------
--YAZARLAR TABLOSU
----------------------------------------------------------------------

create table Yazarlar(
Yazar_ID int primary key identity(1,1),
Yazar_Adi nvarchar(30) not null,
Yazar_Soyad nvarchar(30) not null)

insert into Yazarlar (Yazar_Adi, Yazar_Soyad) values
('Sabahattin', 'Ali'),
('Ahmet Hamdi', 'Tanpınar'),
('Yaşar', 'Kemal'),
('Oğuz', 'Atay'),
('Zülfü', 'Livaneli'),
('Orhan', 'Pamuk'),
('İlber', 'Ortaylı'),
('Halil', 'İnalcık'),
('Peyami', 'Safa'),
('Reşat Nuri', 'Güntekin'),
('Halid Ziya', 'Uşaklıgil'),
('Ömer', 'Seyfettin'),
('Namık', 'Kemal'),
('Orhan Veli', 'Kanık'),
('Cemal', 'Süreya'),
('Nazım', 'Hikmet'),
('Aziz', 'Nesin'),
('Ayşe', 'Kulin'),
('Elif', 'Şafak'),
('İhsan Oktay', 'Anar')

select * from Yazarlar

----------------------------------------------------------------------
--YAYINEVLERİ TABLOSU
----------------------------------------------------------------------

create table YayinEvleri(
Yayinevi_ID int primary key identity (1,1),
Yayinevi_Adi varchar(100) not null,
Yayinevi_Telefon varchar(20) not null)

insert into YayinEvleri (Yayinevi_Adi, Yayinevi_Telefon) values
('Can Yayınları', '02122525675'),
('İş Bankası Kültür Yayınları', '02122523991'),
('Yapı Kredi Yayınları', '02122524700'),
('İletişim Yayınları', '02125162260'),
('İthaki Yayınları', '02163483697'),
('Doğan Kitap', '02123737700'),
('Pegasus Yayınları', '02122442350'),
('Everest Yayınları', '02125133420'),
('Metis Yayınları', '02122454696'),
('Kırmızı Kedi Yayınevi', '02122448982'),
('Kronik Kitap', '02122431323'),
('Timaş Yayınları', '02125112424'),
('Destek Yayınları', '02122522242'),
('Ötüken Neşriyat', '02122510350'),
('Alfa Yayınları', '02125115303')

select * from YayinEvleri

----------------------------------------------------------------------
--UYELER TABLOSU
----------------------------------------------------------------------

create table Uyeler(
Uye_ID int primary key identity(1,1),
Uye_Adi nvarchar(30) not null,
Uye_Soyad nvarchar(30) not null,
Uye_Telefon varchar(20) not null,
Uye_Email nvarchar(254))

insert into Uyeler (Uye_Adi,Uye_Soyad,Uye_Telefon,Uye_Email) values
('Ahmet', 'Yılmaz', '05551112233', 'ahmet.yilmaz@mail.com'),
('Elif', 'Kaya', '05322223344', 'elif.kaya@mail.com'),
('Burak', 'Demir', '05443334455', 'burak.demir@mail.com'),
('Merve', 'Şahin', '05054445566', 'merve.sahin@mail.com'),
('Can', 'Öztürk', '05335556677', 'can.ozturk@mail.com'),
('Zeynep', 'Çelik', '05426667788', 'zeynep.celik@mail.com'),
('Mustafa', 'Aydın', '05527778899', 'mustafa.aydin@mail.com'),
('Gamze', 'Arslan', '05068889900', 'gamze.arslan@mail.com'),
('Ömer', 'Yıldız', '05359990011', 'omer.yildiz@mail.com'),
('Aslı', 'Güneş', '05411112233', 'asli.gunes@mail.com'),
('Emre', 'Kılıç', '05532223344', 'emre.kilic@mail.com'),
('Sena', 'Yurt', '05073334455', 'sena.yurt@mail.com'),
('Hakan', 'Kocaman', '05364445566', 'hakan.kocaman@mail.com'),
('Büşra', 'Yalçın', '05455556677', 'busra.yalcin@mail.com'),
('Murat', 'Erdoğan', '05546667788', 'murat.erdogan@mail.com')

----------------------------------------------------------------------
--KİTAPLAR TABLOSU
----------------------------------------------------------------------

create table Kitaplar(
Kitap_ID int primary key identity(1,1),
Kitap_Adi nvarchar(100) not null,
Kitap_Sayfasayisi int not null,
Kategori_ID int,
Yazar_ID int,
Yayınevi_ID int)

insert into Kitaplar (Kitap_Adi, Kitap_Sayfasayisi, Kategori_ID, Yazar_ID, Yayınevi_ID) values
('Kürk Mantolu Madonna', 160, 1, 1, 3),        
('Saatleri Ayarlama Enstitüsü', 382, 1, 2, 4), 
('İnce Memed', 436, 1, 3, 3),                
('Tutunamayanlar', 724, 1, 4, 4),              
('Serenad', 484, 1, 5, 6),                     
('Masumiyet Müzesi', 592, 1, 6, 4),            
('Gazi Mustafa Kemal Atatürk', 480, 3, 7, 11), 
('Osmanlı İmparatorluğu Klasik Çağ', 344, 3, 8, 11), 
('Dokuzuncu Hariciye Koğuşu', 112, 1, 9, 14),  
('Çalıkuşu', 408, 1, 10, 2),                   
('Aşk-ı Memnu', 424, 13, 11, 1),               
('Kaşağı', 96, 14, 12, 2),                    
('İntibah', 168, 13, 13, 2),                   
('Bütün Şiirleri', 250, 11, 14, 3),            
('Sevda Sözleri', 320, 11, 15, 3),             
('Memleketimden İnsan Manzaraları', 550, 11, 16, 3), 
('Yaşar Ne Yaşar Ne Yaşamaz', 328, 1, 17, 1),  
('Veda', 390, 1, 18, 8),                       
('Aşk', 420, 1, 19, 6),                       
('Puslu Kıtalar Atlası', 238, 5, 20, 4)

select * from Kitaplar

----------------------------------------------------------------------
--ÖDÜNÇ İŞLEMLER TABLOSU
----------------------------------------------------------------------

create table OduncIslemleri(
Islem_ID INT PRIMARY KEY IDENTITY(1,1),
Kitap_ID INT,  
Uye_ID INT,
AlisTarihi date default GETDATE(),
TeslimTarihi date)

insert into OduncIslemleri (Kitap_ID, Uye_ID, AlisTarihi, TeslimTarihi) values
(1, 3, '2026-05-01', '2026-05-15'), 
(2, 5, '2026-05-03', '2026-05-17'),
(3, 1, '2026-05-10', null),          
(7, 12, '2026-05-12', '2026-05-26'),
(5, 2, '2026-05-15', null),          
(10, 8, '2026-05-18', '2026-06-01'),
(15, 15, '2026-05-20', null),         
(20, 4, '2026-05-22', null),         
(12, 9, '2026-05-05', '2026-05-19'),
(4, 11, '2026-05-08', '2026-05-22'),
(18, 7, '2026-05-25', null),         
(9, 6, '2026-05-10', '2026-05-24'),
(14, 13, '2026-05-26', null),        
(11, 10, '2026-05-28', null),        
(6, 2, '2026-05-15', '2026-05-30')

select * from OduncIslemleri

----------------------------------------------------------------------
--JOIN SORGULARI
----------------------------------------------------------------------

-- Hangi Kitabı Kim Yazmış?
SELECT Kitaplar.Kitap_Adi, Yazarlar.Yazar_Adi, Yazarlar.Yazar_Soyad FROM Kitaplar
INNER JOIN Yazarlar ON Kitaplar.Yazar_ID = Yazarlar.Yazar_ID

-- Kitapların Kategorisi ve Yayınevi Nedir?
SELECT Kitaplar.Kitap_Adi, Kategoriler.Kategori_Adi, YayinEvleri.Yayinevi_Adi FROM Kitaplar
INNER JOIN Kategoriler ON Kitaplar.Kategori_ID = Kategoriler.Kategori_ID
INNER JOIN YayinEvleri ON Kitaplar.Yayınevi_ID = YayinEvleri.Yayinevi_ID

-- Hangi Üye, Hangi Kitabı Ne Zaman Aldı?
SELECT Uyeler.Uye_Adi, Uyeler.Uye_Soyad, Kitaplar.Kitap_Adi, OduncIslemleri.AlisTarihi FROM OduncIslemleri
INNER JOIN Uyeler ON OduncIslemleri.Uye_ID = Uyeler.Uye_ID
INNER JOIN Kitaplar ON OduncIslemleri.Kitap_ID = Kitaplar.Kitap_ID

-- Şu An Hangi Kitaplar Dışarıda/Teslim Edilmemiş?
SELECT Uyeler.Uye_Adi, Uyeler.Uye_Soyad, Kitaplar.Kitap_Adi, Yazarlar.Yazar_Adi, Yazarlar.Yazar_Soyad FROM OduncIslemleri
INNER JOIN Uyeler ON OduncIslemleri.Uye_ID = Uyeler.Uye_ID
INNER JOIN Kitaplar ON OduncIslemleri.Kitap_ID = Kitaplar.Kitap_ID
INNER JOIN Yazarlar ON Kitaplar.Yazar_ID = Yazarlar.Yazar_ID
WHERE OduncIslemleri.TeslimTarihi IS NULL

------------------------------------------------------------------------
-- HAVING SORGULARI
------------------------------------------------------------------------

-- 1'den fazla kitabı olan Yayınevleri Hangileri?
SELECT YayinEvleri.Yayinevi_Adi, COUNT(Kitaplar.Kitap_ID) AS Sistemdeki_Kitap_Sayisi FROM Kitaplar
INNER JOIN YayinEvleri ON Kitaplar.Yayınevi_ID = YayinEvleri.Yayinevi_ID
GROUP BY YayinEvleri.Yayinevi_Adi
HAVING COUNT(Kitaplar.Kitap_ID) > 1

-- Kütüphaneden 2 veya daha fazla kitap ödünç almış üyeler kimler?
SELECT Uyeler.Uye_Adi, Uyeler.Uye_Soyad, COUNT(OduncIslemleri.Islem_ID) AS Toplam_Odunc_Alma FROM OduncIslemleri
INNER JOIN Uyeler ON OduncIslemleri.Uye_ID = Uyeler.Uye_ID
GROUP BY Uyeler.Uye_Adi, Uyeler.Uye_Soyad
HAVING COUNT(OduncIslemleri.Islem_ID) >= 2

-- Ortalama sayfa sayısı 300'den büyük olan kategoriler hangileri?
SELECT Kategoriler.Kategori_Adi, AVG(Kitaplar.Kitap_Sayfasayisi) AS Ortalama_Sayfa FROM Kitaplar
INNER JOIN Kategoriler ON Kitaplar.Kategori_ID = Kategoriler.Kategori_ID
GROUP BY Kategoriler.Kategori_Adi
HAVING AVG(Kitaplar.Kitap_Sayfasayisi) > 300
