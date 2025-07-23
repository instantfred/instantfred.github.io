---
layout: post
title: "How This Blog Was Built: A Jekyll Guide for Beginners"
date: 2025-07-21 10:00:00 -0600
categories: jekyll guide
excerpt: "A complete beginner's guide to building a personal blog with Jekyll and GitHub Pages, including all the commands and concepts you need."
tags: [jekyll, guide, tutorial]
---

Welcome! In this post, I'll walk you through how I built this blog from scratch using [Jekyll](https://jekyllrb.com/) and GitHub Pages. If you've never used Jekyll before, don't worry—I'll explain every step and command.

## What is Jekyll?

Jekyll is a static site generator. It takes your text (written in Markdown), templates, and configuration, and builds a complete website—no database or backend required. It's perfect for blogs and personal sites, and works seamlessly with GitHub Pages for free hosting.

## Step 1: Install Ruby and Jekyll

Jekyll is written in Ruby, so you'll need Ruby installed. On Ubuntu or Debian:

```sh
sudo apt update
sudo apt install ruby-full build-essential zlib1g-dev
```

Add Ruby's gem directory to your PATH (add this to your `~/.bashrc` or `~/.zshrc`):

```sh
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
```

Reload your shell:

```sh
source ~/.zshrc  # or source ~/.bashrc
```

Now install Jekyll and Bundler:

```sh
gem install jekyll bundler
```

## Step 2: Create a New Jekyll Site

Pick a folder for your site and run:

```sh
jekyll new myblog
cd myblog
```

This creates a new folder with all the files you need. You should see a directory structure like this:

```text
myblog/
├── 404.html
├── Gemfile
├── Gemfile.lock
├── _config.yml
├── _posts/
│   └── 2024-07-18-welcome-to-jekyll.markdown
├── _site/           # Generated site output (do not edit)
├── about.markdown
├── index.markdown
```

index.markdown is pretty much your home page, the landing page of your blog.

## Step 3: Run Your Site Locally

Start the development server:

```sh
bundle exec jekyll serve
```

Visit [http://localhost:4000](http://localhost:4000) in your browser. You should see your new site!

## Step 4: Customize Your Blog

- Edit `_config.yml` to set your site title, description, and social links.
- Add posts in the `_posts/` folder. Each post is a Markdown file named like `YYYY-MM-DD-title.md`.
- Change the look by editing files in `_layouts/`, `_includes/`, and `assets/css/`.
- Add pages (like `about.md`) in the root folder.

## Step 5: Add to Git and GitHub

Initialize a git repo and push to GitHub:

```sh
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/yourusername/yourrepo.git
git push -u origin main
```

## Step 6: Enable GitHub Pages

- Go to your repo on GitHub.
- Click **Settings > Pages**.
- Set the source branch to `main` (or `gh-pages`) and the root folder.
- GitHub will build and host your site at `https://yourusername.github.io/yourrepo/`.

## How This Blog Works

- **Content**: Posts and pages are written in Markdown.
- **Templates**: Layouts and includes control the look and structure.
- **Collections**: Custom folders like `_art/` and `_projects/` let you organize different types of content.
- **Tag Cloud**: Tags help organize posts and art; clicking a tag shows all related entries.
- **Hosting**: GitHub Pages builds and serves the site automatically when you push changes.

## Next Steps

- Try editing or adding a post in `_posts/`.
- Customize your theme in `assets/css/main.css`.
- Explore Jekyll plugins for more features.
- By default the setup uses jekyll's minimal theme, but you can find lots of nice themes in [Jekyll Themes](https://jekyllthemes.io/free)

If you have questions, check out the [Jekyll documentation](https://jekyllrb.com/docs/) or reach out to me!

