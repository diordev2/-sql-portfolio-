# 🧠 Sakila Ma’lumotlar Bazasida SELECT va Alias (AS) Operatorlari bilan amaliy mashq qilish

Assalomu alaykum!  
Bu loyiha **“SELECT so‘rovlar va Alias (AS) qo‘llash”** mavzusida amaliy mashqlarni o‘z ichiga oladi.  
Ushbu mashqlar **Sakila** ma’lumotlar bazasi bilan ishlash orqali bajarildi.  
Ma’lumotlar bazasi — (MySQLning "Sakila" demo databazasidan foydalanildi

---

## 🎯 Maqsad
- `SELECT` operatori yordamida ma’lumotlarni olishni o‘rganish  
- `AS` yordamida ustun va jadval nomlariga alias (muvaqqat nom) berishni o‘rganish  

--

## 🧱 Ishlatilgan jadval va ma’lumotlar bazasi
**Sakila** ma’lumotlar bazasi quyidagi asosiy jadvallarni foydalanildi :  
- `actor` — aktyorlar haqidagi ma’lumotlar  
- `film` — filmlar ro‘yxati  
- `staff` — do‘kon xodimlari  
- `store` — do‘konlar  
- `rental` — ijaraga berilgan filmlar
- `customer` - mijozlar
- `city` - shaharlar

---

## 🧩 Namuna so‘rovlari
Quyida loyihada ishlatilgan ba’zi so‘rovlar keltirilgan:

```sql
-- 1. Bu kod `film` jadvalidan **film nomi** (`title`) va **chiqarilgan yili** (`release_year`) ustunlarini tanlaydi. `AS` yordamida ular natijada mos ravishda **"Title"** va **"Release Year"** nomlari bilan ko‘rsatiladi.
SELECT title AS 'Title', release_year AS 'Release Year' 
FROM film;


-- 2. Bu kod staff jadvalidan xodimning ismi (first_name), familiyasi (last_name) va manzil identifikatori (address_id) ustunlarini tanlaydi. AS orqali ular natijada "First Name", "Last Name" va "Address" nomlari bilan ko‘rsatiladi.
SELECT first_name AS 'First Name',last_name AS 'Last Name',address_id AS 'Address'
FROM staff;


-- 3.Bu kod rental jadvalidan ijara identifikatori (rental_id) va qaytarilgan sana (return_date) ustunlarini tanlaydi hamda shu ma’lumotlarni ekranga chiqaradi.
SELECT rental_id, return_date
FROM  rental;

-- 4. Bu kod city jadvalidan shahar identifikatori (city_id) va shahar nomi (city) ustunlarini tanlab, ularni natijada ko‘rsatadi.
SELECT city_id,city
FROM city;


-- 5.Bu kod store jadvalidan do‘kon identifikatori (store_id) va so‘nggi yangilanish sanasi (last_update) ustunlarini tanlab, ularni natijada ko‘rsatadi.
SELECT store_id,last_update
FROM store;


-- 6. Bu kod film jadvalidan film identifikatori (film_id), film nomi (title) va film davomiyligi (length) ustunlarini tanlab, ularni natijada ko‘rsatadi.
SELECT film_id,title,length
FROM film;


-- 7. Bu kod rental jadvalidan ijara identifikatori (rental_id), ijaraga olingan sana (rental_date) va qaytarilgan sana (return_date) ustunlarini tanlab, ularni natijada ko‘rsatadi.
SELECT rental_id,rental_date,return_date
FROM rental;


--8. Bu kod address jadvalidan manzil (address), tuman yoki hudud (district) va pochta indeksi (postal_code) ustunlarini tanlaydi. AS yordamida ular natijada mos ravishda "Address", "District" va "Postal Code" nomlari bilan ko‘rsatiladi.
SELECT address AS 'Address',district AS 'District',postal_code AS 'Postal Code'
FROM address;
