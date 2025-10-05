# 📊 Proyek 6: Database Analyzer CLI (Menganalisis Data Terlaris)
### Node.js | MySQL | ES6 Modern

Halo! Ini adalah proyek CLI sederhana yang bertujuan untuk menganalisis data produk dan transaksi dari database MySQL. Proyek ini membuktikan kemampuan saya dalam menggabungkan logika JavaScript yang kompleks dengan kekuatan data aggregation dari SQL.

Proyek ini adalah tantangan yang seru karena fokusnya bergeser dari sekadar menyimpan data (CRUD) menjadi mengolah data dan menemukan insight.

## 💡 Fitur-Fitur Kunci
1. Logic JS (Array Processing)
   
   - Tujuan: Mencari harga tertinggi (MAX) dan terendah (MIN) serta stok tersedikit di sisi JavaScript.
   - Skill Kunci: Menggunakan fungsi array modern seperti map(), find(), dan Spread Operator (...) untuk perhitungan cepat.
3. Logic SQL (Database Aggregation)
   - Tujuan: Mencari 3 produk yang paling banyak terjual.
   - Skill Kunci: Menggunakan query SQL yang kompleks seperti JOIN, SUM(), dan GROUP BY untuk analisis data relasional yang efisien.
4. Keamanan & Koneksi
   - Menggunakan dotenv untuk menyimpan kredensial database secara aman di file .env.
  
## 🚀 Cara Menjalankan Program
**Persiapan:**
1. Pastikan Node.js dan MySQL Server (XAMPP/WAMP) sudah berjalan.
2. Impor Skema Database: Gunakan file **invoice.sql** ini untuk membuat database dan tabel yang diperlukan. File ini sudah berisi data contoh untuk testing!
3. Buat file .env di root folder dan isi dengan kredensial database lokalmu (sesuaikan dengan nama database yang kamu buat dari file SQL, yaitu invoice):
```env
# File: .env
DB_HOST=localhost
DB_USER=root
DB_PASS=SandiSuperRahasia
DB_NAME=invoice
```
4. Instal package di terminal:
```bash
npm install mysql2 dotenv
```

**Eksekusi:**

Jalankan script utama di terminal:
```bash
node analyzer.js
```
Program akan menampilkan hasil analisis MAX/MIN (Logic JS) diikuti dengan daftar 3 Produk Terlaris (Logic SQL).

## 📝 Refleksi Developer (Belajar Keras)
Proyek ini mengajarkan banyak hal tentang integrasi dan trade-off efisiensi: kapan menggunakan JS (map/find) dan kapan menggunakan SQL (JOIN/SUM).

Menguasai Array.prototype.map(), find(), dan Spread Operator (...) adalah lompatan skill terbesar saya sejauh ini, dan berhasil menguasai dotenv membuat proyek ini siap untuk live server!

**LET'S GO! 💪**
