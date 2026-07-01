---
layout: default
title: Hobbies
permalink: /hobbies/
flush: true
---

<header class="page-header">
  <h1>Hobbies</h1>
  <p class="page-lead">Things I do when I'm not writing code: brewing specialty coffee, playing board games, and drawing.</p>
</header>

{% for cat in site.data.hobby_categories %}
  {% assign items = site.hobbies | where: "category", cat.slug | sort: "date" | reverse %}
  {% if items.size > 0 %}
  <section class="hobby-category" id="{{ cat.slug }}">
    <h2>{{ cat.name }}</h2>
    {% if cat.blurb %}<p class="hobby-blurb">{{ cat.blurb }}</p>{% endif %}
    <div class="hobby-grid">
      {% for item in items %}
      <a class="card hobby-item" href="{{ item.url }}">
        {% if item.image and item.image != site.og_default_image %}<img src="{{ item.image }}" alt="{{ item.title }}" loading="lazy">{% endif %}
        <h3>{{ item.title }}</h3>
        <span>{{ item.date | date: "%Y-%m-%d" }}</span>
        {% if item.excerpt %}<p>{{ item.excerpt }}</p>{% endif %}
      </a>
      {% endfor %}
    </div>
  </section>
  {% endif %}
{% endfor %}
