# Harshit Arora — Resume Website

Single-page personal resume/portfolio site for Harshit Arora (Marketing, SEO & AI Content — Delhi NCR). Editorial aesthetic: cream background, deep forest green accent, oversized light headlines with italic serif accents, numbered sections.

Built as a fully static site — no build step, no framework, no JavaScript required.

## Files

- `index.html` — the entire site (HTML + CSS in one file)
- `resume.pdf` — resume served by the "Download Resume" / "Resume (PDF)" buttons

## Button behavior

- **Download Resume** (nav) and **Resume (PDF)** (contact section) download `resume.pdf` as `Harshit_Arora_Resume.pdf`
- **LinkedIn ↗** opens [linkedin.com/in/harshitarora7](https://www.linkedin.com/in/harshitarora7) in a new tab
- **Email me** / the email pill open the default mail app via `mailto:aroraharshit2564@gmail.com`

## Portrait photo

The hero portrait tries to load a local `profile.jpg` first and falls back to the hosted copy at `harshitlive.lovable.app/profile.jpg`. To make the site fully self-contained, add your portrait (4:5 crop) to the repo root as `profile.jpg` — no code change needed.

## Updating the resume

Replace `resume.pdf` with a new file of the same name.

## Deployment

**GitHub Pages:** Settings → Pages → Deploy from a branch → select the branch and `/ (root)`.

**Vercel:** import the repo, no framework preset, no build command needed.
