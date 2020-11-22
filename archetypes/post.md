---
draft: true # <-- jangan lupa set ke false agar bisa dipublish
date: {{ .Date }}
updated: {{ .Date }}
type: post

authors:
  - yourname

title: "{{ replace .TranslationBaseName "-" " " | title }}"
slug: {{ .BaseFileName }}

tags:
    - Template
    - Shorcode
    - Hosting
    - Content

categories:
    - Tips
    - Tutorial
    - Info

external_url: "" # <-- link to original post

# Catatan: Jika anda mengisi param external_url, maka post ini akan mengarah
# ke alamat tersebut. Tetapi jika kosong, maka ini termasuk internal post.

image: "/img/" # <-- bisa dikosongkan jika external post
thumbnail: "/img/" # <-- bisa dikosongkan jika  external post
description: "" # <-- isi ini!
---

<!-- Jika ini postingan dari luar (eksternal post), maka konten tidak perlu diisi ya! -->