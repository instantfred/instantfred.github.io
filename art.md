---
layout: default
title: Illustrations
permalink: /art/
---

<h1>Illustrations</h1>
{% if site.art.size == 0 %}
  <p>New illustrations are on the way — check back soon.</p>
{% else %}
<ul>
  {% for piece in site.art %}
    <li>
      <a href="{{ piece.url }}">{{ piece.title }}</a>
      <span>({{ piece.date | date: "%Y-%m-%d" }})</span>
      <p>{{ piece.excerpt }}</p>
    </li>
  {% endfor %}
</ul>
{% endif %}
