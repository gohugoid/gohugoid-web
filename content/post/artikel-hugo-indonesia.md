---
draft: false
date: 2020-11-21T23:40:15+08:00
updated: 2020-11-21T23:40:15+08:00
type: post

authors:
  - Kontributor Hugo Indonesia

title: "Cara Menambahkan Artikel di Web Hugo Indonesia"
slug: artikel-hugo-indonesia

tags:
    - Content

categories:
    - Tips
    - Tutorial

external_url: "" # <-- link to original post

# Catatan: Jika anda mengisi maram external_url, maka post ini akan mengarah
# ke alamat tersebut. Tetapi jika kosong, maka ini termasuk internal post.

image: "https://cdn.staticaly.com/screenshot/gohugoid.github.io/?w=128&h=128" # <-- bisa dikosongkan jika external post
thumbnail: "/img/" # <-- bisa dikosongkan jika  external post
description: "Tambahkan artikelmu di website Hugo Indonesia agar muda ditemukan
komunitas dan orang yang tertarik belajar tentang Hugo"
typora-root-url: ../../static
---

<!-- @TODO: lengkapi gambar screenshot -->

Ayo tambahkan artikelmu ke Hugo Indonesia agar muda ditemukan. Hugo Indonesia
adalah komunitas pengguna dan pengembang Hugo, jadi pastikan artikelmu membahas
tentang Hugo atau masih related dengan Hugo.

Berikut ini cara menambahkannya:

## Step 1 -- Fork dan Clone Repository

Silahkan buka https://github.com/gohugoid/gohugoid-web lalu klik **Fork**.

![Fork Repository Web Hugo Indonesia](/img/artikel-hugo-indonesia/fork.png)

Maka sekarang kamu punya repository `gohugoid-web` yang merupakan hasil fork dari repository Hugo Indonesia.

Ambil URL repo tersebut:

![Copy URL Repo](/img/artikel-hugo-indonesia/repo-url.png)

Kemudian lakukan clone dengan perintah:

```bash
git clone git@github.com:ardianta/gohugoid-web.git
```

> **Perhatikan**: alamat repo bisa berbeda-beda, tergantung dari username github milikmu. Pada contoh ini digunakan username `ardianta`. Gunakanlah alamat repo yang kamu fork sendiri.

Sekarang kamu sudah punya repo `gohugoid-web` di komputermu. Pastikan kamu sudah menginstal Hugo di komputermu.

Silahkan buka repo tersebut dengan teks editor, direkomendasikan menggunakan VS Code.

## Step 2 -- Tambahkan Artikel Baru

Gunakan perintah berikut untuk menambahkan artikel baru:

```bash
hugo new post/slug-artikel.md
```

Untuk slug artikel, pastikan tidak menggunakan slug yang sudah ada agar tidak terjadi bentrok. Gunakan slug yang unik.

Jika artikel yang ditambahkan dari website milikmu, slug bisa diberikan dengan nama author atau websitemu lalu mengikuti judul artikel.

Contoh:

```bash
hugo new post/budi-belajar-hugo.md
```

Setelah itu, isilah parameter di frontmatter dengan benar.
Kamu juga bisa mencontek contoh konten yang sudah ada.

![mengisi front matter](/img/artikel-hugo-indonesia/mengisi-front-matter.png)

<!-- @TODO: Lengkapi tulisan -->

Jika artikel yang kamu tambahkan bukan external post, maka parameter `external_url` tidak perlu diisi dan silahkan tuliskan kontennya di bagian konten.

## Step 3 -- Push

Sebelum melakukan push, cek dulu apakah artikel yang kamu tambahkan sudah benar. Jalankan server Hugo untuk mengeceknya.

```bash
hugo server
```

Setelah yakin..

Lakukan commit dengan perintah:

```bash
git add .
git commit -m "Menambahkan artikel: <judul artikel>"
```

Setelah itu, lakukan push ke repo hasil fork milikmu.

```bash
git push --all
```

<!-- @TODO: Lengkapi tulisan -->

## Step 4 -- Pull-request

Buka kembali repo Github hasil fork di profilmu. Di sana akan ada tombol untuk melakukan pull-request.

![pull request](/img/artikel-hugo-indonesia/pull-request.png)

Klik tombol tersebut untuk melakukan pull-request.

Berikutnya, kita akan diperlihatkan perubahan yang sudah dilakukan. Klik tombol **Create Pull Request** untuk memulai membuat pull request.

![create pull request](/img/artikel-hugo-indonesia/create-pull-request.png)

Terakhir, isi judul dan deskripsi pull-request. Setelah itu klik tombol **Create pull request**.

![pull request title](/img/artikel-hugo-indonesia/pull-request-title.png)

<!-- @TODO: Lengkapi tulisan -->

## Step 5 -- Selesai

Selamat :tada: 

Kamu sudah menambahkan artikel baru di Web Hugo Indonesia. Tinggal tunggu review dari admin. Jika Pull-request yang kamu ajukan di-merge, maka artikel akan ditambahkan.

Jika ada pertanyaan, bisa disampaikan melalui [Github Issue](https://github.com/gohugoid/gohugoid-web/issues) repo ini atau [Group Telegram Hugo Indonesia](https://t.me/gohugoid/).

Selamat berkontribusi.

<!-- @TODO: Lengkapi tulisan -->
