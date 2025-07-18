---
layout: default
title: Recipes
permalink: /recipes/
---

<h1>Recipes</h1>
<ul>
  {% for recipe in site.recipes %}
    <li>
      <a href="{{ recipe.url }}">{{ recipe.title }}</a>
      <span>({{ recipe.date | date: "%Y-%m-%d" }})</span>
      <p>{{ recipe.excerpt }}</p>
    </li>
  {% endfor %}
</ul>