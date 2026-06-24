# Almado Safaris Kenya

Marketing website for **Almado Support Enterprise** — *Your Trusted Travel and
Transportation Partner in Kenya.*

A static, dependency-free site (HTML + CSS + vanilla JS). No build step.

## Project structure

```
almado-safaris-kenya/
├── index.html          # Homepage
├── css/
│   └── styles.css      # All styling (design tokens at the top)
├── js/
│   └── main.js         # Config + small interactions
├── assets/
│   └── images/         # Your photos go here
├── .gitignore
└── README.md
```

## Run locally

Just open `index.html` in a browser. For a local server (recommended, so paths
resolve cleanly):

```bash
# Python 3
python3 -m http.server 8000
# then visit http://localhost:8000
```

## Configure before launch

1. **Contact details & WhatsApp number** — open `js/main.js` and edit the
   `CONFIG` object (`whatsapp`, `whatsappMessage`). All WhatsApp links update
   automatically.
2. **Phone / email** — in `index.html`, search for `REPLACE_` and fill in.
3. **Contact form** — create a free form at <https://formspree.io>, then in
   `index.html` replace `YOUR_FORM_ID` in the form's `action`. Submissions then
   arrive in your email.
4. **Photos** — add images to `assets/images/` and follow the `PHOTO:` comments
   in `index.html` and `css/styles.css`.

## Deploy

Static host — pick one:

- **Netlify:** drag this folder onto app.netlify.com.
- **Cloudflare Pages / GitHub Pages:** push to a repo and connect.
- **cPanel host:** upload contents to `public_html`.

Then point the domain **AlmadoSafarisKenya.com** to your host.

## Tech

HTML5 · CSS3 (custom properties, grid, flexbox) · vanilla JavaScript.
Fonts: Fraunces (display) + Inter (body) via Google Fonts.
