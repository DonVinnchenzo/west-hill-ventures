# westhillventures.com

Static one-page site for West Hill Ventures LLC. Single self-contained `index.html`, no build step.

Hosted on GitHub Pages from `main` (root).

## Go-live checklist (DNS cutover — owner action)

1. In the repo settings → Pages, set custom domain to `westhillventures.com` (this creates the `CNAME` file).
2. At the domain registrar, add:
   - `A` records for the apex → `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`
   - `CNAME` record `www` → `donvinnchenzo.github.io`
3. Back in Pages settings, wait for the DNS check, then enable **Enforce HTTPS**.

Until then the site is live at the github.io preview URL only.

## Editing

Edit `index.html`, push to `main` — Pages redeploys automatically. Product copy must match what clarybook.com actually claims (marketing copy is a product claim).
