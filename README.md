# westhillventures.com

Static one-page site for West Hill Ventures LLC. Single self-contained `index.html`, no build step.

Hosted on Railway (project `westhillventures`, nginx via Dockerfile — same pattern as prjctworld).
Live at https://westhillventures-production.up.railway.app

## Go-live checklist (DNS cutover — owner action)

1. Railway dashboard → project `westhillventures` → service settings → **Custom Domain**:
   add `westhillventures.com` and `www.westhillventures.com` (CLI domain creation is
   unauthorized on this account — dashboard only).
2. Add the DNS records Railway shows at the registrar (CNAME for `www`; for the apex
   use the registrar's ALIAS/ANAME or Cloudflare proxied CNAME).
3. Wait for the cert to issue, then check https://westhillventures.com.

## Editing

Edit `index.html`, push to `main`, then deploy with
`railway up --service westhillventures --detach` from the repo root (no GitHub
auto-deploy connected). Product copy must match what clarybook.com actually claims
(marketing copy is a product claim).
