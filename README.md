# Language Technology Center website

A Jekyll website for the Language Technology Center. This repository contains the site content, page templates, styles, and project-page generator.

## Preview locally

Install Ruby and Bundler, then run from the repository root:

```bash
bundle install
bundle exec jekyll serve
```

The site configuration is in `_config.yml`. Preserve the existing theme and contributor credits when updating the site.

## Content editing

- _pages directory contains all base pages. Any new pages you want to add, you can add it there

- To generate new project pages - first add the project details in _data/research.yml file then put the **project_generator.rb** file under _disabled_plugins to _plugins (create if not present) and then build locally by running **jekyll build** and then push it to github repo

- To add collaborator details add the item in _data/collaborators.yml

- The project pages are generated based on **project.html** layout under _layouts

- Custom styles are available under assets/css/main.scss

- Images need to be stored under assets/images/

- Ensure _config.yml is up to date based on repo and remote server address