# instantfred.github.io

Welcome to my digital space where I share my journey as a developer, showcase my illustrations, share coffee recipes, and document coding projects.

## Local Development

### Prerequisites

- Ruby (version 2.7 or higher)
- Bundler gem

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

### Recipes

Add recipes in the `_recipes/` directory with the filename format: `recipe-name.md`

**Front matter template:**
```yaml
---
title: Recipe Name
date: YYYY-MM-DD
layout: default
excerpt: "Brief description of your recipe"
---
```

### Art (Future Collection)

To add art pieces, create files in the `_art/` directory (you may need to create this directory first) with the filename format: `artwork-name.md`

**Front matter template:**
```yaml
---
title: Artwork Title
date: YYYY-MM-DD
layout: art
excerpt: "Brief description of your artwork"
image: /assets/images/artwork-name.jpg
---
```

## Site Structure

- `_posts/` - Blog posts
- `_projects/` - Project showcase
- `_recipes/` - Coffee recipes and brewing guides
- `_layouts/` - HTML templates
- `_includes/` - Reusable HTML components
- `assets/` - CSS, images, and other static files
- `_config.yml` - Site configuration

## Deployment

This site is automatically deployed to GitHub Pages when changes are pushed to the main branch. No additional deployment steps are required.