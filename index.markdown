---
layout: page
title: instantfred
permalink: /
---

<div class="profile-card large">
  <img src="/assets/images/profile.png" alt="Freddy's profile picture" class="profile-pic">
  <h2>Hi, I'm Freddy</h2>
  <p>Developer, creative, and coffee enthusiast. Welcome to my digital space where I share my journey as a developer, showcase my illustrations, share coffee recipes, and document coding projects.</p>
  <div class="profile-links">
    <a href="mailto:devfreddy@duck.com" title="Email"><i class="fa fa-envelope"></i></a>
    <a href="https://github.com/instantfred" target="_blank" title="GitHub"><i class="fab fa-github"></i></a>
    <a href="https://twitter.com/instantfred" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a>
  </div>
</div>

<div class="explore-grid">
  <a href="/blog/" class="explore-card">
    <img src="/assets/images/explore-blog.jpeg" alt="Blog">
    <span>Blog</span>
  </a>
  <a href="/projects/" class="explore-card">
    <img src="/assets/images/explore-projects.jpg" alt="Projects">
    <span>Projects</span>
  </a>
  <a href="/art/" class="explore-card">
    <img src="/assets/images/explore-art.jpg" alt="Art">
    <span>Illustrations</span>
  </a>
  <a href="/recipes/" class="explore-card">
    <img src="/assets/images/explore-recipes.jpg" alt="Recipes">
    <span>Recipes</span>
  </a>
</div>

<div class="tag-cloud">
  <h3>Tags</h3>
  {% assign tag_colors = "#1fa2ff,#ffb347,#ff6961,#77dd77,#f49ac2,#aec6cf,#b39eb5,#ffcccb,#cfcfc4,#fdfd96" | split: "," %}
  {% assign color_index = 0 %}
  {% for tag in site.tags %}
    {% assign color = tag_colors[color_index] %}
    <span class="tag-label" style="background-color: {{ color }};">{{ tag[0] }}</span>
    {% assign color_index = color_index | plus: 1 %}
    {% if color_index == tag_colors.size %}{% assign color_index = 0 %}{% endif %}
  {% endfor %}
</div>
