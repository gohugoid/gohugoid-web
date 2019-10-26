---
draft: true
date: {{ .Date }}
updated: {{ .Date }}
type: page

title: "{{ replace .TranslationBaseName "-" " " | title }}"
slug: {{ .BaseFileName }}

image: "/img/"
thumbnail: "/img/"
description: "" # <-- isi ini!
---