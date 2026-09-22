# Image Adaptation Criteria

Use these criteria when converting a supplied image into laser-cut plywood guidance.

## Source Image Triage

Classify the source before adapting:

- **Logo or emblem**: preserve outline, internal counters, spacing, and brand recognizability. Simplify effects, gradients, texture, and small secondary marks.
- **Photo or generated render**: preserve subject silhouette, pose, main props, and depth cues. Convert lighting and texture into 2-5 material zones.
- **Ornament or pattern**: preserve rhythm, symmetry, and repeat logic. Remove overly dense micro-detail and merge repeated strokes.
- **Character or animal**: preserve head/body silhouette, eye placement, signature features, and emotional expression. Avoid realistic fur/hair detail unless engraved.
- **Landscape or scene**: preserve foreground/midground/background layers. Convert atmospheric depth into layered plywood planes and engraving.

## Detail Hierarchy

Keep:

- outer silhouette and major negative spaces
- large internal contours that define identity
- eyes, key facial/emblem features, or signature object details
- symmetry axes, repeated motifs, and major composition lines

Simplify:

- hair, fur, leaves, fabric, stone, or wood grain into grouped engraving
- shadows into stain zones or engraving density
- gradients into flat zones
- small decorative repeats into fewer stronger motifs

Remove or flag:

- details below the practical kerf/engraving readability threshold
- isolated islands without backing, bridges, or layer support
- muddy overlaps that will disappear after staining
- thin parallel cuts that may char, break, or visually merge

## Color Mapping

Always read:

```text
/Users/vlad/Laser/Designs_AI/laser-product-flow/color-system/stain-palette.json
```

Use compatibility entries to select strong pairings. Prefer:

- light background plus dark silhouette for high readability
- mid-tone secondary layer between light and dark zones
- restrained accent stain only where it improves recognition

Document:

- source color or tonal region
- chosen stain name
- role in the design
- palette/contrast rationale
- rejected alternatives if they reduce readability or look cheap

## Laser Operation Mapping

Translate image regions into:

- **Through cut**: outside contour, removable negative spaces, structural slots.
- **Score line**: fine internal boundary that should remain subtle.
- **Engraving**: texture, shading, labels, facial detail, logo interior lines.
- **Raised layer**: bold foreground elements, frames, icons, silhouettes.
- **Inlay or insert**: color accents that need clean separated pieces.
- **Backing plate**: support for islands, fragile silhouettes, and layered scenes.

## Preview Style

Raster previews should show the adapted image as a finished physical product. They should look like a realistic photo or product render of stained plywood, not like a cut-file plan.

Require:

- visible plywood thickness and layered construction
- stained wood colors from the selected palette
- laser-darkened engraving where engraving is used
- real shadows, bevels, edge darkness, and material texture
- a slight perspective or three-quarter product view when depth matters

Reject and correct:

- flat SVG-like diagrams
- schematic vector art
- CAD or blueprint style
- pure black outline cut paths on white
- exploded technical layouts
- labels, arrows, dimensions, or construction annotations in the image

The technical decomposition belongs in `laser-layer-plan.md`; the preview image should sell and verify the finished object.

## Output Tone

Durable documents should be in Russian unless the user asks otherwise. Be practical and specific: write what should change, what should remain, and why it improves laser production.
