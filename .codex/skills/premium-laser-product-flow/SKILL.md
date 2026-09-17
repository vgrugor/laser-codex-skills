---
name: premium-laser-product-flow
description: Orchestrate the full premium laser-cut plywood product workflow. Use when the user wants to create, continue, or review premium CNC diode laser plywood products, including discovery before concept selection, selected concept development, prototype review, color palette use, final Russian descriptions, and raster preview images.
---

# Premium Laser Product Flow

Use this as the entry-point skill. Decide which stage is active and route the work to the appropriate project skill:

- Before the user has selected a concrete design concept: use `laser-concept-discovery`.
- After the user selects a concrete design concept: use `laser-concept-development`, including the versioned virtual preview loop when the final description is ready.
- After the user shares prototype photos, asks for physical critique, or a generated preview image needs review: use `laser-prototype-review`.

## Canonical Paths

Reusable flow files:

```text
D:\Laser\Designs_AI\laser-product-flow\
```

Normalized stain samples:

```text
D:\Laser\Designs_AI\laser-product-flow\stain-samples\
```

Measured palette:

```text
D:\Laser\Designs_AI\laser-product-flow\color-system\stain-palette.json
```

Discovery folders:

```text
D:\Laser\Designs_AI\_discovery\<тип_изделия>\<слаг_общей_идеи>\
```

Selected concept folders:

```text
D:\Laser\Designs_AI\_discovery\<тип_изделия>\<слаг_общей_идеи>\<слаг_дизайн_концепта>\
```

## Operating Rules

- Preserve all generated concept ideas in the parent discovery folder, even if the user does not select them.
- Create a separate slug for the general idea and a separate slug for each selected design concept.
- Write durable working documents in Russian by default.
- Use measured stain palette data over stain names when choosing colors.
- Generate raster preview images only as visual mockups; never treat them as DXF/SVG/CAD/cutting files.
- Keep premium quality gates active: clarity of buyer, restrained composition, original concept, coherent stain palette, manufacturability, and visible price justification.

## Stage Decision

If the user asks for several design concepts, generate or update discovery:

```text
D:\Laser\Designs_AI\_discovery\<тип_изделия>\<слаг_общей_идеи>\
```

If the user chooses one concept, create its subfolder inside the same discovery folder.

If the user gives photos of a prototype, review the active selected concept folder and update `prototype-review.md`.

## Virtual Preview Loop

When `laser-concept-development` finishes `final-description.md` and `final-image-prompt.md`, run this default visual iteration loop unless the user explicitly skips it:

```text
preview/final-design-preview-v01.png -> preview/final-design-preview-v01-review.md
preview/final-design-preview-v02.png -> preview/final-design-preview-v02-review.md
preview/final-design-preview-v03.png -> preview/final-design-preview-v03-review.md
```

Each next preview version must be based on the previous image plus the review fixes from `laser-prototype-review`. Store all preview prompts, images, reviews, and the iteration log inside the selected concept folder's `preview/` directory.
