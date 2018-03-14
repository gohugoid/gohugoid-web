# Digunakan dengan cara menjalankan perintah hugo new tulisan/tulisan-baru.md

---
title: "{{ replace .TranslationBaseName "-" " " | title }}"
date: {{ .Date }}
summary: ""
draft: true
slug: {{.BaseFileName}}

# Tag dan kategori. Anda dapat menuliskan lebih dari satu tag atau kategori dengan cara ["tag1", "tag2"] atau ["kategori1", "kategori2"]
tags: []
categories: []

# Menambahkan header pada tulisan dan thumbnail pada laman utama (belum di implmentasi)
header:
    image: ""
    caption: ""
    # preview: true
---

