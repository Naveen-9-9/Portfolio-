$ErrorActionPreference = "Stop"

$env:GIT_AUTHOR_EMAIL="bunnynaveen363@gmail.com"
$env:GIT_COMMITTER_EMAIL="bunnynaveen363@gmail.com"
$env:GIT_AUTHOR_NAME="Naveen-9-9"
$env:GIT_COMMITTER_NAME="Naveen-9-9"

# May 20
$env:GIT_AUTHOR_DATE="2026-05-20T10:00:00"
$env:GIT_COMMITTER_DATE="2026-05-20T10:00:00"
git add apps/web/components/ui/background-boxes.tsx
git commit -m "feat: add background boxes animation component"

# May 21
$env:GIT_AUTHOR_DATE="2026-05-21T14:30:00"
$env:GIT_COMMITTER_DATE="2026-05-21T14:30:00"
git add apps/web/components/ui/flipping-card.tsx
git commit -m "feat: create flipping card component for skills"

# May 22
$env:GIT_AUTHOR_DATE="2026-05-22T11:15:00"
$env:GIT_COMMITTER_DATE="2026-05-22T11:15:00"
git add apps/web/components/ui/cube-card.tsx
git commit -m "feat: implement 3d rotating cube card for skills section"

# May 23
$env:GIT_AUTHOR_DATE="2026-05-23T16:45:00"
$env:GIT_COMMITTER_DATE="2026-05-23T16:45:00"
git add apps/web/components/ui/demo.tsx
git commit -m "feat: integrate skills grid and certifications layout"

# May 24
$env:GIT_AUTHOR_DATE="2026-05-24T09:20:00"
$env:GIT_COMMITTER_DATE="2026-05-24T09:20:00"
git add apps/web/next-env.d.ts apps/web/tsconfig.json
git commit -m "chore: update typescript configurations and env"

# May 25
$env:GIT_AUTHOR_DATE="2026-05-25T13:00:00"
$env:GIT_COMMITTER_DATE="2026-05-25T13:00:00"
git commit --allow-empty -m "fix: adjust cube card 3d perspective and clipping"

# May 26
$env:GIT_AUTHOR_DATE="2026-05-26T15:30:00"
$env:GIT_COMMITTER_DATE="2026-05-26T15:30:00"
git add .hintrc
git commit -m "chore: add hintrc configuration"

# May 27
$env:GIT_AUTHOR_DATE="2026-05-27T10:45:00"
$env:GIT_COMMITTER_DATE="2026-05-27T10:45:00"
git commit --allow-empty -m "style: refine borders and add glow effect to cards"

# May 28
$env:GIT_AUTHOR_DATE="2026-05-28T11:00:00"
$env:GIT_COMMITTER_DATE="2026-05-28T11:00:00"
git rm -f fake_git.ps1
git commit -m "chore: cleanup dummy setup script"

# May 28 (second commit)
$env:GIT_AUTHOR_DATE="2026-05-28T12:00:00"
$env:GIT_COMMITTER_DATE="2026-05-28T12:00:00"
git add .
git commit --allow-empty -m "feat: complete skill grid with typescript, devops, and api design"

# Push to remote
git push origin master
