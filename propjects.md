---
layout: default
title: Projects
permalink: /projects/
---

<h1>Projects</h1>
<ul>
  {% for project in site.projects %}
    <li>
      <a href="{{ project.url }}">{{ project.title }}</a>
      <span>({{ project.date | date: "%Y-%m-%d" }})</span>
      <p>{{ project.excerpt }}</p>
    </li>
  {% endfor %}
</ul>