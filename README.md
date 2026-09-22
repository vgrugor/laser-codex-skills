# Laser Codex Skills

Personal Codex skills for premium laser-cut plywood product workflows.

## Included Skills

- `/premium` -> `.agents/skills/premium-laser-product-flow/SKILL.md`
- `/discovery` -> `.agents/skills/laser-concept-discovery/SKILL.md`
- `/develop` -> `.agents/skills/laser-concept-development/SKILL.md`
- `/review` -> `.agents/skills/laser-prototype-review/SKILL.md`
- `/tiktok` -> `.agents/skills/laser-tiktok-sales-flow/SKILL.md`
- `/imagecut` -> `.agents/skills/laser-image-cut-adaptation/SKILL.md`

## Install On Windows

Clone this repository, then run:

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

By default, the installer copies skills into:

```text
$HOME\.agents\skills
```

To install into a specific project instead:

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1 -Target "C:\path\to\project\.agents\skills"
```

## Install On Mac Or Linux

Clone this repository, then run:

```bash
chmod +x ./install.sh
./install.sh
```

By default, the installer copies skills into:

```text
~/.agents/skills
```

To install into a specific project instead:

```bash
./install.sh "/Users/vlad/Laser/Designs_AI/.agents/skills"
```

After installation, copy or adapt `AGENTS.md` into the project root if you want the slash shortcuts to be available in that project.

## Update

Pull the latest changes and run the installer again:

```powershell
git pull
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

On Mac or Linux:

```bash
git pull
./install.sh
```
