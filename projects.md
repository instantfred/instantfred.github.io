---
layout: default
title: Projects
permalink: /projects/
flush: true
---

<header class="page-header">
  <h1>Projects</h1>
  <p class="page-lead">Things I've built — side projects, experiments and tools.</p>
</header>

<div class="entry-grid">
  {% for project in site.projects %}
  <a class="entry-card" href="{{ project.url }}">
    <h3>{{ project.title }}</h3>
    <span class="entry-date">{{ project.date | date: "%B %-d, %Y" }}</span>
    {% if project.excerpt %}<p>{{ project.excerpt | strip_html | truncate: 140 }}</p>{% endif %}
    <span class="entry-meta">View project →</span>
  </a>
  {% endfor %}
</div>
