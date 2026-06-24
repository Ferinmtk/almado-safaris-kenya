#!/usr/bin/env bash
# Assembles standalone HTML pages from .build/ partials.
# Usage: ./build.sh
set -e
cd "$(dirname "$0")"
B=.build

assemble () {
  local page="$1" title="$2" desc="$3" active="$4" out="$5"
  # head
  sed -e "s|__TITLE__|$title|g" -e "s|__DESC__|$desc|g" "$B/head.html" > "$out"
  # header with active nav
  sed \
    -e "s|__ACTIVE_SERVICES__|$([ "$active" = services ] && echo active)|g" \
    -e "s|__ACTIVE_SAFARIS__|$([ "$active" = safaris ] && echo active)|g" \
    -e "s|__ACTIVE_FLEET__|$([ "$active" = fleet ] && echo active)|g" \
    -e "s|__ACTIVE_CONTACT__|$([ "$active" = contact ] && echo active)|g" \
    "$B/header.html" >> "$out"
  # body
  cat "$B/body-$page.html" >> "$out"
  # footer
  cat "$B/footer.html" >> "$out"
  echo "  built $out"
}

echo "Building pages..."
assemble index    "Almado Safaris Kenya — Trusted Travel & Transport in Kenya" "Almado Support Enterprise — safe, reliable travel and transport across Kenya." home     index.html
assemble services "Services — Almado Safaris Kenya" "Airport transfers, safari tours, corporate transport, and car hire in Kenya." services services.html
assemble safaris  "Safari Packages — Almado Safaris Kenya" "Guided safari tours and sample itineraries across Kenya's top parks." safaris  safaris.html
assemble fleet    "Our Fleet — Almado Safaris Kenya" "Clean, insured, well-maintained vehicles for every kind of trip in Kenya." fleet    fleet.html
assemble contact  "Contact — Almado Safaris Kenya" "Request a quote from Almado Safaris Kenya. We reply within a few hours." contact  contact.html
echo "Done."
