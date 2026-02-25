<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />

  <title>{{TITLE}}</title>
  <meta name="description" content="{{META_DESCRIPTION}}" />
  <meta name="keywords" content="{{META_KEYWORDS}}" />
  <meta name="theme-color" content="{{THEME_COLOR}}" />
  <link rel="stylesheet" href="/assets/signature.css">

  <script type="application/ld+json" id="schemaJson">
{{SCHEMA_JSON}}
  </script>

  <style>
    :root {
      /* High-Trust Automotive Professional Palette */
      --bg: #F8FAFC;
      --surface: #FFFFFF;
      --surface-alt: #F1F5F9;

      --text-main: #0F172A;
      --text-muted: #64748B;

      --primary: #0F172A; /* Navy */
      --primary-hover: #1E293B;

      --action: #2563EB; /* Royal Blue */
      --action-hover: #1D4ED8;

      --accent: #0EA5E9; /* Sky */

      --border: #E2E8F0;
      --shadow: rgba(15, 23, 42, 0.08);

      --radius: 16px;
      --max-width: 1120px;
      --font: system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial, sans-serif;
    }

    * { box-sizing: border-box; }
    html, body { height: 100%; }
    body {
      margin: 0;
      font-family: var(--font);
      background: var(--bg);
      color: var(--text-main);
      line-height: 1.35;
      -webkit-font-smoothing: antialiased;
      text-rendering: optimizeLegibility;
    }

    a { color: inherit; text-decoration: none; }

    .wrap {
      max-width: var(--max-width);
      margin: 0 auto;
      padding: 28px 16px 96px; /* bottom padding for sticky bar */
    }

    /* Top header */
    .topbar {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      margin-bottom: 18px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
      min-width: 0;
    }
    .logo {
      width: 44px;
      height: 44px;
      border-radius: 14px;
      background: linear-gradient(135deg, var(--primary), var(--action));
      box-shadow: 0 8px 20px var(--shadow);
      display: grid;
      place-items: center;
      flex: 0 0 auto;
    }
    .logo svg { width: 22px; height: 22px; fill: #fff; opacity: 0.95; }

    .brand-meta {
      min-width: 0;
    }
    .badge {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 6px 10px;
      border-radius: 999px;
      border: 1px solid var(--border);
      background: rgba(14, 165, 233, 0.08);
      color: var(--primary);
      font-weight: 600;
      font-size: 12px;
    }
    .chip {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 6px 10px;
      border-radius: 999px;
      border: 1px solid var(--border);
      background: rgba(37, 99, 235, 0.06);
      color: var(--text-main);
      font-weight: 600;
      font-size: 12px;
      margin-left: 6px;
    }

    h1 {
      font-size: 26px;
      margin: 8px 0 2px;
      letter-spacing: -0.02em;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }
    .sub {
      color: var(--text-muted);
      font-size: 14px;
      margin: 0;
    }

    .actions-top {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      justify-content: flex-end;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 12px 14px;
      border-radius: 14px;
      border: 1px solid var(--border);
      background: var(--surface);
      font-weight: 700;
      font-size: 14px;
      cursor: pointer;
      transition: transform 0.12s ease, background 0.12s ease, border-color 0.12s ease;
      user-select: none;
    }
    .btn svg { width: 18px; height: 18px; fill: none; stroke: currentColor; stroke-width: 2; }
    .btn:hover { transform: translateY(-1px); border-color: rgba(15, 23, 42, 0.18); }
    .btn:active { transform: translateY(0px); }

    .btn.primary {
      background: linear-gradient(135deg, var(--action), var(--primary));
      border-color: transparent;
      color: #fff;
      box-shadow: 0 12px 26px rgba(37, 99, 235, 0.20);
    }
    .btn.primary:hover { background: linear-gradient(135deg, var(--action-hover), var(--primary-hover)); }

    .btn.secondary {
      background: var(--surface);
      color: var(--text-main);
    }

    /* Main hero area */
    .hero {
      display: grid;
      grid-template-columns: 1.2fr 0.8fr;
      gap: 18px;
      margin-top: 16px;
      align-items: stretch;
    }

    .card {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      box-shadow: 0 14px 30px var(--shadow);
      overflow: hidden;
    }

    .hero-card {
      padding: 18px;
      display: grid;
      gap: 10px;
    }

    .hero-text h2 {
      margin: 0;
      font-size: 26px;
      letter-spacing: -0.02em;
      line-height: 1.1;
    }
    .hero-text p {
      margin: 8px 0 0;
      color: var(--text-muted);
      font-size: 15px;
      line-height: 1.45;
    }

    .value-props {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 10px;
      margin-top: 10px;
    }

    .prop {
      display: flex;
      gap: 10px;
      align-items: flex-start;
      border: 1px solid var(--border);
      border-radius: 14px;
      padding: 10px 12px;
      background: var(--surface-alt);
    }
    .prop svg { width: 18px; height: 18px; stroke: var(--action); }
    .prop-text { display: grid; gap: 2px; }
    .prop-text strong { font-size: 13px; }
    .prop-text span { font-size: 12px; color: var(--text-muted); }

    /* Right image */
    .image-showcase {
      position: relative;
      display: grid;
      place-items: center;
      padding: 16px;
      min-height: 220px;
      background: linear-gradient(135deg, rgba(14,165,233,0.10), rgba(37,99,235,0.06));
    }
    .image-showcase img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      border-radius: 14px;
      border: 1px dashed rgba(15, 23, 42, 0.18);
      opacity: 0; /* placeholder */
    }
    .image-placeholder-text {
      position: absolute;
      inset: 16px;
      border-radius: 14px;
      border: 1px dashed rgba(15, 23, 42, 0.22);
      display: grid;
      place-items: center;
      padding: 18px;
      text-align: center;
      color: rgba(15, 23, 42, 0.62);
      background: rgba(255,255,255,0.55);
      backdrop-filter: blur(6px);
    }
    .image-placeholder-text svg {
      width: 34px;
      height: 34px;
      stroke: rgba(15, 23, 42, 0.55);
      margin-bottom: 6px;
    }

    /* Sections below */
    .layout-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 18px;
      margin-top: 18px;
    }

    .section {
      padding: 18px;
    }

    .section-title {
      margin: 0;
      font-size: 18px;
      letter-spacing: -0.01em;
    }
    .section-sub {
      margin: 6px 0 0;
      color: var(--text-muted);
      font-size: 13px;
      line-height: 1.45;
    }

    .border-right {
      border-right: 1px solid var(--border);
    }

    /* Quote form */
    .form-stack {
      margin-top: 14px;
      display: grid;
      gap: 12px;
    }

    .input-group {
      border: 1px solid var(--border);
      border-radius: 14px;
      background: var(--surface);
      padding: 12px 12px;
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .input-group input,
    .input-group select,
    .input-group textarea {
      border: none;
      outline: none;
      width: 100%;
      font-size: 15px;
      background: transparent;
      color: var(--text-main);
      font-family: var(--font);
    }

    .input-label {
      font-size: 12px;
      color: var(--text-muted);
      font-weight: 700;
      display: block;
      margin-bottom: 6px;
    }

    .form-alert {
      border: 1px solid rgba(37, 99, 235, 0.24);
      background: rgba(37, 99, 235, 0.06);
      border-radius: 14px;
      padding: 12px 12px;
      display: flex;
      gap: 10px;
      margin-top: 12px;
      color: rgba(15, 23, 42, 0.85);
      font-size: 13px;
      line-height: 1.35;
    }
    .form-alert svg { width: 18px; height: 18px; stroke: var(--action); margin-top: 1px; }

    /* Footer */
    footer {
      margin-top: 18px;
      text-align: center;
      color: var(--text-muted);
      font-size: 12px;
    }

    /* Sticky bar */
    .sticky-bar {
      position: fixed;
      left: 0;
      right: 0;
      bottom: 0;
      background: rgba(248,250,252,0.86);
      border-top: 1px solid var(--border);
      backdrop-filter: blur(12px);
      padding: 10px 12px;
    }
    .sticky-inner {
      max-width: var(--max-width);
      margin: 0 auto;
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 10px;
    }
    .sticky-inner .btn {
      width: 100%;
    }

    /* Mobile */
    @media (max-width: 920px) {
      .hero { grid-template-columns: 1fr; }
      .layout-grid { grid-template-columns: 1fr; }
      .border-right { border-right: none; border-bottom: 1px solid var(--border); }
    }
  </style>
</head>

<body>
  <main class="wrap">
    <div class="topbar">
      <div class="brand">
        <div class="logo" aria-hidden="true">
          <svg viewBox="0 0 24 24">
            <path d="M12 2l7 4v6c0 5-3 9-7 10-4-1-7-5-7-10V6l7-4z"/>
          </svg>
        </div>

        <div class="brand-meta">
          <div>
            <span class="badge">{{BADGE}}</span>
            <span class="chip">{{CHIP}}</span>
          </div>
          <h1 id="bizName">{{BIZ_NAME}}</h1>
          <p class="sub" id="bizLine">{{BIZ_LINE}}</p>
        </div>
      </div>

      <div class="actions-top">
        <button class="btn secondary btn--signature" id="copyLinkBtn" type="button">
          <svg viewBox="0 0 24 24"><path d="M10 13a5 5 0 0 1 0-7l1.5-1.5a5 5 0 0 1 7 7L18 12"/><path d="M14 11a5 5 0 0 1 0 7L12.5 19.5a5 5 0 0 1-7-7L6 12"/></svg>
          Copy Link
        </button>

        <a class="btn primary btn--signature btn--signature-xl" id="reviewsBtn" href="#" target="_blank" rel="noopener">
          <svg viewBox="0 0 24 24"><path d="M12 2l3 7h7l-5.5 4.2L18.5 21 12 16.8 5.5 21l2-7.8L2 9h7z"/></svg>
          Reviews
        </a>
      </div>
    </div>

    <div class="hero">
      <div class="card hero-card">
        <div class="hero-text">
          <h2>{{HERO_HEADLINE}}</h2>
          <p>{{HERO_SUBHEAD}}</p>
        </div>

        <div class="value-props">
          {{VALUE_PROPS_HTML}}
        </div>
      </div>

      <div class="card image-showcase">
        <img src="#" alt="Before and After service photo" />
        <div class="image-placeholder-text">
          <svg viewBox="0 0 24 24">
            <rect x="3" y="3" width="18" height="18" rx="2" ry="2"/>
            <circle cx="8.5" cy="8.5" r="1.5"/>
            <polyline points="21 15 16 10 5 21"/>
          </svg>
          <div>
            <strong>Image Placeholder</strong><br/>
            Add a high-quality photo/logo later after purchase.
          </div>
        </div>
      </div>
    </div>

    <div class="card" style="margin-top: 18px;">
      <div class="layout-grid">
        <div class="section border-right">
          {{INFO_SECTION_HTML}}
        </div>

        <div class="section">
          <h2 class="section-title">{{QUOTE_SECTION_TITLE}}</h2>
          <p class="section-sub">{{QUOTE_SECTION_SUB}}</p>

          {{FORM_ALERT_HTML}}

          <div class="form-stack">
            {{FORM_FIELDS_HTML}}

            <button class="btn primary btn--signature btn--signature-xl" id="sendTextBtn" style="margin-top: 8px;">
              <svg viewBox="0 0 24 24">
                <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"/>
              </svg>
              {{SEND_TEXT_BUTTON_LABEL}}
            </button>
          </div>

          <footer>
            This demo page is optimized for fast quotes by text.
          </footer>
        </div>
      </div>
    </div>
  </main>

  <div class="sticky-bar">
    <div class="sticky-inner">
      <a class="btn secondary btn--signature" id="stickyCall" href="#">
        <svg viewBox="0 0 24 24">
          <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/>
        </svg>
        {{STICKY_CALL_LABEL}}
      </a>

      <a class="btn primary btn--signature btn--signature-xl" id="stickyText" href="#">
        <svg viewBox="0 0 24 24">
          <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/>
        </svg>
        {{STICKY_TEXT_LABEL}}
      </a>
    </div>
  </div>

  <script>
  const CONFIG = {{CONFIG_JSON}};
  const $ = (s) => document.querySelector(s);

  function isIOS(){ return /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream; }
  function smsHref(phone, body){
    const p = String(phone||"").replace(/\s+/g,"");
    const encoded = encodeURIComponent(body);
    return isIOS() ? `sms:${p}&body=${encoded}` : `sms:${p}?&body=${encoded}`;
  }

  function buildMessage(){
    let msg = (CONFIG.sms_intro || `Hi ${CONFIG.name}, I need a quote.`) + "\n\n";

    // IMPORTANT: your generated fields must include data-label="..."
    document.querySelectorAll("[data-label]").forEach((el) => {
      const label = el.getAttribute("data-label");
      let value = "";

      if (el.type === "checkbox") value = el.checked ? "Yes" : "No";
      else value = (el.value || "").trim();

      if (value) msg += `${label}: ${value}\n`;
    });

    msg += "\n" + (CONFIG.sms_outro || "");
    return msg.trim();
  }

  function init(){
    $("#bizName").textContent = CONFIG.name;
    $("#bizLine").textContent = CONFIG.cityLine || "";

    const phone = String(CONFIG.phone||"").replace(/\s+/g,"");
    $("#stickyCall").href = `tel:${phone}`;

    $("#stickyText").addEventListener("click", (e) => {
      e.preventDefault();
      window.location.href = smsHref(phone, CONFIG.quick_text || `Hi ${CONFIG.name}, I need a quote.`);
    });

    $("#sendTextBtn").addEventListener("click", () => {
      window.location.href = smsHref(phone, buildMessage());
    });

    const reviews = $("#reviewsBtn");
    if (reviews && CONFIG.reviews_url) reviews.href = CONFIG.reviews_url;

    const copyBtn = $("#copyLinkBtn");
    if (copyBtn) {
      copyBtn.addEventListener("click", async () => {
        try {
          await navigator.clipboard.writeText(window.location.href);
          copyBtn.textContent = "Copied!";
          setTimeout(() => (copyBtn.innerHTML = `<svg viewBox="0 0 24 24"><path d="M10 13a5 5 0 0 1 0-7l1.5-1.5a5 5 0 0 1 7 7L18 12"/><path d="M14 11a5 5 0 0 1 0 7L12.5 19.5a5 5 0 0 1-7-7L6 12"/></svg> Copy Link`), 900);
        } catch(e) {
          alert("Copy failed. Long-press the address bar and copy the link.");
        }
      });
    }
  }

  init();
  </script>
</body>
</html>
