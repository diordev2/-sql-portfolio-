```sql
/* ===========================================================
   📘 Day 01 — SELECT asoslari va Alias (AS) operatori
   Maqsad: SELECT operatori yordamida ma’lumotlarni olishni 
           o‘rganish va AS yordamida ustunlarga laqab berish.
   Foydalanilgan ma’lumotlar bazasi: Sakila (MySQL demo DB)
   =========================================================== */

-- 1️⃣ Jadvaldagi barcha ustunlarni ko‘rish
SELECT * FROM actor;

-- 2️⃣ Faqat kerakli ustunlarni tanlash
SELECT first_name, last_name FROM actor;

-- 3️⃣ Ustunlarga yangi nom (alias) berish
SELECT 
    first_name AS ism,
    last_name AS familiya
FROM actor;

-- 4️⃣ Bitta ustunni birlashtirish (CONCAT)
SELECT 
    CONCAT(first_name, ' ', last_name) AS toliq_ism
FROM actor;

-- 5️⃣ Natijadagi ma’lumotni takrorlarsiz olish (DISTINCT)
SELECT DISTINCT first_name FROM actor;

-- 6️⃣ Natijani tartiblash (ORDER BY)
SELECT 
    first_name, 
    last_name 
FROM actor
ORDER BY first_name ASC;

-- 7️⃣ Faqat dastlabki 10 ta yozuvni ko‘rish (LIMIT)
SELECT 
    first_name, 
    last_name 
FROM actor
LIMIT 10;

-- ✅ Yakuniy mashq:
-- "actor" jadvalidan faqat A harfi bilan boshlanadigan aktyorlarning
-- to‘liq ismini chiqarish:
SELECT 
    CONCAT(first_name, ' ', last_name) AS toliq_ism
FROM actor
WHERE first_name LIKE 'A%';
```
