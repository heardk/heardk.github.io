# Kelly Heard — Personal Site

This is the source code for [kellyheard.com](https://kellyheard.com), a personal website and portfolio for Kelly Heard. The site is built using [Jekyll](https://jekyllrb.com/) and styled with custom CSS, inspired by [MVP.css](https://github.com/andybrewer/mvp/).

## Features

- Static site generated with Jekyll
- Custom responsive design ([assets/css/styles.css](assets/css/styles.css))
- Project and tools data managed via YAML in [`_data/`](./_data/)
- Contact form powered by [Formspree](https://formspree.io/)
- Dynamic status updates via JavaScript and Cloudflare Workers

## Repository Structure

```
_config.yml           # Jekyll configuration
Gemfile               # Ruby gems for Jekyll and plugins
assets/
  css/styles.css      # Main site stylesheet
  favicon.png         # Favicon
  profile.jpeg        # Profile image
_data/
  status.yml          # (reserved for status data)
  tools.yml           # List of tools/resources
_includes/
  head.html           # HTML head (meta, styles, fonts)
  scripts.html        # JavaScript includes (status updater)
_layouts/
  default.html        # Base layout
  page.html           # Layout for static pages
  post.html           # Layout for blog posts
404.html              # Custom 404 page
CNAME                 # Domain config for GitHub Pages
contact.html          # Contact form page
index.html            # Homepage
projects.md           # Projects listing page
README.md             # This file
```

## Key Technologies

- [Jekyll](https://jekyllrb.com/) — Static site generator
- [GitHub Pages](https://pages.github.com/) — Hosting
- [Formspree](https://formspree.io/) — Contact form backend
- [Google Fonts](https://fonts.google.com/) — Typography

## Getting Started

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- [Bundler](https://bundler.io/) (`gem install bundler`)

### Install dependencies

```sh
bundle install
```

### Serve locally

```sh
bundle exec jekyll serve
```

Visit [http://localhost:4000](http://localhost:4000) in your browser.

### Build the site

```sh
bundle exec jekyll build
```

The static site will be generated in the `_site/` directory.

## Deployment

This site is designed to be deployed on [GitHub Pages](https://pages.github.com/). Push changes to the `main` branch and GitHub Pages will build and publish the site automatically.

---

For more details, see the [Jekyll documentation](https://jekyllrb.com/docs/).