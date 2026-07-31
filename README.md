# westhillventures.com

Static one-page site for West Hill Ventures LLC. Single self-contained `index.html`, no build step.

Hosted on Railway (project `westhillventures`, nginx via Dockerfile — same pattern as prjctworld).
Live at https://westhillventures-production.up.railway.app

## Go-live checklist (owner actions, one dashboard visit)

All in Railway dashboard → project `westhillventures` → service `westhillventures`
→ Settings (the account API token is not authorized for these mutations — dashboard only):

1. **Source → Connect Repo**: `DonVinnchenzo/west-hill-ventures`, branch `main`.
   From then on every push to `main` auto-deploys (same setup as ClaryBook).
2. **Networking → Custom Domain**: add `westhillventures.com` and
   `www.westhillventures.com`, then add the DNS records Railway shows at the
   registrar (CNAME for `www`; apex via ALIAS/ANAME or Cloudflare proxied CNAME).
3. Wait for the cert, then check https://westhillventures.com.

## Editing

Edit `index.html`, commit, push to `main` — Railway auto-deploys (after step 1
above; until then deploy manually with `railway up --service westhillventures
--detach` from the repo root). Product copy must match what clarybook.com actually
claims (marketing copy is a product claim).
