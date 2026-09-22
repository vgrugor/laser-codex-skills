---
name: laser-tiktok-sales-flow
description: Plan TikTok sales content for premium laser-cut plywood products from generated photorealistic preview images, concept folders, prototype photos, or finished product photos. Use when the user wants advice on what to post, shoot, tease, script, edit, schedule, or how to launch and sell a laser/CNC plywood product on TikTok before, during, or after fabrication.
---

# Laser TikTok Sales Flow

Turn a generated product preview or real product photo into a practical TikTok launch plan for a premium laser-cut plywood product.

## Core Rules

- Treat generated photorealistic images as visual concepts, not proof that the product already exists.
- Be transparent in hooks and captions: use wording such as `визуализация`, `концепт`, `будущий макет`, `хочу сделать из фанеры`, `из рендера в реальность`.
- Write in Russian by default unless the user asks for another language.
- Prioritize trust, craft, and repeatable sales over tricks. Do not recommend pretending that a generated preview is a finished item, fake customer demand, fake scarcity, or guaranteed viral outcomes.
- If the user asks for current TikTok trends, algorithm changes, trending sounds, platform rules, or exact best posting times, verify current information before giving time-sensitive advice.
- Use exact product details from the image or concept files, but label uncertain observations as assumptions.

## Input Modes

Use the richest available context:

1. **Preview image only**: analyze visible product type, buyer, premium cues, production story, and reveal potential. Return a chat-ready plan.
2. **Concept folder path**: read relevant files such as `final-description.md`, `final-image-prompt.md`, `material-palette.md`, `production-notes.md`, and preview images when available.
3. **Physical prototype or finished product photos**: update the plan from teaser/build content to proof/reveal/sales content.
4. **No image yet**: ask for the generated preview or concept folder path, then give a short preparation checklist.

## Output Location

When a selected concept folder is known, create or update:

```text
/Users/vlad/Laser/Designs_AI/_discovery/<product-type>/<general-idea-slug>/<design-concept-slug>/marketing/tiktok/
```

Recommended files:

- `tiktok-brief.md` - buyer, product angle, trust constraints, core promise.
- `content-calendar.md` - staged posting plan before, during, and after fabrication.
- `shot-list.md` - what to film at each production step.
- `video-scripts.md` - hooks, voiceover/text overlays, edit notes, CTA.
- `publish-log.md` - posts made, metrics, comments to answer, next tests.

If the folder is unknown, provide the same structure in the chat response without creating files.

## Workflow

1. Determine the product state: render-only, CAD/pre-production, cutting/finishing, assembled prototype, or finished product.
2. Extract the sellable angle: target buyer, occasion, emotional promise, premium details, personalization, and the strongest visual reveal.
3. Choose a narrative spine from `references/tiktok-playbook.md`. Default to `render-to-reality` when the only asset is a generated preview.
4. Build a 5-10 video sequence across three phases:
   - **Before production**: concept tease, audience vote, design promise, material/stain choices.
   - **During production**: CAD/LightBurn, laser cutting, sanding, staining, assembly, quality checks.
   - **After production**: render-vs-real reveal, use-context shots, packaging, ordering/listing CTA.
5. For each video include: goal, hook, shots to film, text/voiceover, edit rhythm, CTA, and what comment could become the next video.
6. Give a short `Что сделать сегодня` section with the next 3 practical actions.
7. Add a measurement loop: track retention, comments, saves, profile visits, order questions, and which objections should become follow-up videos.

## Required Response Shape

Lead with the immediately useful plan, not theory:

```text
Состояние продукта: ...
Главный TikTok-угол: ...
Что сделать сегодня:
1. ...
2. ...
3. ...

Серия роликов:
| Этап | Идея ролика | Hook | Что снять | CTA |

Сценарии для первых 3 роликов:
...

Что снять при изготовлении:
...

После готового изделия:
...
```

Use tables when they make the plan easier to film. Keep scripts short enough for 7-25 second videos unless the user asks for longer content.

## Quality Bar

A strong TikTok plan should:

- create curiosity before the product exists physically;
- show the craft process clearly enough to build trust;
- make the final reveal feel earned;
- collect audience signals before investing too much production time;
- turn comments into new videos;
- prepare the buyer for price by showing design, material, finishing, and personalization quality;
- end with a clear next action: vote, follow, comment, waitlist, message, or buy.

Read `references/tiktok-playbook.md` when producing a full content plan, writing scripts, building a calendar, or adapting the plan after prototype/final photos.
