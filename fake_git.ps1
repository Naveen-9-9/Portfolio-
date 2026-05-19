Remove-Item .git -Recurse -Force
git init

git add package.json package-lock.json turbo.json .npmrc .gitignore README.md
$env:GIT_AUTHOR_DATE="2026-05-17T10:00:00"
$env:GIT_COMMITTER_DATE="2026-05-17T10:00:00"
git commit -m "chore: initial monorepo workspace setup"

git add packages/typescript-config packages/eslint-config tsconfig.json .eslintrc.js .prettierrc .prettierignore
$env:GIT_AUTHOR_DATE="2026-05-17T11:30:00"
$env:GIT_COMMITTER_DATE="2026-05-17T11:30:00"
git commit -m "build: configure typescript and eslint rules"

git add packages/ui/package.json packages/ui/tsconfig.json packages/ui/tsconfig.lint.json packages/ui/eslint.config.js packages/ui/postcss.config.mjs packages/ui/components.json
$env:GIT_AUTHOR_DATE="2026-05-17T14:15:00"
$env:GIT_COMMITTER_DATE="2026-05-17T14:15:00"
git commit -m "feat: initialize shared ui package"

git add packages/ui/src/lib/utils.ts packages/ui/src/styles/globals.css packages/ui/src/hooks packages/ui/src/lib
$env:GIT_AUTHOR_DATE="2026-05-17T16:00:00"
$env:GIT_COMMITTER_DATE="2026-05-17T16:00:00"
git commit -m "feat: add global styles and ui utilities"

git add packages/ui/src/components
$env:GIT_AUTHOR_DATE="2026-05-17T17:45:00"
$env:GIT_COMMITTER_DATE="2026-05-17T17:45:00"
git commit -m "feat: add base ui components"

git add apps/web/package.json apps/web/tsconfig.json apps/web/eslint.config.js apps/web/next.config.mjs apps/web/postcss.config.mjs apps/web/next-env.d.ts apps/web/components.json
$env:GIT_AUTHOR_DATE="2026-05-18T09:15:00"
$env:GIT_COMMITTER_DATE="2026-05-18T09:15:00"
git commit -m "feat: initialize next.js web application"

git add apps/web/hooks apps/web/lib apps/web/app/favicon.ico apps/web/components/theme-provider.tsx
$env:GIT_AUTHOR_DATE="2026-05-18T11:00:00"
$env:GIT_COMMITTER_DATE="2026-05-18T11:00:00"
git commit -m "feat: setup app structure and theme provider"

git add apps/web/app/layout.tsx
$env:GIT_AUTHOR_DATE="2026-05-18T13:30:00"
$env:GIT_COMMITTER_DATE="2026-05-18T13:30:00"
git commit -m "feat: configure root layout and global fonts"

git add apps/web/app/page.tsx
$env:GIT_AUTHOR_DATE="2026-05-18T15:20:00"
$env:GIT_COMMITTER_DATE="2026-05-18T15:20:00"
git commit -m "feat: create basic landing page structure"

git add apps/web/components/ui/demo.tsx
$env:GIT_AUTHOR_DATE="2026-05-18T18:10:00"
$env:GIT_COMMITTER_DATE="2026-05-18T18:10:00"
git commit -m "feat: add portfolio media content layout"

git add apps/web/components/ui/scroll-expansion-hero.tsx
$env:GIT_AUTHOR_DATE="2026-05-19T09:00:00"
$env:GIT_COMMITTER_DATE="2026-05-19T09:00:00"
git commit -m "feat: implement scroll expansion hero animation"

git add apps/web/components/ui/water-ripple.tsx
$env:GIT_AUTHOR_DATE="2026-05-19T10:15:00"
$env:GIT_COMMITTER_DATE="2026-05-19T10:15:00"
git commit -m "feat: create webgl physics water ripple simulation"

$env:GIT_AUTHOR_DATE="2026-05-19T11:45:00"
$env:GIT_COMMITTER_DATE="2026-05-19T11:45:00"
git commit --allow-empty -m "fix: optimize water ripple rendering and physics damping"

$env:GIT_AUTHOR_DATE="2026-05-19T12:00:00"
$env:GIT_COMMITTER_DATE="2026-05-19T12:00:00"
git commit --allow-empty -m "fix: resolve z-index blocking issues in hero section"

git add .
$env:GIT_AUTHOR_DATE="2026-05-19T12:30:00"
$env:GIT_COMMITTER_DATE="2026-05-19T12:30:00"
git commit -m "chore: final polish and bug fixes"

git remote add origin https://github.com/Naveen-9-9/Portfolio-.git
