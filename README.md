# 🧠 SQL O‘rganish Portfeli

Assalomu alaykum!  
Bu repozitoriya orqali men SQL bo‘yicha har kuni o‘rganayotgan mavzularimni kichik amaliy misollar orqali yozib boraman.  
Har bir kun alohida `.sql` faylda saqlanadi — bu fayllarda real so‘rovlar, izohlar va o‘rganilgan operatorlar mavjud.

---

## 🎯 Maqsad

- SQL sintaksisini mustahkamlash  
- Har kuni yangi operator yoki funksiya bilan ishlash  
- Kichik, lekin amaliy loyihalar orqali tajriba orttirish  
- Ishga kirishda portfel sifatida namoyish qilish

---

## 📂 Tuzilma

```

sql-portfolio/
│
├── README.md                # Loyihaning umumiy tavsifi
├── queries/                 # Har kunlik SQL mashqlar
│   ├── day01_select_basics.sql
│   ├── day02_where_clause.sql
│   ├── day03_orderby_limit.sql
│   ├── day04_groupby.sql
│   └── ...
└── datasets/                # Foydalanilgan namunaviy ma'lumotlar

```

---

## 📘 O‘rganish Kunlari

| Kun | Mavzu | Fayl |
|------|--------|------|
| 1 | SELECT asoslari va Alias (AS) operatori | [day01_select_basics.sql](queries/day01_select_basics.sql) |
| 2 | WHERE sharti bilan filtrlash | [day02_where_clause.sql](queries/day02_where_clause.sql) |
| 3 | ORDER BY va LIMIT | [day03_orderby_limit.sql](queries/day03_orderby_limit.sql) |
| 4 | GROUP BY va agregat funksiyalar | [day04_groupby.sql](queries/day04_groupby.sql) |
| 5 | JOIN turlari (INNER, LEFT, RIGHT) | [day05_joins.sql](queries/day05_joins.sql) |
| 6 | Subquery (ichki so‘rovlar) | [day06_subqueries.sql](queries/day06_subqueries.sql) |
| 7 | Amaliy mini loyiha (yakuniy mashq) | [day07_project.sql](queries/day07_project.sql) |

---

## 🧩 Foydalanilgan Ma’lumotlar Bazasi

Mashqlar davomida quyidagi namunaviy bazalardan foydalanilgan:

- **Sakila** — MySQL demo database  
- **Students** — o‘zim yaratgan kichik dataset (datasets/ papkasida)

---

## 📅 Qanday Yuritaman

- Har kuni yangi `.sql` fayl yarataman (`queries/dayXX_topic.sql`)  
- O‘sha kunda o‘rganilgan SQL buyruqlarini yozaman  
- `README.md` faylga yangi qator qo‘shaman  
- Haftaning oxirida qisqacha “xulosa” yozaman

---

## 🧭 Foydalanilgan Asboblar

- **MySQL Workbench** — asosiy muhit  
- **VS Code** — tahrirlash uchun  
- **GitHub** — portfel yuritish uchun  

---

## ✨ Aloqa

Agar bu portfel sizga foydali bo‘lsa, yulduzcha ⭐ bosishni unutmang!  
Savollar yoki takliflar uchun:  
📧 diordev2@example.com *(o‘zingizning emailingizni yozing)*

---

```

---

### 🔍 Qanday foydalanasan:

1. GitHub’da `README.md` ustiga bos.
2. ✏️ (qalamcha) belgisini bos.
3. Tepada “Edit file” oynasiga shu kodni **to‘liq nusxalab joylashtir**.
4. Pastga tushib “Commit changes” bos.

✅ Natijada `README.md` chiroyli, professional, va kunlik o‘rganish tizimiga mos bo‘ladi.
Keyin faqat `queries/` papkasiga har kuni bitta yangi `.sql` fayl qo‘shib borasan.

Xohlaysanmi, men senga shu README formatiga mos **birinchi kun uchun tayyor `day01_select_basics.sql`** fayl matnini ham beray?
