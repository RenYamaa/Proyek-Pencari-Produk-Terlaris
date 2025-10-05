const { json } = require('stream/consumers');
const conn = require('./koneksi.js');
const { group } = require('console');
require('dotenv').config(); // <------ Untuk membaca .env

const q = "SELECT * From produk";
conn.query(q, (err, results) => {
    if(err){
        console.log(err);
        return conn.end('Database error');
    }

    const hargaArray = results.map(price => price.Harga_Satuan);
    //Mencari max dan min value dari array harga price satuan pada database
    const maxValue = Math.max(...hargaArray);
    const minValue = Math.min(...hargaArray);
    console.log("Harga Tertinggi nya adalah: " + Math.max(...hargaArray));
    console.log("Harga Terendah nya adalah: " + Math.min(...hargaArray));

    const fullObjectMax = results.find(product => product.Harga_Satuan == maxValue);
    const fullObjectMin = results.find(product => product.Harga_Satuan == minValue);
    
    console.log("Full OBJ Max: ", fullObjectMax);
    console.log("Full OBJ Min: ", fullObjectMin);
});

const q2 = `
    SELECT * FROM produk AS P 
    JOIN detail_penjualan AS D 
    ON P.ID_Produk = D.ID_Produk
`;

conn.query(q2, (err, results) => {
    if(err){
        console.log(err);
        return conn.end('Database error');
    }

    const resultArray = results.map(row => {
        // Kalau mau selective, kyk gini
        // nanti yang keluar ya yang dipilih aja
        return {
            idProduk: row.ID_Produk,
            namaProduk: row.Nama,
            harga: row.Harga_Satuan,
            jumlahTerjualnya: row.Kuantitas_Terjual
        };
        // Tapi untuk menampilkan semua baris pakai ini, karena row isinya gabungan dari semuanya.
        // return row;
    });

    console.log(resultArray);
});

const q3 = `
    SELECT P.Nama, SUM(D.Kuantitas_Terjual) AS Produk_Terjual
    FROM produk AS P
    JOIN detail_penjualan AS D
    ON P.ID_Produk = D.ID_Produk
    GROUP BY P.Nama
    ORDER BY Produk_Terjual DESC
    LIMIT 3
`

conn.query(q3, (err, results) => {
    if(err){
        console.log(err);
        return conn.end('Database error');
    }

    const groupingBy = results.map(row => {
        return row;
    });

    console.log("Barang Terlaris (Descending) = \n", groupingBy);
});
