---
name: laser-concept-development
description: Develop a selected premium laser-cut plywood design concept after the user chooses it. Use for creating the selected concept subfolder under D:\Laser\Designs_AI\_discovery\<тип_изделия>\<слаг_общей_идеи>\<слаг_дизайн_концепта>\, filling concept files, material palette, production notes, final Russian description, raster preview prompt/images, and running the versioned virtual preview iteration loop.
---

# Laser Concept Development

Use this only after the user selects a concrete concept from discovery.

## Output Location

Create or update:

```text
D:\Laser\Designs_AI\_discovery\<тип_изделия>\<слаг_общей_идеи>\<слаг_дизайн_концепта>\
```

Use `D:\Laser\Designs_AI\laser-product-flow\scripts\new-concept.ps1` to create the folder.

## Required Files

- `concept.md`
- `product-brief.md`
- `concept-scorecard.md`
- `material-palette.md`
- `premium-design-checklist.md`
- `production-notes.md`
- `prototype-review.md`
- `listing-checklist.md`
- `final-description.md`
- `final-image-prompt.md`
- `assets/`, `cad/`, `dxf/`, `lightburn/`, `photos/`, `preview/`, `versions/`

## Workflow

1. Confirm product type, general idea slug, selected concept name, and selected concept slug.
2. Create the selected concept subfolder inside its discovery folder.
3. Fill `concept.md`, `product-brief.md`, and `concept-scorecard.md` from the selected discovery idea.
4. Fill `material-palette.md` using measured stain palette data.
5. Fill `production-notes.md` for SolidWorks, DXF, LightBurn, assembly, staining, lacquer, and hardware.
6. Fill `premium-design-checklist.md` and revise weak choices before CAD.
7. Create `final-description.md` in Russian when the design is ready.
8. Create `final-image-prompt.md`.
9. Run the virtual preview iteration loop before CAD planning unless the user explicitly skips it.

## Virtual Preview Iteration Loop

Use the image generation skill/tool to create raster mockups from `final-image-prompt.md`. Save every generated image inside the selected concept folder's `preview/` directory with a version suffix.

Default loop:

1. Prepare v01 files with `D:\Laser\Designs_AI\laser-product-flow\scripts\new-preview-iteration.ps1 -ConceptRoot <concept-folder> -Version 1`.
2. Generate `preview\final-design-preview-v01.png` from `preview\final-image-prompt-v01.md`.
3. Use `laser-prototype-review` in virtual preview mode to review v01 and write `preview\final-design-preview-v01-review.md`.
4. Create `preview\final-image-prompt-v02.md` from v01 prompt plus review fixes.
5. Generate `preview\final-design-preview-v02.png` from v02 prompt, using v01 image as visual reference when useful.
6. Review v02 and write `preview\final-design-preview-v02-review.md`.
7. Create `preview\final-image-prompt-v03.md` from v02 prompt plus review fixes.
8. Generate `preview\final-design-preview-v03.png` from v03 prompt, using v02 image as visual reference when useful.
9. Review v03 and decide: ready for CAD planning / revise concept / generate another version.

Update `preview\preview-iteration-log.md` after each version.

## Preview Rules

- Preview images are bitmap visual targets only. They are not DXF, SVG, CAD, or cutting geometry.
- Do not let the image generator invent new product features that are absent from `final-description.md`, `material-palette.md`, or `production-notes.md`.
- Preserve manufacturability: realistic layer count, realistic plywood thickness, possible hardware, no floating parts, no impossible cutouts.
- Use versioned filenames only: `final-design-preview-v01.png`, `final-design-preview-v02.png`, `final-design-preview-v03.png`.
- Keep prompts beside images: `final-image-prompt-v01.md`, `final-image-prompt-v02.md`, `final-image-prompt-v03.md`.
- Keep reviews beside images: `final-design-preview-v01-review.md`, etc.
