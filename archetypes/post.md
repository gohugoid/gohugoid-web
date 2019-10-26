---
draft: true
date: {{ .Date }}
updated: {{ .Date }}
type: post

authors:
  - yourname

title: "{{ replace .TranslationBaseName "-" " " | title }}"
slug: {{ .BaseFileName }}

tags:
    - Hugo

categories:
    - Tutorial

external_url: "" # <-- link to original post

image: "/img/"
thumbnail: "/img/"
description: "" # <-- isi ini!
---

<!-- Jika ini postingan dari luar (eksternal), maka konten tidak perlu diisi ya! -->