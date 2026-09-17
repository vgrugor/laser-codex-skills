# Laser Codex Skills

Personal Codex skills for premium laser-cut plywood product workflows.

## Included Skills

- `/premium` -> `.codex/skills/premium-laser-product-flow/SKILL.md`
- `/discovery` -> `.codex/skills/laser-concept-discovery/SKILL.md`
- `/develop` -> `.codex/skills/laser-concept-development/SKILL.md`
- `/review` -> `.codex/skills/laser-prototype-review/SKILL.md`
- `/tiktok` -> `.codex/skills/laser-tiktok-sales-flow/SKILL.md`
- `/imagecut` -> `.codex/skills/laser-image-cut-adaptation/SKILL.md`

## Install On Another Computer

Clone this repository, then run:

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

By default, the installer copies skills into:

```text
$HOME\.codex\skills
```

To install into a specific project instead:

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1 -Target "D:\Laser\Designs_AI\.codex\skills"
```

After installation, copy or adapt `AGENTS.md` into the project root if you want the slash shortcuts to be available in that project.

## Update

Pull the latest changes and run the installer again:

```powershell
git pull
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

