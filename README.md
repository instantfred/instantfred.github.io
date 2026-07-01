# instantfred.github.io

Welcome to my digital space where I share my journey as a developer, showcase my illustrations, share coffee recipes, and document coding projects.

## Local Development

### Prerequisites

- Ruby 4.0.x (pinned in `.ruby-version`; install with a version manager like [rbenv](https://github.com/rbenv/rbenv) or [mise](https://mise.jdx.dev/))
- Bundler (ships with Ruby 4)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/instantfred/instantfred.github.io.git
   cd instantfred.github.io
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Serve the site locally:
   ```bash
   bundle exec jekyll serve
   ```

4. Open your browser and visit `http://localhost:4000`

The site will automatically rebuild when you make changes to the source files.

### Development Commands

- **Serve with drafts**: `bundle exec jekyll serve --drafts`
- **Serve with live reload**: `bundle exec jekyll serve --livereload`
- **Build for production**: `bundle exec jekyll build`

## Adding New Content

### Blog Posts

Create new blog posts in the `_posts/` directory with the filename format: `YYYY-MM-DD-title.md`

**Front matter template:**
```yaml
---
layout: post
title: "Your Post Title"
date: YYYY-MM-DD HH:MM:SS -0600
categories: category1 category2
tags: [tag1, tag2, tag3]
excerpt: "Brief description of your post"
---
```

**Example:**
```yaml
---
layout: post
title: "My New Blog Post"
date: 2025-07-21 10:00:00 -0600
categories: jekyll tutorial
tags: [jekyll, guide, tutorial]
excerpt: "Learn how to create amazing blog posts with Jekyll"
---

Your post content goes here...
```

### Projects

Add projects in the `_projects/` directory with the filename format: `project-name.md`

**Front matter template:**
```yaml
---
title: Project Name
date: YYYY-MM-DD
layout: project
excerpt: "Brief description of your project"
github_url: https://github.com/username/repo-name
---
```

### Hobbies

Coffee, board games and illustrations all live in the `_hobbies/` collection.
Each entry sets a `category` (`coffee`, `board-games` or `illustrations`); the
`/hobbies/` page groups entries by category and only shows a category once it
has at least one entry. Category labels/order live in `_data/hobby_categories.yml`.

**Front matter template:**
```yaml
---
title: Entry Title
date: YYYY-MM-DD
layout: hobby
category: coffee   # or board-games, illustrations
excerpt: "Brief description"
image: /assets/images/optional-hero.jpg   # optional; shown as hero + card image
---
```

## Site Structure

- `_posts/` - Blog posts
- `_projects/` - Project showcase
- `_hobbies/` - Coffee, board games and illustrations (grouped by `category`)
- `_data/` - Data files (e.g. `hobby_categories.yml`)
- `_layouts/` - HTML templates
- `_plugins/` - Site generators (e.g. per-tag pages)
- `assets/` - CSS, fonts, images, and other static files
- `_config.yml` - Site configuration

## Deployment

This site is automatically deployed to GitHub Pages when changes are pushed to the main branch. No additional deployment steps are required.