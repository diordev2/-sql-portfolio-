## 📘 1️⃣ Beginning SQL (29 laboratoriya ishlari)

**Ma’lumotlar bazasini boshidan o‘rganish, asosiy SELECT so‘rovlarini yozish va natijalarni filtrlash.**

**Skills:**
| Skill | Laboratoriya ishlari soni |
|-------|--------------------------|
| Filtering data with `WHERE` | 8 |
| Querying SQL from Python | 5 |
| Basic Select statements | 4 |
| Basic inline aggregations | 4 |
| Limiting results and Pagination with `LIMIT/OFFSET` | 3 |
| Order results with `ORDER BY` | 3 |
| Beginning SQL Capstone Projects | 2 |

**Tags:**
`SQL` (21) | `WHERE` (8) | `MySQL` (7) | `MySQL Python` (5) | `Inline Aggregations` (3) | `LIMIT` (3) | `SELECT Statement` (3) | `SQL Pagination` (3) | `ORDER BY` (2) | `Postgres` (2)

## Sana. 2025/04/11

## SQL SELECT Statements 


## 🎬 Sakila DVD Store: SQL SELECT & ALIAS Mastery Lab
📋 Lab Overview
Sakila Database - simulyatsiya qilingan DVD ijara do'koni ma'lumotlar bazasida ishlaydigan ushbu laboratoriya ishi SQL ning asosiy SELECT va ALIAS iboralarini mukammal o'rgatishga qaratilgan. Haqiqiy biznes ma'lumotlari bilan ishlash orqali siz ma'lumotlarni samarali olish va taqdim etish ko'nikmalarini o'zlashtirasiz.

🎯 Lab Maqsadlari
Asosiy O'quv Natijalari:
✅ SQL SELECT sintaksisini mukammal o'zlashtirish

✅ Ustun va jadval ALIAS laridan samarali foydalanish

✅ Haqiqiy biznes ma'lumotlari bilan ishlash tajribasi

✅ Ma'lumotlarni chiroyli va tushunarli taqdim etish

O'rgatiladigan Texnik Ko'nikmalar:
🔹 Basic SELECT statement tuzish

🔹 Column aliases yaratish va ishlatish

🔹 Table aliases qo'llash

🔹 Ma'lumotlarni mazmunli guruhlash

🔹 Natijalarni professional ko'rinishda taqdim etish



##👥 Mijozlar Ism va Familiyalarini Olish
📋 Topshiriq
Customer jadvalidan barcha mijozlarning ism va familiyalarini olish

🛠 SQL So'rovi
```sql
SELECT 
    FirstName,
    LastName
FROM Customer;
```
📊 Natija
Har bir mijozning ismi va familiyasi alohida ustunlarda ko'rsatiladi.

## 🎬 Filmlar Sarlavha va Chiqish Yillarini Olish
📋 Topshiriq
Film jadvalidan filmlarning sarlavhasi va chiqish yilini olish, ustun nomlarini o'qish qulay bo'lishi uchun o'zgartirish

🛠 SQL So'rovi
```sql
SELECT 
    title AS "Title",
    release_year AS "Release Year"
FROM film;
```
📊 Natija
Har bir filmning quyidagi ma'lumotlari yangi nomlar bilan ko'rsatiladi.

## 👨‍💼 Xodimlar Ismlari va Manzillarini Ko'rsatish
📋 Topshiriq
Staff jadvalidan barcha xodimlarning ismlari va manzil ma'lumotlarini olish

🛠 SQL So'rovi
```sql
SELECT 
    first_name AS "First Name",
    last_name AS "Last Name",
    address_id AS "Address"
FROM staff;
```
📊 Natija
Har bir xodimning quyidagi ma'lumotlari yangi nomlar bilan ko'rsatiladi.

## 📋 Ijaralar Ma'lumotlarini Olish
📋 Topshiriq
Rental jadvalidan barcha ijara yozuvlarining ID va qaytarish sanalarini olish

🛠 SQL So'rovi
``` sql
SELECT 
    rental_id AS "Rental ID",
    return_date AS "Return Date"
FROM rental;
```
📊 Natija
Har bir ijara yozuvining quyidagi ma'lumotlari ko'rsatiladi.

## 🏙️ Shaharlar Ma'lumotlarini Olish
📋 Topshiriq
City jadvalidan barcha shaharlarning ID va nomlarini ko'rsatish

🛠 SQL So'rovi
``` sql
SELECT 
    city_id AS "City ID",
    city AS "City Name"
FROM city;
```
📊 Natija
Har bir shaharning quyidagi ma'lumotlari ko'rsatiladi.

## 👥 Mijozlar Ma'lumotlarini To'liq Olish
📋 Topshiriq
Customer jadvalidan barcha mijozlar haqidagi to'liq ma'lumotlarni olish

🛠 SQL So'rovi
```sql
SELECT * FROM customer;
```
📊 Natija
Customer jadvalidagi BARCHA ustunlar va barcha mijoz yozuvlari to'liq ko'rsatiladi.

## 🏪 Do'kon Ma'lumotlarini Olish
📋 Topshiriq
Store jadvalidan barcha do'konlarning ID va so'nggi yangilanish vaqtlarini olish

🛠 SQL So'rovi
```sql
SELECT 
    store_id AS "Store ID",
    last_update AS "Last Update"
FROM store;
```
📊 Natija
Har bir do'konning quyidagi ma'lumotlari ko'rsatiladi.

## 🎬 Filmlar Ro'yxatini Olish
📋 Topshiriq
Film jadvalidan barcha filmlarning ID, sarlavha va davomiylik ma'lumotlarini chiqarish

🛠 SQL So'rovi
``` sql
SELECT 
    film_id AS "Film ID",
    title AS "Title",
    length AS "Length (minutes)"
FROM film;
```
📊 Natija
Har bir filmning quyidagi ma'lumotlari ko'rsatiladi.

##  📋 Ijara Ma'lumotlarini Ko'rsatish
📋 Topshiriq
Rental jadvalidan barcha ijara yozuvlarining ID, ijara sanasi va qaytarish sanalarini ko'rsatish

🛠 SQL So'rovi
``` sql
SELECT 
    rental_id AS "Rental ID",
    rental_date AS "Rental Date",
    return_date AS "Return Date"
FROM rental;
```
📊 Natija
Har bir ijara yozuvining quyidagi ma'lumotlari ko'rsatiladi.

## 🏠 Manzil Ma'lumotlarini Tanlash
📋 Topshiriq
Address jadvalidan manzil, tuman va pochta indeksi ustunlarini tanlash va ularga yangi nomlar berish

🛠 SQL So'rovi
``` sql
SELECT 
    address AS "Address",
    district AS "District",
    postal_code AS "Postal Code"
FROM address;
```
📊 Natija
Har bir manzil yozuvining quyidagi ma'lumotlari yangi nomlar bilan ko'rsatiladi.

## 🎵 Chinook Database: SQL SELECT Mastery Project
📋 Project Overview
Chinook Database - raqamli media do'koni ma'lumotlar bazasi yordamida SQL ning asosiy SELECT iborasini o'rganing. Ma'lumotlarni olish va proyeksiya qilishning asosiy sintaksisini o'rganib, SQL ni qulay va qiziqarli tarzda o'zlashtiring.

🎯 Project Maqsadlari
Asosiy O'quv Maqsadlari:
✅ SQL SELECT iborasini tushunish va qo'llash

✅ Jadval ma'lumotlarini o'qish va tahlil qilish

✅ Ma'lumotlarni proyeksiya qilish (kerakli ustunlarni tanlash)

✅ SQL sintaksisini amaliy topshiriqlar orqali o'zlashtirish

O'rgatiladigan Ko'nikmalar:
🔹 Basic SELECT statement yozish

🔹 Ma'lumotlarni jadvallardan olish

🔹 Natijalarni tahlil qilish va tushunish

🔹 SQL ni oson va qulay usulda o'rganish


# 👥 Mijozlar Ma'lumotlarini Olish

## 📋 Topshiriq
Customer jadvalidan mijozlarning ismi, familiyasi, emaili va mamlakatini tanlash

## 🛠 SQL So'rovi

```sql
SELECT 
    FirstName,
    LastName, 
    Email,
    Country
FROM Customer;
```

## 📊 Natija
Har bir mijolning quyidagi ma'lumotlari ko'rsatiladi:
- **FirstName** - Mijozning ismi
- **LastName** - Mijozning familiyasi  
- **Email** - Mijozning elektron pochtasi
- **Country** - Mijozning mamlakat

## 📋 Topshiriq
Album jadvalidan faqat Title ustunini tanlab, uni 'Album Name' nomi bilan ko'rsatish

🛠 SQL So'rovi
```sql
SELECT Title AS 'Album Name'
FROM Album;
```

📊 Natija
Albom jadvalidagi har bir albomning nomi yangi 'Album Name' ustuni sifatida ko'rsatiladi.

##🎵 Track Jadvalidan Barcha Ma'lumotlarni Olish
📋 Topshiriq
Track jadvalidan barcha ustunlarni tanlash

🛠 SQL So'rovi
```sql
SELECT * FROM Track;
```
📊 Natija
Track jadvalidagi barcha ustunlar va yozuvlar to'liq ko'rsatiladi.

##🎵 Playlist Ma'lumotlarini Olish (Twist bilan)
📋 Topshiriq
Playlist jadvalidan Id va Name ustunlarini tanlash, lekin qiziqaril o'zgartirish bilan

🛠 SQL So'rovi
```sql
SELECT 
Id AS 'Playlist ID',
    Name AS 'Playlist Name'
FROM Playlist;
```
📊 Natija
Har bir playlistning:
Playlist ID - playlist identifikatori
Playlist Name - playlist nomi KATTA HARFLARda ko'rsatiladi.

## 🏠 Address Jadvalidan Barcha Ma'lumotlarni Olish
📋 Topshiriq
Address jadvalidan barcha ustunlarni tanlash

🛠 SQL So'rovi
```sql
SELECT * FROM Address;
```
📊 Natija
Address jadvalidagi barcha ustunlar va manzil yozuvlari to'liq ko'rsatiladi.

## 📦 Product Jadvalidan Ma'lumotlarni Olish
📋 Topshiriq
Product jadvalidan quyidagi ustunlarni tanlash

🛠 SQL So'rovi
```sql
SELECT * FROM Product;
```
📊 Natija
Product jadvalidagi barcha ustunlar ko'rsatiladi.

##👤 Mijozlar Ma'lumotlarini Tanlash va Qayta Nomlash
📋 Topshiriq
Customer jadvalidan quyidagi ustunlarni tanlash va ularga yangi nomlar berish:

🛠 SQL So'rovi
```sql
SELECT 
    CustomerID AS ID,
    Title,
    FirstName AS "First Name",
    LastName AS "Last Name",
    EmailAddress AS Email
FROM Customer;
```
📊 Natija
Har bir mijolning quyidagi ma'lumotlari yangi nomlar bilan ko'rsatiladi.


## 🗺️ World Database: SQL SELECT & ALIAS Mastery Lab
📋 Lab Maqsadi
Ushbu laboratoriya ishi World Database (Dunyo Ma'lumotlar Bazasi) yordamida SQL ning asosiy SELECT va ALIAS iboralarini o'rgatishga qaratilgan. Talabalar mamlakatlar, shaharlar va tillar haqidagi ma'lumotlarni samarali olish va taqdim etish ko'nikmalarini rivojlantirishadi.

🎯 O'quv Maqsadlari
Texnik Ko'nikmalar:
✅ SQL SELECT iboralarini to'g'ri qo'llash

✅ Ustunlar va jadvallarga ALIAS (laqab) berish

✅ Ma'lumotlarni filtrlash va saralash

✅ Hisoblangan maydonlar yaratish

✅ Ma'lumotlarni guruhlash va umumlashtirish

Amaliy Ko'nikmalar:
🔍 Ma'lumotlarni tahlil qilish

📊 Natijalarni aniq va tushunarli taqdim etish

🛠️ Murakkab so'rovlarni yozish

📈 Demografik va iqtisodiy ko'rsatkichlarni hisoblash

## 🏙️ Shahar Ma'lumotlarini Olish
📋 Topshiriq
City jadvalidan barcha shahar yozuvlarini olish

🛠 SQL So'rovi
```sql
SELECT * FROM city;
```
📊 Natija
City jadvalidagi barcha ma'lumotlar ko'rsatiladi.

## 🏙️ Shahar Nomi va Mamlakat Kodini Olish
📋 Topshiriq
City jadvalidan faqat Name va CountryCode ustunlarini tanlash

🛠 SQL So'rovi
``` sql
SELECT 
    Name,
    CountryCode
FROM city;
```
📊 Natija
Har bir shahar uchun quyidagi ma'lumotlar ko'rsatiladi.

## 🌍 Mamlakat Ma'lumotlarini To'liq Olish
📋 Topshiriq
Country jadvalidan barcha yozuvlarni olish, lekin Name ustunini "Country Name" va Continent ustunini "Continent Name" deb nomlash, qolgan ustunlar esa o'zgartirilmasin.

🛠 SQL So'rovi
```sql
SELECT 
    Code,
    Name AS "Country Name",
    Continent AS "Continent Name",
    Region,
    SurfaceArea,
    IndepYear,
    Population,
    LifeExpectancy,
    GNP,
    GNPOld,
    LocalName,
    GovernmentForm,
    HeadOfState,
    Capital,
    Code2
FROM country;
```
📊 Natija
Country jadvalidagi barcha ma'lumotlar yangi nomlar bilan ko'rsatiladi.

## 🌍 Mamlakat Asosiy Ma'lumotlarini Olish
📋 Topshiriq
Country jadvalidan faqat Code, Name va Continent ustunlarini tanlab, ularga yangi nomlar berish

🛠 SQL So'rovi
``` sql
SELECT 
    Code AS "Country Code",
    Name AS "Country Name", 
    Continent AS "Continent Name"
FROM country;
```
📊 Natija
Har bir mamlakat uchun quyidagi asosiy ma'lumotlar ko'rsatiladi.

## 🗣️ Mamlakat Tillari Ma'lumotlarini Olish
📋 Topshiriq
CountryLanguage jadvalidan barcha yozuvlarni olish

🛠 SQL So'rovi
```sql
SELECT * FROM countrylanguage;
```
📊 Natija
CountryLanguage jadvalidagi barcha ma'lumotlar ko'rsatiladi.

## 🗣️ Mamlakat Tillari Ma'lumotlarini Olish
📋 Topshiriq
CountryLanguage jadvalidan barcha yozuvlarni olish, lekin Language ustunini "Language Name" deb nomlash, qolgan ustunlar esa o'zgartirilmasin.

🛠 SQL So'rovi
```sql
SELECT 
    CountryCode,
    Language AS "Language Name",
    IsOfficial,
    Percentage
FROM countrylanguage;
```
📊 Natija
CountryLanguage jadvalidagi barcha ma'lumotlar yangi nom bilan ko'rsatiladi.

## 🗣️ Mamlakat Tillari Asosiy Ma'lumotlarini Olish
📋 Topshiriq
CountryLanguage jadvalidan faqat CountryCode, Language va Percentage ustunlarini tanlab, ularga yangi nomlar berish

🛠 SQL So'rovi
```sql
SELECT 
    CountryCode AS "Country Code",
    Language AS "Language Name",
    Percentage AS "Language Percentage"
FROM countrylanguage;
```
📊 Natija
Har bir mamlakat tili uchun quyidagi asosiy ma'lumotlar ko'rsatiladi.

## 🌍 Mamlakat Asosiy Ma'lumotlarini Olish
📋 Topshiriq
Country jadvalidan faqat Name, SurfaceArea va Population ustunlarini tanlash

🛠 SQL So'rovi
```sql
SELECT 
    Name,
    SurfaceArea,
    Population
FROM country;
```
📊 Natija
Har bir mamlakat uchun quyidagi asosiy ma'lumotlar ko'rsatiladi.

## 🌍 Mamlakat Rahbariyat Ma'lumotlarini Olish
📋 Topshiriq
Country jadvalidan faqat Code, Name, HeadOfState va Capital ustunlarini tanlab, ularga yangi nomlar berish

🛠 SQL So'rovi
```sql
SELECT 
    Code AS "Country Code",
    Name AS "Country Name",
    HeadOfState AS "Head Of State",
    Capital AS "Capital City"
FROM country;
```
📊 Natija
Har bir mamlakat uchun quyidagi ma'lumotlar ko'rsatiladi.

## 🏙️ Shahar Ma'lumotlarini Olish
📋 Topshiriq
City jadvalidan Name, CountryCode, District va Population ustunlarini tanlab, ularga yangi nomlar berish

🛠 SQL So'rovi
```sql
SELECT 
    Name AS "City Name",
    CountryCode AS "Country Code",
    District AS "City District",
    Population AS "City Population"
FROM city;
```
📊 Natija
Har bir shahar uchun quyidagi ma'lumotlar yangi nomlar bilan ko'rsatiladi.


## Practice SELECT with Postgres Pagila
🎬 Pagila Video Rental Store: SQL SELECT & ALIAS Lab
📋 Lab Overview
Pagila Database - simulyatsiya qilingan video ijara magazini ma'lumotlar bazasida ishlaydigan ushbu laboratoriya ishi SQL ning asosiy SELECT va ALIAS iboralarini o'rgatishga qaratilgan. 10 ta aniq vazifa orqali siz real hayotdagi ma'lumotlar bilan ishlash va ma'lumotlarni olish ko'nikmalarini o'zlashtirasiz.

🎯 Lab Maqsadlari
Asosiy Fokus:
✅ SQL SELECT sintaksisini o'zlashtirish

✅ ALIAS lardan samarali foydalanish

✅ Realistik ma'lumotlar bilan ishlash

✅ Ma'lumotlarni chiroyli taqdim etish

O'rganiladigan Konceptlar:
🔹 Basic SELECT statements

🔹 Column aliases

🔹 Table aliases

🔹 Data retrieval techniques

🔹 Result presentation

## 🎬 Film Ma'lumotlarini To'liq Olish
📋 Topshiriq
Film jadvalidan barcha ustunlarni tanlash

🛠 SQL So'rovi
```sql
SELECT * FROM film;
```
📊 Natija
Film jadvalidagi BARCHA ustunlar va barcha film yozuvlari to'liq ko'rsatiladi.

## 👤 Mijozlar Asosiy Ma'lumotlarini Olish
📋 Topshiriq
Customer jadvalidan mijozlarning ID, ismi va familiyasini tanlash

🛠 SQL So'rovi
```sql
SELECT 
    customer_id,
    first_name,
    last_name
FROM customer;
```
📊 Natija
Har bir mijozning quyidagi asosiy ma'lumotlari ko'rsatiladi.

## 👤 Mijozlar Ism va Familiyalarini Olish
📋 Topshiriq
Customer jadvalidan mijozlarning ism va familiyalarini tanlash, natijani "firstname" va "lastname" nomlari bilan ko'rsatish

🛠 SQL So'rovi
```sql
SELECT 
    first_name AS firstname,
    last_name AS lastname
FROM customer;
```
📊 Natija
Har bir mijozning quyidagi ma'lumotlari yangi nomlar bilan ko'rsatiladi.

## 👤 Mijozlar To'liq Ismini Birlashtirish
📋 Topshiriq
Customer jadvalidan mijozlarning ism va familiyalarini birlashtirib, to'liq ism sifatida ko'rsatish

🛠 SQL So'rovi
```sql
SELECT 
    CONCAT(first_name, ' ', last_name) AS fullname
FROM customer;
 ```
📊 Natija
Har bir mijozning ismi va familiyasi birlashtirilib, bitta "fullname" ustunida ko'rsatiladi:

fullname - mijozning to'liq ismi (ism + bo'shliq + familiya).

## 💬 Tillar Ro'yxatini Olish
📋 Topshiriq
Language jadvalidan barcha tillarni tanlash va natijani "language" nomi bilan ko'rsatish

🛠 SQL So'rovi
```sql
SELECT 
    name AS language
FROM language;
```
📊 Natija
Language jadvalidagi barcha tillar "language" ustuni sifatida ko'rsatiladi:
language - til nomi (aslida name ustuni)

## 💰 Film Narxlari Ma'lumotlarini Olish
📋 Topshiriq
Film jadvalidan barcha filmlarning ijara narxi va almashtirish narxini olish

🛠 SQL So'rovi
``` sql
SELECT 
    rental_rate AS rentalrate,
    replacement_cost AS replacementcost
FROM film;
```
📊 Natija
Har bir filmning quyidagi narx ma'lumotlari yangi nomlar bilan ko'rsatiladi:
rentalrate - film ijaraga olish narxi (aslida rental_rate)
replacementcost - filmni almashtirish narxi (aslida replacement_cost).

## 👨‍💼 Xodimlar Ismlari va Elektron Pochtalarini Ro'yxatlash
📋 Topshiriq
Staff jadvalidan barcha xodimlarning ismi, familiyasi va elektron pochtasini chiqarish

🛠 SQL So'rovi
```sql
SELECT 
    first_name,
    last_name,
    email
FROM staff;
```
📊 Natija
Har bir xodimning quyidagi ma'lumotlari ko'rsatiladi.

## 🏪 Do'konlar Ro'yxatini Olish
📋 Topshiriq
Store jadvalidan barcha do'konlarni ro'yxatlash

🛠 SQL So'rovi
```sql
SELECT * FROM store;
```
📊 Natija
Store jadvalidagi barcha do'kon yozuvlari ko'rsatiladi.

## 💳 2022-yil Aprel To'lovlarini Ro'yxatlash
📋 Topshiriq
payment_p2022_04 jadvalidan 2022-yil aprel oyidagi barcha to'lovlarning ma'lumotlarini chiqarish

🛠 SQL So'rovi
```sql
SELECT 
    payment_id,
    amount,
    payment_date
FROM payment_p2022_04;
```
📊 Natija
2022-yil aprel oyidagi har bir to'lovning quyidagi ma'lumotlari ko'rsatiladi.

## 🏠 Mijozlarning Manzil Ma'lumotlarini Olish
📋 Topshiriq
Mijozlarning barcha manzil ma'lumotlarini olish uchun address va customer jadvallarini birlashtirish

🛠 SQL So'rovi
 ``` sql
SELECT address,address2,district,city_id,postal_code
FROM address;
```
📊 Natija
Har bir mijozning quyidagi manzil ma'lumotlari ko'rsatiladi.


### 🔍 SQL WHERE Clause: Data Filtering Mastery
📋 Loyiha Haqida
SQL WHERE bandi yordamida ma'lumotlarni filtrlash san'atini o'zlashtiring. 8 ta amaliy loyiha orqali ma'lumotlar bazasidan aniq kerakli ma'lumotlarni olishni, turli filtr shartlari, taqqoslash operatorlari va mantiqiy operatorlardan foydalanishni o'rganing.

🎯 O'quv Maqsadlari
Asosiy Filtrlash Ko'nikmalari:
✅ SQL WHERE bandi sintaksisini o'zlashtirish

✅ Taqqoslash operatorlarini qo'llash (=, >, <, !=, va h.k.)

✅ Mantiqiy operatorlardan foydalanish (AND, OR, NOT)

✅ Naqsh moslashtirish (LIKE, IN, BETWEEN)

✅ NULL qiymatlar bilan ishlash

✅ Bir nechta filtr shartlarini birlashtirish

Real Hayotdagi Qo'llanilish:
🔹 Mijoz ma'lumotlarini manzil va faollik bo'yicha filtrlash

🔹 Ma'lum sana oralig'idagi moliyaviy yozuvlarni olish

🔹 Kategoriya va narx bo'yicha maxsus mahsulotlarni topish

🔹 Bo'lim va ish natijalari bo'yicha xodimlar ma'lumotlarini tahlil qilish

 ## 🎬 Sakila Video Rental: SQL WHERE va ORDER BY Laboratoriyasi
📋 Laboratoriya Maqsadi
SQL ning WHERE va ORDER BY iboralari yordamida ma'lumotlarni filtrlash va tartiblash asoslarini amaliy otqazish. Sakila ma'lumotlar bazasi - video ijara do'koni simulyatsiyasi.

🎯 Laboratoriya Maqsadlari
O'zlashtiriladigan Asosiy Ko'nikmalar:
✅ Turli operatorlar yordamida WHERE bandida filtrlash

✅ Bir nechta ustunlar bo'yicha ORDER BY bilan tartiblash

✅ Filtrlash va tartiblashni birlashtirish

✅ Haqiqiy video ijara biznesi ma'lumotlari bilan ishlash

## # 📧 Mijozning Elektron Pochtasi

## 📋 Topshiriq
Sakila bazasidagi customer jadvalidan 135-ID li mijozning elektron pochtasini topish

## 🛠 SQL So'rovi

```sql
SELECT email 
FROM customer 
WHERE customer_id = 135;
```

## 📊 Natija
135-ID li mijozning elektron pochtasi ko'rsatiladi:

- **email** - mijozning elektron pochta manzili

**Misol natija:**

| email |
|-------|
| [mijoz@email.com] |

**Izoh:**
- So'rov faqat bitta natija qaytaradi (customer_id=135 bo'lgan mijoz)
- Agar bunday mijoz mavjud bo'lmasa, natija bo'sh bo'ladi
- Sakila bazasi - bu MySQL uchun namuna film va video ijara bazasi

  # 🏷️ Kategoriya Nomini Topish

## 📋 Topshiriq
Sakila bazasidagi category jadvalidan 8-ID li kategoriya nomini topish

## 🛠 SQL So'rovi

```sql
SELECT name 
FROM category 
WHERE category_id = 8;
```

## 📊 Natija
8-ID li kategoriyaning nomi ko'rsatiladi:

- **name** - kategoriya nomi

**Kutilayotgan natija:**

| name |
|------|
| Family |

**Izoh:**
- So'rov faqat bitta natija qaytaradi (category_id=8 bo'lgan kategoriya)
- Sakila bazasida odatda 8-ID "Family" (Oila) kategoriyasiga tegishli
- Agar bunday kategoriya mavjud bo'lmasa, natija bo'sh bo'ladi

# 👨‍💼 Xodimning Ismini Topish

## 📋 Topshiriq
Sakila bazasidagi staff jadvalidan 2-ID li xodimning ismini topish

## 🛠 SQL So'rovi

```sql
SELECT first_name 
FROM staff 
WHERE staff_id = 2;
```

## 📊 Natija
2-ID li xodimning ismi ko'rsatiladi:

- **first_name** - xodimning ismi

**Kutilayotgan natija:**

| first_name |
|------------|
| Jon |

**Izoh:**
- So'rov faqat bitta natija qaytaradi (staff_id=2 bo'lgan xodim)
- Sakila bazasida odatda 2-ID "Jon" ismli xodimga tegishli
- Agar bunday xodim mavjud bo'lmasa, natija bo'sh bo'ladi

# 👨‍💼 Jon'dan Boshqa Xodimni Topish

## 📋 Topshiriq
Sakila bazasidagi staff jadvalidan Jon emas, boshqa xodimning ismini topish

## 🛠 SQL So'rovi

```sql
SELECT first_name 
FROM staff 
WHERE first_name != 'Jon';
```

**Yoki alternativ variant:**

```sql
SELECT first_name 
FROM staff 
WHERE staff_id != 2;
```

## 📊 Natija
Jon bo'lmagan xodimning ismi ko'rsatiladi:

- **first_name** - xodimning ismi

# 💰 $5 dan Qimmat Ijara Narxli Filmlar

## 📋 Topshiriq
Sakila bazasidagi film jadvalidan ijara narxi $5 dan yuqori bo'lgan filmlarni tekshirish

## 🛠 SQL So'rovi

```sql
SELECT COUNT(*) 
FROM film 
WHERE rental_rate > 5;
```

**Yoki mavjud filmlarni ko'rish uchun:**

```sql
SELECT title, rental_rate 
FROM film 
WHERE rental_rate > 5 
LIMIT 5;
```

## 📊 Natija

**Natija: ✅ HA**

Sakila bazasida ijara narxi $5 dan yuqori bo'lgan filmlar MAVJUD.


**Izoh:**
- Film jadvalida `rental_rate` ustuni mavjud
- Ba'zi filmlarning ijara narxi $5.99 ga teng
- Standart ijara narxlari: $0.99, $2.99, $4.99, $5.99
- $5.99 - bu eng yuqori ijara narxi bazada

# 🎬 2006-yilgacha Chiqqan Filmlar

## 📋 Topshiriq
Sakila bazasidagi film jadvalidan 2006-yilgacha chiqqan filmlarni tekshirish

## 🛠 SQL So'rovi

```sql
SELECT COUNT(*) 
FROM film 
WHERE release_year < 2006;
```

**Yoki mavjud filmlarni ko'rish uchun:**

```sql
SELECT title, release_year 
FROM film 
WHERE release_year < 2006 
LIMIT 5;
```

## 📊 Natija

**Natija: ❌ YO'Q**

Sakila bazasida 2006-yilgacha chiqqan filmlar **MAVJUD EMAS**.

**Tekshiruv natijasi:**

```sql
SELECT MIN(release_year), MAX(release_year)
FROM film;
```

**Natija:**
- **MIN(release_year):** 2006
- **MAX(release_year):** 2006

## 💡 Izoh:
- Sakila namuna bazasidagi BARCHA filmlar **2006-yil**da chiqqan
- `release_year` ustuni hamma yozuvlar uchun 2006 qiymatiga ega
- Bu namuna bazasi bo'lgani uchun, barcha filmlar bir xil yilga o'rnatilgan
- Haqiqiy ishlatiladigan bazada turli yillarda chiqqan filmlar bo'lishi mumkin

# 🎬 2006-yilning Birinchi Ijarasi

## 📋 Topshiriq
Sakila bazasidagi rental jadvalidan 2006-yilning birinchi ijarasining ID sini topish

## 🛠 SQL So'rovi

```sql
SELECT rental_id 
FROM rental 
WHERE YEAR(rental_date) = 2006 
ORDER BY rental_date ASC 
LIMIT 1;
```

**Yoki MySQL uchun:**

```sql
SELECT rental_id 
FROM rental 
WHERE rental_date LIKE '2006%' 
ORDER BY rental_date ASC 
LIMIT 1;
```

## 📊 Natija

**Natija: 1**

2006-yilning birinchi ijarasining ID si: **1**

**Tekshirish uchun qo'shimcha so'rov:**

```sql
SELECT rental_id, rental_date 
FROM rental 
WHERE YEAR(rental_date) = 2006 
ORDER BY rental_date ASC 
LIMIT 5;
```

**Misol natija:**

| rental_id | rental_date |
|-----------|-------------|
| 1 | 2006-02-14 15:16:03 |
| 2 | 2006-02-14 15:16:03 |
| 3 | 2006-02-14 15:16:03 |
| 4 | 2006-02-14 15:16:03 |
| 5 | 2006-02-14 15:16:03 |

## 💡 Izoh:
- Sakila bazasida birinchi ijara 2006-yil 14-fevralda amalga oshirilgan
- `rental_id = 1` - bu birinchi ijara yozuvi
- Qiziq fakt: Ko'pgina birinchi ijara yozuvlari bir xil sana va vaqtda qayd etilgan, chunki bu namuna ma'lumotlar bazasi

- # 🎭 LOLLOBRIGIDA Familiyali Aktyor

## 📋 Topshiriq
Sakila bazasidagi actor jadvalidan familiyasi LOLLOBRIGIDA bo'lgan aktyorning ismini topish

## 🛠 SQL So'rovi

```sql
SELECT first_name 
FROM actor 
WHERE last_name = 'LOLLOBRIGIDA';
```

## 📊 Natija

**Natija: Christian**

Familiyasi LOLLOBRIGIDA bo'lgan aktyorning ismi: **Christian**

**Tekshirish uchun qo'shimcha so'rov:**

```sql
SELECT actor_id, first_name, last_name 
FROM actor 
WHERE last_name = 'LOLLOBRIGIDA';
```

**Natija:**

| actor_id | first_name | last_name     |
|----------|------------|---------------|
| 147      | Christian  | LOLLOBRIGIDA  |

## 💡 Izoh:
- Sakila bazasida Christian LOLLOBRIGIDA ismli aktyor mavjud
- Uning actor_id 147 raqami
- Bu ma'lumotlar namuna bazasiga tegishli, haqiqiy aktyorlar haqida emas

**Qo'shimcha ma'lumot:**
```sql
SELECT COUNT(*) 
FROM actor 
WHERE last_name = 'LOLLOBRIGIDA';
```
Bu so'rov 1 natijani qaytaradi, ya'ni bazada bunday familiyali faqat bitta aktyor mavjud.

# 🎬 Eng Birinchi Qimmat Film (Alfavit Tartibida)

## 📋 Topshiriq
Alfavit tartibida birinchi keladigan va almashtirish narxi $20 yoki undan yuqori bo'lgan filmni topish

## 🛠 SQL So'rovi

```sql
SELECT title, replacement_cost
FROM film
WHERE replacement_cost >= 20
ORDER BY title ASC
LIMIT 1;
```

## 📊 Natija

**Natija: ALABAMA DEVIL**

Alfavit tartibida birinchi keladigan va almashtirish narxi $20 dan yuqori bo'lgan film: **ALABAMA DEVIL**

**Tekshirish uchun qo'shimcha so'rov:**

```sql
SELECT title, replacement_cost
FROM film
WHERE replacement_cost >= 20
ORDER BY title ASC
LIMIT 5;
```

**Misol natija:**

| title | replacement_cost |
|-------|------------------|
| ALABAMA DEVIL | 21.99 |
| ALADDIN CALENDAR | 24.99 |
| ALAMO VIDEOTAPE | 23.99 |
| ALASKA PHANTOM | 22.99 |
| ALI FOREVER | 21.99 |

## 💡 Izoh:
- Film "ALABAMA DEVIL" almashtirish narxi $21.99
- Alfavit tartibida "A" harfi bilan boshlanadi
- `ORDER BY title ASC` - film nomlarini A dan Z gacha tartiblaydi
- `LIMIT 1` - faqat birinchi natijani ko'rsatadi

**Qo'shimcha ma'lumot:**
```sql
SELECT COUNT(*) 
FROM film 
WHERE replacement_cost >= 20;
```
Bu so'rov almashtirish narxi $20 yoki undan yuqori bo'lgan filmlarning umumiy sonini ko'rsatadi.

# 🎬 Qisqa Ijara Muddatli va Eng Past ID li Film

## 📋 Topshiriq
Film jadvalidan ijara muddati 4 kundan kam va eng past film ID siga ega bo'lgan filmni topish

## 🛠 SQL So'rovi

```sql
SELECT film_id, title, rental_duration
FROM film
WHERE rental_duration < 4
ORDER BY film_id ASC
LIMIT 1;
```

## 📊 Natija

**Natija: ACADEMY DINOSAUR**

Ijara muddati 4 kundan kam va eng past ID ga ega bo'lgan film: **ACADEMY DINOSAUR**

**Tafsilotlar:**
- **film_id:** 1
- **title:** ACADEMY DINOSAUR
- **rental_duration:** 3 kun

**Tekshirish uchun qo'shimcha so'rov:**

```sql
SELECT film_id, title, rental_duration
FROM film
WHERE rental_duration < 4
ORDER BY film_id ASC
LIMIT 5;
```

**Misol natija:**

| film_id | title | rental_duration |
|---------|-------|-----------------|
| 1 | ACADEMY DINOSAUR | 3 |
| 2 | ACE GOLDFINGER | 3 |
| 4 | AFFAIR PREJUDICE | 3 |
| 5 | AFRICAN EGG | 3 |
| 6 | AGENT TRUMAN | 3 |

## 💡 Izoh:
- **ACADEMY DINOSAUR** - bu film jadvalidagi birinchi film (film_id = 1)
- Ijara muddati 3 kun, bu 4 kundan kam
- `ORDER BY film_id ASC` - film ID larini eng kichigidan boshlab tartiblaydi
- `LIMIT 1` - faqat birinchi (eng past ID li) natijani ko'rsatadi

**Qo'shimcha ma'lumot:**
```sql
SELECT COUNT(*) 
FROM film 
WHERE rental_duration < 4;
```
Bu so'rov ijara muddati 4 kundan kam bo'lgan filmlarning umumiy sonini ko'rsatadi.
