---
layout: default
title: Blog
permalink: /blog/
flush: true
---

<header class="page-header">
  <h1>Blog</h1>
  <p class="page-lead">Notes on development, projects and things I'm learning.</p>
</header>

<div class="entry-list">
  {% for post in site.posts %}
  <a class="entry-card" href="{{ post.url }}">
    <h2>{{ post.title }}</h2>
    <span class="entry-date">{{ post.date | date: "%B %-d, %Y" }}</span>
    {% if post.excerpt %}<p>{{ post.excerpt | strip_html | truncate: 160 }}</p>{% endif %}
  </a>
  {% endfor %}
</div>
