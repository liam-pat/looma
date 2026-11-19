# Looma

This project maintains reusable personal skills in `skills/<skill-name>/SKILL.md`.
Read `README.md` for scope.

## Scope and Design

- Keep `README.md` and `AGENTS.md` in English.
- Keep project-specific skills in their owning projects. Do not keep parallel
  copies of the Weekly or Lifescape translation skills here.
- Build skills around concrete user workflows. Do not create placeholder skills
  or a shared abstraction solely to eliminate a few repeated instructions.
- Derive the target project from the invoking session or the user's explicit
  path. Resolve bundled resources relative to the skill, and project files
  relative to the confirmed target project.
- Defer project commands, environments, and validation to applicable project
  instructions and current configuration. Avoid embedding another repository's
  paths, service names, or content model into a general-purpose skill.
- Keep the entrypoint focused on trigger, outcome, and consequential decisions.
  Add references, scripts, or assets only when they materially support the task.

## Review and Validation

- Preserve user edits and the requested scope. Distinguish observed failures
  from conditional risks that need evidence from a target project.
- Validate frontmatter, naming, and referenced resources after skill changes.
  Check realistic workflows for conflicting instructions and unintended writes.
- Run added or changed scripts with representative inputs. Do not present a
  metadata check or static review as proof of end-to-end behavior.
- Report changed files, completed checks, and any verification limits.
