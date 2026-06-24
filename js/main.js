/* ============================================================
   Almado Safaris Kenya — main.js
   ------------------------------------------------------------
   Edit CONFIG below to update contact details site-wide.
   The WhatsApp links and footer year are wired up from here.
   ============================================================ */

const CONFIG = {
  // WhatsApp number in international format, digits only (no + or spaces)
  whatsapp: "2547XXXXXXXX",        // e.g. "254712345678"
  // Default prefilled WhatsApp message
  whatsappMessage: "Hello Almado Safaris Kenya, I'd like to plan a trip.",
};

document.addEventListener("DOMContentLoaded", () => {
  // Footer year
  const yr = document.getElementById("yr");
  if (yr) yr.textContent = new Date().getFullYear();

  // Wire all WhatsApp links from CONFIG
  const waUrl =
    `https://wa.me/${CONFIG.whatsapp}?text=` +
    encodeURIComponent(CONFIG.whatsappMessage);
  document.querySelectorAll("[data-whatsapp]").forEach((el) => {
    el.setAttribute("href", waUrl);
  });

  // Mobile menu toggle
  const menuBtn = document.querySelector(".menu-btn");
  const navLinks = document.querySelector(".nav-links");
  if (menuBtn && navLinks) {
    menuBtn.addEventListener("click", () => {
      const open = navLinks.classList.toggle("open");
      navLinks.style.display = open ? "flex" : "";
      menuBtn.setAttribute("aria-expanded", String(open));
    });
  }
});
