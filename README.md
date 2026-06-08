# Dongjie Fu's Academic Homepage

Personal academic homepage of **Dongjie Fu (付栋杰)**, M.S. student at the School of Software Technology, Zhejiang University.

Live site: https://ballooncatt.github.io

## Built With

This site is built with [Jekyll](https://jekyllrb.com/) and adapted from the academic homepage template by [Xize Cheng (Exgc)](https://github.com/Exgc/exgc.github.io), which itself is based on [AcademicPages](https://github.com/academicpages/academicpages.github.io).

## Local Development

```bash
bundle install
bundle exec jekyll serve
```

Then open http://localhost:4000.

## Content Structure

All page content lives in `_pages/includes/`:

- `intro.md` — About Me
- `news.md` — News
- `pub.md` — Publications (highlighted papers + full list)
- `edu.md` — Educations
- `award.md` — Honors and Awards
- `work.md` — Internships & Projects

Site-wide settings (name, avatar, email, social links) are in `_config.yml`.

Paper architecture figures are stored under `images/models/`.

## Google Scholar Citation Badge (optional)

To enable the auto-updating citation stats, add a repository secret
`GOOGLE_SCHOLAR_ID` = `nLll-OIAAAAJ` in **Settings → Secrets and variables → Actions**.
The GitHub Action will then update the citation data daily.
