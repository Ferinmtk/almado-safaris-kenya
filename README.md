# Almado Safaris Kenya

Marketing website for **Almado Support Enterprise** — *Your Trusted Travel and
Transportation Partner in Kenya.* Static site: HTML + CSS + vanilla JS, no build
tools required to run.

## Pages (standalone)

| File           | Page                       |
|----------------|----------------------------|
| `index.html`   | Home                       |
| `services.html`| Services (detailed)        |
| `safaris.html` | Safari packages & itineraries |
| `fleet.html`   | Our fleet                  |
| `contact.html` | Contact + inquiry form     |

## Project structure

```
almado-safaris-kenya/
├── index.html  services.html  safaris.html  fleet.html  contact.html
├── css/styles.css      # All styling (design tokens at top, numbered sections)
├── js/main.js          # CONFIG (contact details) + interactions
├── assets/images/      # Your photos
├── .build/             # Shared partials (head, header, footer, page bodies)
├── build.sh            # Re-assembles the pages from .build/ partials
├── .gitignore
└── README.md
```

## Run locally

```bash
python3 -m http.server 8000   # then open http://localhost:8000
```

## Editing the shared header/footer

The header and footer are identical on every page. **Don't edit them in each
HTML file** — edit the partials in `.build/`, then regenerate:

```bash
bash build.sh
```

This rewrites all five pages so they never drift out of sync. If you only edit
page content, you can also edit the `.html` files directly.

## Configure before launch

1. **WhatsApp + contact details** — edit the `CONFIG` object in `js/main.js`.
   All WhatsApp links update automatically.
2. **Phone / email** — search for `REPLACE_` across the `.html` files (or in
   `.build/body-contact.html`, then run `build.sh`).
3. **Contact form** — create a free form at <https://formspree.io>, then replace
   `YOUR_FORM_ID` in `contact.html` (or `.build/body-contact.html`).
4. **Photos** — add images to `assets/images/` and follow the `PHOTO:` comments
   in the HTML/CSS.

## Deploy

Static host — Netlify (drag the folder in), Cloudflare Pages, GitHub Pages, or
any cPanel host (upload to `public_html`). Then point **AlmadoSafarisKenya.com**
at it.
