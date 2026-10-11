---
name: Swolseye
description: A simple, spacious app website with system-adaptive light and dark green themes.
colors:
  paper: "#fafaf7"
  ink: "#202b28"
  muted: "#53615b"
  green: "#245c44"
  line: "#d8dfd8"
  wash: "#eef2ec"
  accent: "#dcebb7"
  green-hover: "#173e2d"
  score-line: "#cad4c8"
  button-ink: "#ffffff"
typography:
  display:
    fontFamily: 'ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif'
    fontSize: "clamp(44px, 5.5vw, 72px)"
    fontWeight: 650
    lineHeight: 1.12
    letterSpacing: "-0.035em"
  headline:
    fontFamily: 'ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif'
    fontSize: "clamp(30px, 3.5vw, 43px)"
    fontWeight: 600
    lineHeight: 1.12
    letterSpacing: "-0.035em"
  title:
    fontFamily: 'ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif'
    fontSize: "23px"
    fontWeight: 600
    lineHeight: 1.12
    letterSpacing: "-0.035em"
  body:
    fontFamily: 'ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif'
    fontSize: "17px"
    fontWeight: 400
    lineHeight: 1.65
  intro:
    fontFamily: 'ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif'
    fontSize: "21px"
    fontWeight: 400
    lineHeight: 1.6
  label:
    fontFamily: 'ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif'
    fontSize: "13px"
    fontWeight: 400
    lineHeight: 1.65
rounded:
  button: "8px"
  brand-icon: "9px"
  app-icon: "19px"
  bull: "50%"
spacing:
  small: "8px"
  label: "12px"
  compact: "20px"
  regular: "24px"
  generous: "30px"
  panel: "32px"
components:
  button-primary:
    backgroundColor: "{colors.green}"
    textColor: "{colors.button-ink}"
    rounded: "{rounded.button}"
    padding: "13px 22px"
  button-primary-hover:
    backgroundColor: "{colors.green-hover}"
  app-screenshot:
    width: "300px"
  text-link:
    textColor: "{colors.green}"
  navigation:
    textColor: "{colors.muted}"
  faq-disclosure:
    textColor: "{colors.ink}"
    padding: "20px 0"
---

# Design System: Swolseye

## Overview

**Creative North Star: "Simple, spacious and system-adaptive"**

Swolseye uses the user-approved green and ivory direction, familiar system typography and ample space. The existing app icon carries the identity; the website explains the app with concise text and real framed app screenshots.

The visual system is quiet and practical. Flat surfaces, fine dividers and restrained curves support both the app introduction and longer help pages.

**Key Characteristics:**

- Light ivory canvas and deep green actions.
- Native system typography with generous reading space.
- Flat surfaces with fine separators.
- Existing app icon and real, theme-matched framed screenshots.

## Colors

Appearance follows `prefers-color-scheme` automatically and updates live. Light is the fallback. Native browser controls use `color-scheme: light dark`, and browser chrome uses matching media-qualified theme-color metadata. No manual override or saved preference is used.

| Token | Light | Dark |
|---|---|---|
| paper | #fafaf7 | #141c18 |
| ink | #202b28 | #edf3ed |
| muted | #53615b | #b5c3b8 |
| green | #245c44 | #a3d9b6 |
| line | #d8dfd8 | #35483b |
| wash | #eef2ec | #202d24 |
| accent | #dcebb7 | #365440 |
| green-hover | #173e2d | #bce8c9 |
| score-line | #cad4c8 | #425847 |
| button-ink | #ffffff | #14271b |

The primary button uses button-ink, not a fixed white foreground, to preserve contrast in dark mode. All color roles, including score dividers, are custom properties.

The palette combines a warm paper background with restrained greens. The frontmatter records the exact implemented colors from `assets/style.css`.

### Primary

- **Green:** links, primary actions, active player and focus outlines.
- **Green hover:** the primary action's darker hover state.
- **Accent:** text selection and the center of the small bull motif.

### Neutral

- **Paper:** the page canvas and skip-link surface.
- **Ink:** headings, branding and main text.
- **Muted:** descriptive text, labels and navigation at rest.
- **Line:** structural dividers.
- **Wash:** a reserved secondary surface color.
- **Score line:** retained legacy token; unused by the current screenshot layout.
- **White:** text on the green primary action.

## Typography

All roles use the same system sans-serif stack. The display, headline, title, body, intro and label tokens above are normative. There is no downloaded font or separate display family.

Headings have balanced wrapping and tight tracking. Introductory text is limited to 36ch; feature descriptions to 55ch; reading-page paragraphs and list items to 70ch. Score numerals use tabular figures, medium weight and tight tracking.

Reading pages use a smaller main heading (`clamp(38px, 5vw, 55px)`) and section headings (27px). Navigation is 15px; disclosure summaries are 19px with a 1.5 line height. Scores are 66px, reducing to 58px on narrow phones.

## Layout

The shared container is capped at 1120px with 40px side margins (20px at widths up to 800px). The hero uses 1.05fr / 1fr columns, a 64px gap and 48px / 60px vertical padding. Its framed screenshot is capped at 300px wide, 280px on mobile.

The feature heading spans the section. Below it, a 300px screenshot column sits beside a compact two-column feature list with 36px / 32px gaps. The number-grid screenshot is capped at 260px. Between 801px and 1000px the image column reduces to 240px, the screenshot to 230px and the gap to 32px. At 800px and below the layout stacks with text first; at 540px the feature list becomes one column.

Reading pages retain their 760px maximum width. Header and help/footer layouts retain the existing responsive behavior.
## Elevation & Depth

The current system has no shadows. Depth comes from the wash surface, paper canvas and fine borders. App screenshots supply their own device framing; feature content remains open on the page.

## Shapes

Use the observed radii in frontmatter: gently curved actions, a broader score surface and rounded app icons. Structural dividers are 1px. The small circular bull motif has a green ring (6px) around the accent center. Keep the existing app icon rather than drawing a substitute identity.

## Components

### Primary action

A compact, confident green link with contrasting semibold button-ink text. Use the frontmatter padding and radius. It darkens in light mode and lightens in dark mode on hover with a background transition (0.2s). Links and disclosure summaries show a green focus outline (3px) offset from the element (5px).

### Text links

Green, underlined links use an underline offset of 0.22em and a thicker underline on hover (2px). The help action uses semibold text and a spaced decorative arrow. Long links on reading pages wrap anywhere to avoid overflow.

### Navigation

A plain horizontal link group with a 28px gap. Muted links become green and underlined on hover or when carrying `aria-current`. Links have 8px vertical padding. Narrow phone spacing is 25px.

### Framed app screenshots

Use the supplied transparent PNGs at their natural aspect ratio (1470 × 3000). Device frames are already included: do not add another frame or crop the image. Use picture/source with prefers-color-scheme for dark variants and a light fallback. The hero image has high fetch priority; the secondary image loads lazily. Provide meaningful alt text and concise captions.
### FAQ disclosures

Use browser-native `details` and `summary`. Semibold summaries, a pointer cursor, 20px vertical spacing and bottom dividers establish the rhythm. Retain native keyboard behavior and the shared focus outline.

### Shared page structure

The header and footer have fine dividers; the brand is an icon plus bold name. A skip link becomes visible on focus. Smooth anchor scrolling and the button transition are the only motion; reduced-motion preference disables both.

## Do's and Don'ts

### Do:

- Do preserve the simple, spacious and system-adaptive direction.
- Do reuse the existing app icon and system font stack.
- Do use real screenshots with descriptive alt text and matching light/dark variants.
- Do retain visible keyboard focus and reduced-motion behavior.
- Do keep support pages readable with constrained text widths.

### Don't:

- Don't recreate or crop the supplied screenshots.
- Don't replace the existing visual identity without a new user decision.
- Don't add unsupported component variants to this extracted system.
