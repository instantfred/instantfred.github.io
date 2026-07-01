---
layout: default
title: instantfred
permalink: /
flush: true
---

<section class="hero">
  <div class="hero-avatar">
    <picture>
      <source srcset="/assets/images/profile.webp" type="image/webp">
      <img src="/assets/images/profile.jpg" alt="Freddy's profile picture" width="420" height="417" decoding="async">
    </picture>
  </div>
  <h1 class="hero-title">Hi, I'm Freddy <span class="wave">👋</span></h1>
  <p class="hero-tagline">Developer, illustrator &amp; coffee enthusiast</p>
  <p class="hero-bio">Welcome to my digital space, where I share my journey as a developer, showcase my illustrations, brew specialty coffee, and document coding projects.</p>
  <div class="hero-actions">
    <a class="btn btn-primary" href="/projects/">View projects</a>
    <a class="btn btn-ghost" href="/blog/">Read the blog</a>
  </div>
  <div class="social-links">
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
</section>

<section class="explore">
  <h2 class="section-title">Explore</h2>
  <div class="explore-grid">
    <a href="/blog/" class="explore-card">
      <picture>
        <source srcset="/assets/images/explore-blog.webp" type="image/webp">
        <img src="/assets/images/explore-blog.jpg" alt="" width="474" height="253" loading="lazy" decoding="async">
      </picture>
      <span class="explore-label">Blog <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12,5 19,12 12,19"></polyline></svg></span>
    </a>
    <a href="/projects/" class="explore-card">
      <picture>
        <source srcset="/assets/images/explore-projects.webp" type="image/webp">
        <img src="/assets/images/explore-projects.jpg" alt="" width="680" height="454" loading="lazy" decoding="async">
      </picture>
      <span class="explore-label">Projects <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12,5 19,12 12,19"></polyline></svg></span>
    </a>
    <a href="/hobbies/" class="explore-card">
      <picture>
        <source srcset="/assets/images/explore-art.webp" type="image/webp">
        <img src="/assets/images/explore-art.jpg" alt="" width="680" height="453" loading="lazy" decoding="async">
      </picture>
      <span class="explore-label">Hobbies <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12,5 19,12 12,19"></polyline></svg></span>
    </a>
  </div>
</section>

{% if site.tags.size > 0 %}
<section class="tags-section">
  <h2 class="section-title">Tags</h2>
  <div class="tag-cloud">
    {% for tag in site.tags %}
      <a class="tag-label" href="/tags/{{ tag[0] | slugify }}/">{{ tag[0] }}</a>
    {% endfor %}
  </div>
</section>
{% endif %}
