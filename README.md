# Swolseye website

A small Jekyll site for the Swolseye iPhone app. The sibling application repository is never modified by this site or its build.

## Preview locally

Install Ruby 3.3 and Bundler, then run:

```sh
bundle install
bundle exec jekyll serve
```

Open http://127.0.0.1:4000/website/.

## Run with Docker

From the website folder:

```sh
docker compose up --build
```

Open http://localhost:4000/website/.

Compose mounts this website folder at `/app` in the container. Jekyll watches it using polling (including Docker Desktop/shared folders) and rebuilds the website when files change. Refresh your browser manually to see updates; automatic browser refresh is disabled. Generated pages stay inside the container at `/tmp/jekyll-site`. The sibling iOS application folder is not mounted or modified.

Restart with `docker compose restart` after changing `_config.yml`. Rebuild with `docker compose up --build` after changing the Gemfile. Stop with `docker compose down`.

This is a development server with file watching; GitHub Pages remains the production deployment.

## GitHub Pages

1. Push this repository to `Swolseye/website` on the `main` branch.
2. In GitHub repository Settings → Pages, choose **GitHub Actions** as the build source.
3. The included workflow builds Jekyll and deploys on each push to `main`. It also supports manual runs.

Expected default address: https://swolseye.github.io/website/

For a custom domain, set `url` and `baseurl` in `_config.yml`, add a `CNAME` file, and configure GitHub Pages and DNS. The workflow takes the deployment base path from GitHub Pages.

## App Store support information

Once deployed, use these URLs in App Store Connect:

- Marketing: `/website/`
- Support: `/website/support/`
- Privacy policy: `/website/privacy/`

Contact and FAQ are linked from the site. Apple also requires an accessible privacy-policy link inside the app; adding that is outside this repository's scope and has not been done here.

The App Store download URL remains empty in `_config.yml`. Set `app_store_url` when a real listing exists; the homepage will then show its App Store link. No release status or minimum iOS claim is published.

Before submission, verify the live pages and email link and have the publisher confirm the privacy policy reflects the released app and support handling, including any applicable retention or legal disclosure requirements. This website cannot establish App Review approval.

## Content and assets

Edit the homepage in `index.html`, help pages at the root, and shared layout/style in `_layouts/default.html` and `assets/style.css`. The icon is copied from the existing app asset. The homepage score panel is an explicitly labeled illustration, not an app screenshot. No JS or external font requests are needed.


