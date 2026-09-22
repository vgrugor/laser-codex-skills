---
name: laser-image-cut-adaptation
description: Adapt user-provided images, sketches, photos, ornaments, logos, or generated raster previews into simplified premium laser-cut plywood design guidance. Use when Codex needs to analyze an input image for CNC/diode laser production, reduce visual complexity, separate cut/engrave/layer zones, map colors to the measured project stain palette from /Users/vlad/Laser/Designs_AI/laser-product-flow/color-system/stain-palette.json, run a three-step raster preview iteration loop, and produce Russian adaptation notes, prompts, or production-ready planning documents without treating raster mockups as CAD/DXF geometry.
---

# Laser Image Cut Adaptation

Use this skill when the user provides an image and wants it simplified, stylized, recolored, or adapted for laser-cut plywood production.

This is not a concept-discovery workflow. Start from the supplied image and preserve its main identity while making it manufacturable, readable, and compatible with the existing stain palette.

## Canonical Paths

Measured stain palette:

```text
/Users/vlad/Laser/Designs_AI/laser-product-flow/color-system/stain-palette.json
```

Adaptation folders:

```text
/Users/vlad/Laser/Designs_AI/_image-adaptation/<product-type>/<image-slug>/
```

Use lowercase English ASCII folder slugs with hyphens only, for example `wall-panel`, `logo-plaque`, or `floral-ornament`.

Reference criteria:

```text
/Users/vlad/Laser/Designs_AI/.agents/skills/laser-image-cut-adaptation/references/adaptation-criteria.md
```

## Required Files

Create or update these files in the adaptation folder:

- `source-notes.md` - what the input image contains, what must be preserved, and what can be discarded.
- `simplification-plan.md` - shape cleanup, contour strategy, detail hierarchy, and manufacturability fixes.
- `color-adaptation.md` - mapped stain palette, contrast rationale, and rejected colors.
- `laser-layer-plan.md` - proposed cut, engrave, score, inlay, raised layer, and background zones.
- `adapted-image-prompt.md` - base prompt for generating a realistic finished-product preview, not a schematic/vector mockup.
- `production-cautions.md` - risks before CAD/vector tracing/LightBurn.
- `source/` - copied or referenced input images when available.
- `preview/` - required raster preview loop files when previews are not explicitly skipped.

Preview files:

- `preview/adapted-image-prompt-v01.md`
- `preview/adapted-image-preview-v01.png`
- `preview/adapted-image-preview-v01-review.md`
- `preview/adapted-image-prompt-v02.md`
- `preview/adapted-image-preview-v02.png`
- `preview/adapted-image-preview-v02-review.md`
- `preview/adapted-image-prompt-v03.md`
- `preview/adapted-image-preview-v03.png`
- `preview/adapted-image-preview-v03-review.md`
- `preview/preview-iteration-log.md`

## Workflow

1. Identify the product type or intended object and create an English ASCII folder slug for it: panel, clock, key holder, box lid, sign, ornament, wall decor, logo plaque, etc.
2. Inspect the source image visually. If image files are present on disk, use visual inspection tools before making adaptation claims.
3. Create a concise Russian description of the source image in `source-notes.md`.
4. Separate the image into essential identity, supporting details, and removable noise.
5. Read the measured palette JSON before choosing stains. Prefer palette data and compatibility scores over stain names alone.
6. Reduce colors to 2-5 stain zones unless the object clearly needs more. Use high-contrast pairings for readable silhouettes and engraving.
7. Translate visual regions into laser operations: through-cut outer contour, internal cutouts, shallow engraving, score lines, raised plywood layers, optional inlay, and background plate.
8. Write `simplification-plan.md`, `color-adaptation.md`, `laser-layer-plan.md`, and `production-cautions.md`.
9. Create `adapted-image-prompt.md` from the adaptation documents. The prompt must request a realistic view of the finished plywood product with stained wood, thickness, shadows, engraving, raised layers, and real material presence.
10. Run the default three-step preview loop unless the user explicitly skips previews.
11. Stop before claiming that a raster preview is DXF/SVG/CAD/cutting geometry. Recommend vector tracing/CAD cleanup as the next production step when needed.

## Three-Step Preview Loop

Run this loop by default after `adapted-image-prompt.md` is ready:

```text
preview/adapted-image-preview-v01.png -> preview/adapted-image-preview-v01-review.md
preview/adapted-image-preview-v02.png -> preview/adapted-image-preview-v02-review.md
preview/adapted-image-preview-v03.png -> preview/adapted-image-preview-v03-review.md
```

Each next version must be based on the previous preview, the source image, and the review fixes from the prior step.

1. Create `preview/adapted-image-prompt-v01.md` from `adapted-image-prompt.md`, `simplification-plan.md`, `color-adaptation.md`, and `laser-layer-plan.md`. It must describe a finished physical product, not a diagram.
2. Generate `preview/adapted-image-preview-v01.png`.
3. Review v01 for finished-product realism, source resemblance, laser readability, stain-zone clarity, layer logic, and manufacturability. Treat schematic, flat SVG-like, blueprint, line-art-only, or CAD-style output as a failure to fix. Write `preview/adapted-image-preview-v01-review.md`.
4. Create `preview/adapted-image-prompt-v02.md` by applying v01 review fixes. Use v01 as a visual reference when useful.
5. Generate `preview/adapted-image-preview-v02.png`.
6. Review v02 and write `preview/adapted-image-preview-v02-review.md`.
7. Create `preview/adapted-image-prompt-v03.md` by applying v02 review fixes. Use v02 as a visual reference when useful.
8. Generate `preview/adapted-image-preview-v03.png`.
9. Review v03 and write `preview/adapted-image-preview-v03-review.md`.
10. Update `preview/preview-iteration-log.md` after each version with prompt source, generated file, key fixes, and decision: ready for vector tracing / needs another preview / revise adaptation.

Use v01 to test the basic simplification and finished-product look, v02 to repair weak resemblance/material realism/layer logic, and v03 to tighten the final visual target for CAD/vector work.

## Preview Rules

- Preview images must look like photos or realistic product renders of the finished laser-cut plywood item. They are sales/production visual targets, not technical drawings.
- Do not generate schematic SVG-style previews, flat vector diagrams, blueprint views, CAD screenshots, wireframes, black outline drawings, exploded technical drawings, or clean white-background cut-file layouts unless the user explicitly asks for a schematic.
- Show real plywood material: visible thickness, stained wood tones from the selected palette, laser-darkened engraved marks, layered edges, cast shadows, and plausible assembly depth.
- Preview images are bitmap visual targets only. They are not DXF, SVG, CAD, LightBurn files, or cutting geometry.
- Do not let the image generator restore removed photo noise, gradients, tiny texture, or impractical micro-detail.
- Preserve the source image identity more strongly than decorative style.
- Keep the selected stain zones visible and countable.
- Make cut, engrave, and raised-layer regions visually separable.
- Use versioned filenames only. Do not overwrite previous previews.

## Prompt Requirements

Every `adapted-image-prompt*.md` file must include:

- "realistic finished laser-cut plywood product"
- "not a schematic, not SVG, not a vector diagram, not CAD"
- product context: wall, tabletop, lid, sign, plaque, ornament, or other intended use
- material context: stained birch plywood, visible layer thickness, engraved details, clean laser-cut edges
- palette context: named stain colors selected from `color-adaptation.md`
- camera context: natural perspective or slight three-quarter view that shows depth

Do not use prompt wording such as "flat vector", "SVG style", "technical drawing", "cut file", "line art preview", "blueprint", or "diagram" for raster previews unless the user explicitly requests that style.

## Adaptation Rules

- Preserve the core readable identity of the input image: silhouette, pose, emblem, composition, or brand mark.
- Remove tiny texture, photo noise, hairline gradients, overlapping shadows, and details thinner than realistic laser/stain separation.
- Convert gradients into discrete stain zones, engraving density, or layered plywood depth.
- Use stain palette contrast for visual hierarchy: dark stain for silhouettes/engraving, light stain for background or highlights, mid tones for secondary layers.
- Prefer fewer, larger shapes over many fragile islands.
- Avoid floating islands unless bridges, backing plates, or layered overlays solve them.
- Treat black/white source art as shape information, not automatically as final black/white material.
- Mention uncertainties explicitly when the image is not available or too low-resolution.

## Quality Gates

Before finishing, check:

- The adapted design can be understood from 1-2 meters away.
- Thin lines, small islands, and tight negative spaces are flagged or removed.
- Every color has a stain-palette reason, not just an aesthetic name.
- Cut, engrave, and layer zones are distinguishable.
- The result still resembles the input image.
- The previews look like a finished physical plywood item, not a schematic/vector/SVG-style plan.
- The output can become CAD/DXF later, but is not falsely presented as CAD/DXF now.
- The v03 preview has an explicit decision: ready for vector tracing, needs another preview, or requires adaptation revision.

## Reference Use

Read `references/adaptation-criteria.md` when the request involves complex photos, portraits, multi-color artwork, logos, ornaments, or when deciding what to simplify versus preserve.
