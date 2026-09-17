---
name: laser-prototype-review
description: Review photos, measurements, or generated raster preview images for a premium laser-cut plywood product. Use after physical prototyping or during virtual preview iteration to critique composition, premium appearance, stain palette, hardware, manufacturability risks, and version improvements.
---

# Laser Prototype Review

Use this for two review modes:

1. **Virtual preview review**: generated raster mockups in a selected concept folder's `preview/` directory.
2. **Physical prototype review**: real photos, measurements, or build notes after cutting/staining/assembly.

## Output Location

Update the selected concept folder:

```text
D:\Laser\Designs_AI\_discovery\<тип_изделия>\<слаг_общей_идеи>\<слаг_дизайн_концепта>\
```

For virtual previews, write versioned review files in `preview/`:

```text
preview\final-design-preview-v01-review.md
preview\final-design-preview-v02-review.md
preview\final-design-preview-v03-review.md
```

For physical prototypes, save photos in `photos/` when files are available and update `prototype-review.md`.

## Virtual Preview Review Criteria

Judge what can be judged from an AI-generated image:

- perceived premium level
- silhouette and proportions
- composition and focal point
- visual clarity from a product photo
- stain palette harmony and contrast
- hardware style and placement
- personalization readability
- whether it looks like a coherent product instead of assembled clipart
- manufacturability risks visible in the design idea
- prompt changes needed for the next preview version

Do **not** claim certainty about real cut quality, stain absorption, lacquer sheen, tolerances, glue-up, or actual hardware fit from a generated image.

## Physical Prototype Review Criteria

- perceived premium level
- silhouette and composition
- layer alignment and depth
- stain consistency and color contrast
- sanding quality
- burn/soot cleanup
- lacquer sheen and defects
- hardware quality and alignment
- mounting usability
- personalization readability
- packaging/photo/listing readiness

## Output

Lead with the most important fixes. Then update or draft:

- versioned preview review file, for virtual preview review
- `prototype-review.md`, for physical prototype review
- version-2/version-3 changes
- prompt changes for next preview, when reviewing generated images
- production note corrections, when relevant
- ready / revise / reject decision

Be direct. The goal is to make the next image or next physical prototype more premium and more sellable.
