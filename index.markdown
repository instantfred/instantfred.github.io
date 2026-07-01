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
    <a href="mailto:devfreddy@duck.com" title="Email" aria-label="Email">
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
        <rect x="2" y="4" width="20" height="16" rx="2"></rect>
        <polyline points="22,6 12,13 2,6"></polyline>
      </svg>
    </a>
    <a href="https://github.com/instantfred" target="_blank" rel="noopener" title="GitHub" aria-label="GitHub">
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
        <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path>
      </svg>
    </a>
    <a href="https://twitter.com/instantfred" target="_blank" rel="noopener" title="Twitter" aria-label="Twitter">
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
        <path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path>
      </svg>
    </a>
  </div>
</div>

<div class="explore-grid">
  <a href="/blog/" class="explore-card">
    <img src="/assets/images/explore-blog.jpeg" alt="Blog">
    <span class="explore-label">Blog</span>
  </a>
  <a href="/projects/" class="explore-card">
    <img src="/assets/images/explore-projects.jpg" alt="Projects">
    <span class="explore-label">Projects</span>
  </a>
  <a href="/art/" class="explore-card">
    <img src="/assets/images/explore-art.jpg" alt="Art">
    <span class="explore-label">Illustrations</span>
  </a>
  <a href="/recipes/" class="explore-card">
    <img src="/assets/images/explore-recipes.jpg" alt="Recipes">
    <span class="explore-label">Recipes</span>
  </a>
</div>

<div class="tag-cloud">
  <h3>Tags</h3>
  {% assign tag_colors = "#1fa2ff,#ffb347,#ff6961,#77dd77,#f49ac2,#aec6cf,#b39eb5,#ffcccb,#cfcfc4,#fdfd96" | split: "," %}
  {% assign color_index = 0 %}
  {% for tag in site.tags %}
    {% assign color = tag_colors[color_index] %}
    <a class="tag-label" style="background-color: {{ color }};" href="/tags/{{ tag[0] | slugify }}/">{{ tag[0] }}</a>
    {% assign color_index = color_index | plus: 1 %}
    {% if color_index == tag_colors.size %}{% assign color_index = 0 %}{% endif %}
  {% endfor %}
</div>
