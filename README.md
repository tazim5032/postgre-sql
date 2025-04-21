# 📘 PostgreSQL Basics

---

### 1. What is PostgreSQL?
PostgreSQL হলো একটি ওপেন সোর্স ডেটাবেস সিস্টেম যেটা ডেটা সংরক্ষণ, রক্ষণাবেক্ষণ এবং বিশ্লেষণের জন্য ব্যবহার করা হয়। এটা অনেক বড় প্রজেক্টে ব্যবহৃত হয় কারণ এটা খুবই শক্তিশালী এবং রিলায়েবল।

---

### 2. What is the purpose of a database schema in PostgreSQL?
Schema হলো ডেটাবেসের ভিতরে আলাদা আলাদা "ফোল্ডার" এর মত। এতে টেবিল, ভিউ ইত্যাদি সাজিয়ে রাখা যায়। এটি ডেটাকে সংগঠিত এবং নিরাপদ রাখতে সাহায্য করে।

---

### 3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
- **Primary Key**: একটি টেবিলের প্রতিটি রেকর্ডকে আলাদা ভাবে শনাক্ত করার জন্য ব্যবহৃত হয়। এটি ইউনিক এবং খালি থাকতে পারে না।
- **Foreign Key**: এটি অন্য টেবিলের Primary Key কে রেফার করে। এর মাধ্যমে দুইটা টেবিলের মধ্যে সম্পর্ক তৈরি হয়।

---

### 4. What is the difference between the VARCHAR and CHAR data types?
- **VARCHAR**: ভ্যারিয়েবল দৈর্ঘ্যের লেখা রাখে। যেমন নাম বা ইমেইল।
- **CHAR**: ফিক্সড দৈর্ঘ্যের লেখা রাখে। যেমন দেশের কোড। ছোট লেখা হলেও নির্দিষ্ট দৈর্ঘ্য পূরণ করে ফাঁকা জায়গা রাখে।

---

### 5. Explain the purpose of the WHERE clause in a SELECT statement.
WHERE ক্লজ দিয়ে নির্দিষ্ট শর্তের ভিত্তিতে ডেটা বের করা যায়। উদাহরণস্বরূপ:
```sql
SELECT * FROM users WHERE age > 18;
```
এই কুয়েরিটি কেবল 18 বছরের বেশি বয়সের ইউজারদের দেখাবে।

---

### 6. What are the LIMIT and OFFSET clauses used for?
- `LIMIT` বলে দেয় কতটি রেকর্ড দেখতে চায়।
- `OFFSET` বলে দেয় কতটি রেকর্ড বাদ দিয়ে শুরু করতে হবে।

এগুলো সাধারণত pagination এর জন্য ব্যবহার করা হয়।

---

### 7. How can you modify data using UPDATE statements?
`UPDATE` ব্যবহার করে যেকোনো টেবিলের রেকর্ড পরিবর্তন করা যায়। যেমন:
```sql
UPDATE students SET age = 21 WHERE student_id = 5;
```
এতে student_id 5 এর বয়স 21 হয়ে যাবে।

---

### 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
JOIN ব্যবহার করে দুই বা তার বেশি টেবিলের সম্পর্কযুক্ত ডেটা একসাথে করা যায়। যেমন: ইউজার এবং অর্ডার টেবিল একসাথে দেখতে হলে, তখন JOIN করা যায়।

---

### 9. Explain the GROUP BY clause and its role in aggregation operations.
GROUP BY দিয়ে কোনো কলাম অনুযায়ী ডেটা গ্রুপ করা যায় এবং প্রতিটি গ্রুপে অ্যাগ্রিগেট ফাংশন (SUM, COUNT, AVG) ব্যবহার করা যায়।

উদাহরণ:
```sql
SELECT department, SUM(salary) FROM employees GROUP BY department;
```

---

### 10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?
- `COUNT()` রেকর্ড সংখ্যা বের করে।
- `SUM()` মান যোগ করে।
- `AVG()` গড় হিসাব করে।


---

