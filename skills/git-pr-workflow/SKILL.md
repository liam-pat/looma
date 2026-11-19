---
name: git-pr-workflow
description: Create scoped commits and GitHub PRs, check merge status, and clean up merged local branches when requested. Not for ordinary coding or review-only tasks.
---

# Git and PR Workflow

Use the repository from the current session or user-specified path. Follow its
applicable instructions, validation requirements, and PR template; project
conventions override the defaults below.

## Scope

- Do only the requested stage. Commit-only work stays local and needs no remote
  or PR base unless the project requires it. Creating a PR includes scoped commits
  and pushing. Status/review requests are read-only.
- PR work does not authorize merging, auto-merge, force-pushing, or remote branch
  deletion. Local branch deletion requires approval covering the named branches;
  an explicit cleanup request or prior approval counts.

## Commit

- Inspect changes, staging, branches, remotes, and worktrees. Commit only task
  files/hunks; preserve unrelated edits, staging, and commits. Inspect the complete
  staged diff and ask if task changes cannot be isolated safely.
- For PR work, fetch and verify the repository, head, and base before new commits.
  Discover the default branch; exclude unrelated commits from the PR diff. Use a
  dedicated branch when needed, defaulting to `codex/<short-topic>`.
- Validate the intended commit contents in the required environment. If unstaged
  or untracked content affects checks, test an isolated snapshot without disturbing
  user work, or disclose that the commit remains unverified. Reuse results only
  when the tested content and environment still apply.
- Default to English Conventional Commits: `type(scope): imperative description`.
  Verify the resulting commit matches the intended changes and reported checks.
  Inspect remaining working-tree changes and report validation limits.

## PR

- Reuse an open PR for the same task and repository/head/base. Push without
  overwriting remote work; after an ambiguous creation result, check before retrying.
- Use an English imperative title and a concise description of the problem,
  resulting behavior, and actual validation. Follow the template; pass multiline
  CLI descriptions through a body file. Update stale titles and descriptions. Resolve
  failures within scope; disclose remaining failures in a draft PR unless instructed otherwise.
- Verify the URL, head/base, and changed files. Attach the PR when supported and
  report its link, validation limits, and CI status separately from local results.

## Merged-Branch Cleanup

- On a status/cleanup request or PR wrap-up, verify GitHub reports **merged**, not
  merely closed. Do not wait indefinitely or promise background monitoring.
- Before cleanup, fetch the PR base and match the local tip to the merged PR head.
  Inspect later/unpushed commits. For squash/rebase merges, use patch/tree comparisons
  as needed to verify inclusion; retain the branch if uncertain.
- Present eligible local branches and their PRs; ask before deletion unless already
  authorized. Recheck tips, edits, and worktree occupancy immediately before mutation.
  Do not discard/stash user work, remove worktrees, or delete branches used elsewhere.
- Switch to the verified default branch and update it fast-forward only. If switching
  is unsafe or the branch diverged, leave cleanup pending rather than reset/rebase.
- Prefer `git branch -d`, but its upstream check does not prove PR-base inclusion.
  Use `-D` after squash/rebase only when inclusion is verified and deletion approved.
- Report removed/retained branches, active branch, remote synchronization, and local
  changes. Cleanup alone needs no source edits, new commits, or build.
