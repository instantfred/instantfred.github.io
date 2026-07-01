# frozen_string_literal: true
#
# Generates one HTML page per tag at /tags/<slug>/ using the `tag` layout.
# Jekyll has no built-in per-tag pages and a Liquid include cannot create
# pages, so this generator walks site.tags and emits a real page for each.
# Runs locally and in CI/Pages because the deploy workflow builds with a
# full Ruby environment (not the legacy Pages builder, which ignores _plugins).
module Jekyll
  class TagPageGenerator < Generator
    safe true

    def generate(site)
      dir = site.config.fetch("tag_dir", "tags")
      site.tags.each_key do |tag|
        site.pages << TagPage.new(site, site.source, dir, tag)
      end
    end
  end

  class TagPage < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir  = File.join(dir, Utils.slugify(tag))
      @name = "index.html"

      process(@name)
      @data = {
        "layout" => "tag",
        "tag"    => tag,
        "title"  => "Tag: #{tag}",
        "flush"  => true,
      }
    end
  end
end
