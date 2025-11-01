```sql
/* ===========================================================
   📘 Day 01 — SELECT asoslari va Alias (AS) , CONCAT() operatori
   Maqsad: SELECT operatori yordamida ma’lumotlarni olishni 
   o‘rganish va AS yordamida ustunlarga laqab berish, ism va familiyani bitta ustunga birlashtirish
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
--  Jadvaldagi barcha ma'lumotlarni ko‘ramiz
SELECT * FROM students;

-- 8️⃣ Faqat ism va familiya ustunlarini tanlaymiz
SELECT first_name, last_name FROM students;

-- 9️⃣ CONCAT() yordamida ism va familiyani bitta ustunga birlashtiramiz
SELECT 
    CONCAT(first_name, ' ', last_name) AS toliq_ism
FROM students;

-- 🔟 CONCAT() ichida boshqa matn qo‘shish ham mumkin
SELECT 
    CONCAT('Talaba: ', first_name, ' ', last_name) AS talaba_malumoti
FROM students;

-- 1️⃣1️⃣ Agar familiya yo‘q bo‘lsa (NULL bo‘lsa), CONCAT() avtomatik e'tiborsiz qoldiradi
-- Quyidagi so‘rovda NULL qiymatlar ham chiqariladi
SELECT 
    id,
    CONCAT(first_name, ' ', COALESCE(last_name, 'Familiya yo‘q')) AS toliq_ism
FROM students;

-- ✅ Yakuniy mashq:
-- "actor" jadvalidan faqat A harfi bilan boshlanadigan aktyorlarning
-- to‘liq ismini chiqarish:
SELECT 
    CONCAT(first_name, ' ', last_name) AS toliq_ism
FROM actor
WHERE first_name LIKE 'A%';
```
