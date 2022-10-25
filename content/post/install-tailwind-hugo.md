---
draft: false # <-- jangan lupa set ke false agar bisa dipublish
date: 2022-10-24T10:54:20+08:00
updated: 2022-10-24T10:54:20+08:00
type: post

authors:
  - Ahmad Habibi

title: "Cara Install Tailwindcss di Hugo"
slug: install-tailwind-hugo

tags:
    - Template
    - Shorcode
    - Content

categories:
    - Tips
    - Tutorial

external_url: "" # <-- link to original post

# Catatan: Jika anda mengisi param external_url, maka post ini akan mengarah
# ke alamat tersebut. Tetapi jika kosong, maka ini termasuk internal post.

image: "/img/install-tailwind-hugo/hugo-tailwind.png" # <-- bisa dikosongkan jika external post
thumbnail: "/img/install-tailwind-hugo/image-hugo-tailwind.png" # <-- bisa dikosongkan jika  external post
description: "" # <-- isi ini!
---

<!-- Jika ini postingan dari luar (eksternal post), maka konten tidak perlu diisi ya! -->
Tailwind adalah framework css yang cukup populer belakangan ini.

Framework ini biasanya di kombinasikan dengan framework javascript seperti React, Vue, Angular, dll karena Tailwind css di jalankan dengan environment yang sama yaitu Node JS.

Bagaimana kalau kita mengombinasikan Tailwind dengan Hugo ?

## Buat proyek Hugo

Pertama-tama buat proyek Hugo dulu
```sh
$ hugo new site <nama_project>
```

![Buat project hugo](/img/install-tailwind-hugo/images-01.png)

## Buat tema hugo

Kita akan membuat tema dengan nama `keren`

```sh
hugo new theme keren
```

## Insialisasi npm

Karena kita akan menggunakan tailwind css, maka kita akan inisialisasi npm dulu (Node package manager) karena tailwind di jalankan dengan node js.

![Buat project hugo](/img/install-tailwind-hugo/images-02.png)

## Install dan Insialisasi tailwindcss

Saat nya menginsatall tailwind css, pastikan postCSS juga diinstall
```sh
$ npm install -D tailwindcss postcss autoprefixer
$ npx tailwindcss init
```

![Buat project hugo](/img/install-tailwind-hugo/images-03.png)

Buat file `postcss.config.js` untuk postcss nya

![Buat project hugo](/img/install-tailwind-hugo/images-06.png)

Pada file `tailwind.config.js` atur seperti ini supaya tailwind bisa di pakai di halaman yang kita tuju.

![Buat project hugo](/img/install-tailwind-hugo/images-04.png)

Sekarang, buat file dengan nama `main.css` pada direktori `./themes/keren/assets/css/main.css` dan isi dengan kode berikut ini

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

## Run dan Build tailwind css

Waktu nya kita panggil tailwindcss pada `head.html` dan buat script run server nya pada `package.json`

Tulis kode berikut pada file `head.html`, pastikan anda sudah mempunya file `main.css` pada direktori `./themes/keren/assets/css/main.css`

![Buat project hugo](/img/install-tailwind-hugo/images-07.png)

Buat script run server untuk Hugo dan Tailwind pada `package.json`

![Buat project hugo](/img/install-tailwind-hugo/images-08.png)

Setelah itu, kita bisa menjalankan server nya dengan command `npm run dev` seperti yang yang kita buat di `package.json`

![Buat project hugo](/img/install-tailwind-hugo/images-05.png)

## Akhir kata...

Demikianlah tutorial singkat tentang cara mengombinasikan HUGO SSG (Static Site Generator) dengan Framework Tailwind CSS. Semoga bermanfaat bagi pembaca.