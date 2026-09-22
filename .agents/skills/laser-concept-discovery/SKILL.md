---
name: laser-concept-discovery
description: Generate and preserve multiple premium laser-cut plywood design concepts before the user selects one. Use for product brief, general idea slug creation, stain palette-informed concept exploration, concept comparison, and saving all ideas under /Users/vlad/Laser/Designs_AI/_discovery/<product-type>/<general-idea-slug>/.
---

# Laser Concept Discovery

Use this before a concrete design concept is selected.

## Output Location

Create or update:

```text
/Users/vlad/Laser/Designs_AI/_discovery/<product-type>/<general-idea-slug>/
```

Create the folder tree directly on macOS if it does not exist. If helper scripts are available, prefer a macOS-compatible script from:

```text
/Users/vlad/Laser/Designs_AI/laser-product-flow/scripts/
```

## Required Files

- `discovery.md` - shared brief and constraints for the general idea.
- `concept-directions.md` - every generated concept, selected or not.
- `discovery-scorecard.md` - comparison and recommendation.
- `assets/`, `references/`, `versions/` as needed.

## Workflow

1. Determine concrete product type and create a lowercase English ASCII folder slug for it, for example `key-holder`, `keepsake-box`, `clock`, `wall-panel`.
2. Create a lowercase English ASCII slug for the general idea, for example `key-holder-v2-premium`.
3. Read measured stain data from `/Users/vlad/Laser/Designs_AI/laser-product-flow/color-system/stain-palette.json` when choosing palettes.
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
