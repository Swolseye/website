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
  score-sheet: "16px"
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
  score-sheet:
    backgroundColor: "{colors.wash}"
    textColor: "{colors.ink}"
    rounded: "{rounded.score-sheet}"
    padding: "32px"
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

Swolseye uses the user-approved green and ivory direction, familiar system typography and ample space. The existing app icon carries the identity; the website explains the app with concise text and a clearly labeled scorekeeping illustration.

The visual system is quiet and practical. Flat surfaces, fine dividers and restrained curves support both the app introduction and longer help pages.

**Key Characteristics:**

- Light ivory canvas and deep green actions.
- Native system typography with generous reading space.
- Flat surfaces with fine separators.
- Existing app icon and explicitly labeled illustrations.

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
- **Wash:** the score illustration's tinted surface.
- **Score line:** separators inside the tinted illustration.
- **White:** text on the green primary action.

## Typography

All roles use the same system sans-serif stack. The display, headline, title, body, intro and label tokens above are normative. There is no downloaded font or separate display family.

Headings have balanced wrapping and tight tracking. Introductory text is limited to 36ch; feature descriptions to 55ch; reading-page paragraphs and list items to 70ch. Score numerals use tabular figures, medium weight and tight tracking.

Reading pages use a smaller main heading (`clamp(38px, 5vw, 55px)`) and section headings (27px). Navigation is 15px; disclosure summaries are 19px with a 1.5 line height. Scores are 66px, reducing to 58px on narrow phones.

## Layout

The shared container is centered and capped at 1120px, with 40px space on each side. The desktop hero uses a 1.05fr / 1fr grid with a 64px gap and 88px / 100px vertical padding. The feature section uses a 1fr / 1.05fr grid with a 90px gap. These are observed homepage compositions, not mandatory layouts for every page.

At 800px and below, the container has 20px side margins, hero and features become single columns, and the help strip stacks. Hero spacing reduces to a 35px gap and 55px / 60px vertical padding. The illustration is capped at 480px and its padding reduces to 25px. Reading pages use a 760px maximum width with 65px / 80px vertical padding; top padding reduces to 45px at this breakpoint.

At 420px and below, branding and navigation stack, header padding reduces to 20px and hero top padding to 38px. Navigation and footer can wrap. Keep literal whitespace around line breaks that disappear on mobile so words remain separated.

## Elevation & Depth

The current system has no shadows. Depth comes from the wash surface, paper canvas and fine borders. The score illustration is a single distinct surface; feature content remains open on the page.

## Shapes

Use the observed radii in frontmatter: gently curved actions, a broader score surface and rounded app icons. Structural dividers are 1px. The small circular bull motif has a green ring (6px) around the accent center. Keep the existing app icon rather than drawing a substitute identity.

## Components

### Primary action

A compact, confident green link with contrasting semibold button-ink text. Use the frontmatter padding and radius. It darkens in light mode and lightens in dark mode on hover with a background transition (0.2s). Links and disclosure summaries show a green focus outline (3px) offset from the element (5px).

### Text links

Green, underlined links use an underline offset of 0.22em and a thicker underline on hover (2px). The help action uses semibold text and a spaced decorative arrow. Long links on reading pages wrap anywhere to avoid overflow.

### Navigation

A plain horizontal link group with a 28px gap. Muted links become green and underlined on hover or when carrying `aria-current`. Links have 8px vertical padding. Narrow phone spacing is 25px.

### Scorekeeping illustration

A tinted, rounded figure with two score columns, an active player in green, a checkout route and a small bull motif. The score columns are separated from surrounding content by fine lines. Preserve its descriptive accessible label and visible example-match caption; it is an illustration, not an app screenshot or interactive scorekeeper.

### FAQ disclosures

Use browser-native `details` and `summary`. Semibold summaries, a pointer cursor, 20px vertical spacing and bottom dividers establish the rhythm. Retain native keyboard behavior and the shared focus outline.

### Shared page structure

The header and footer have fine dividers; the brand is an icon plus bold name. A skip link becomes visible on focus. Smooth anchor scrolling and the button transition are the only motion; reduced-motion preference disables both.

## Do's and Don'ts

### Do:

- Do preserve the simple, spacious and system-adaptive direction.
- Do reuse the existing app icon and system font stack.
- Do label score illustrations and provide equivalent accessible descriptions.
- Do retain visible keyboard focus and reduced-motion behavior.
- Do keep support pages readable with constrained text widths.

### Don't:

- Don't present the illustrative score sheet as an actual app screenshot.
- Don't replace the existing visual identity without a new user decision.
- Don't add unsupported component variants to this extracted system.



