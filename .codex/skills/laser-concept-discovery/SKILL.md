---
name: laser-concept-discovery
description: Generate and preserve multiple premium laser-cut plywood design concepts before the user selects one. Use for product brief, general idea slug creation, stain palette-informed concept exploration, concept comparison, and saving all ideas under D:\Laser\Designs_AI\_discovery\<тип_изделия>\<слаг_общей_идеи>\.
---

# Laser Concept Discovery

Use this before a concrete design concept is selected.

## Output Location

Create or update:

```text
D:\Laser\Designs_AI\_discovery\<тип_изделия>\<слаг_общей_идеи>\
```

Use `D:\Laser\Designs_AI\laser-product-flow\scripts\new-discovery.ps1` when creating the folder.

## Required Files

- `discovery.md` - shared brief and constraints for the general idea.
- `concept-directions.md` - every generated concept, selected or not.
- `discovery-scorecard.md` - comparison and recommendation.
- `assets/`, `references/`, `versions/` as needed.

## Workflow

1. Determine concrete product type, for example `ключница`, `шкатулка`, `часы`, `панно`.
2. Create a slug for the general idea, for example `key-holder-v2-premium`.
3. Read measured stain data from `D:\Laser\Designs_AI\laser-product-flow\color-system\stain-palette.json` when choosing palettes.
4. Generate 3-7 distinct concept directions.
5. Give each concept its own design-concept slug.
6. Save all concept directions in `concept-directions.md`; never discard unchosen ideas.
7. Score and recommend which concept(s) to develop.
8. Stop before creating production/CAD files unless the user selects a concept.

## Concept Direction Fields

For each concept include:

- name and design-concept slug
- target buyer/use case
- composition
- layer plan
- stain palette with measured-color rationale
- hardware suggestion
- personalization idea
- manufacturability notes
- premium price justification
- decision status: selected, reserve, revise, or reject
