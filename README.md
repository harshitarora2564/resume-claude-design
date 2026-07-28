# Harshit Arora — Resume Website

Single-page personal resume/portfolio site for Harshit Arora (Marketing, SEO & AI Content — Delhi NCR). Editorial aesthetic: cream background, deep forest green accent, oversized light headlines with italic serif accents, numbered sections.

Static site — no build step beyond a copy script, no framework, no JavaScript required to render.

Live: https://harshit-arora.vercel.app/

## Files

| File | Purpose |
|---|---|
| `index.html` | The entire page (HTML + CSS inline), plus meta tags and JSON-LD |
| `resume.pdf` | Source resume; the build also publishes it as `Harshit_Arora_Resume.pdf` |
| `og.png` | 1200×630 social preview card (LinkedIn, WhatsApp, Slack, X) |
| `robots.txt` | Crawler rules; explicitly allows AI/answer-engine crawlers |
| `sitemap.xml` | Indexable URLs |
| `llms.txt` | Plain-text profile summary for LLM/AI-search crawlers (GEO/AEO) |
| `build.sh` | Copies everything into `public/` at deploy time |
| `vercel.json` | Pins the build command and output directory |

## Button behavior

- **Download Resume** (nav) and **Resume (PDF)** (contact) download `Harshit_Arora_Resume.pdf`
- **LinkedIn ↗** opens [linkedin.com/in/harshitarora7](https://www.linkedin.com/in/harshitarora7) in a new tab
- **Email me** / the email pill open the default mail app via `mailto:aroraharshit2564@gmail.com`

## SEO / GEO notes

The page ships a canonical tag, Open Graph and Twitter card metadata, and a
`schema.org` `@graph` containing `ProfilePage` + `Person` (with `knowsAbout`,
`hasCredential`, `alumniOf` and `sameAs`). Google Fonts are loaded non-render-blocking
to protect LCP.

**All absolute URLs are hard-coded to `https://harshit-arora.vercel.app`.** If the domain
changes, update them in `index.html` (canonical, `og:url`, `og:image`, `twitter:image`,
and the JSON-LD block), `sitemap.xml`, `robots.txt` and `llms.txt`.

## Portrait photo

The build uses a local `profile.jpg` if present, otherwise fetches the hosted copy from
`harshitlive.lovable.app` once at build time. Committing a local `profile.jpg` (4:5 crop)
removes that external dependency — recommended.

## Updating the resume

Replace `resume.pdf`. Note it is deliberately stored with **uncompressed content streams**
(no ASCII85 filter) — some PDF viewers fail to parse ASCII85 + Flate double-filtered
streams and render raw operators as visible text.

## Deployment

Connected to Vercel via Git: every commit to `main` triggers a production deploy.
Build command `sh build.sh`, output directory `public` (also pinned in `vercel.json`).
