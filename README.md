# Looma

Reusable Codex skills for work across projects. Skills tied to one project stay in that project.

## Skills

- [english-polish](skills/english-polish/SKILL.md): Polish or translate short workplace text into English, with explanations in Chinese.
- [git-pr-workflow](skills/git-pr-workflow/SKILL.md): Create scoped commits and pull requests, and clean up merged local branches.

## Install

From this directory, run:

```bash
./install.sh
```

This links the skills into `~/.agents/skills/`. Keep this repository in place so the links keep working. Start a new Codex chat to use new or updated skills.

To install elsewhere, run `./install.sh --target-dir /path/to/skills`.

Run the script again after adding a skill. It skips existing links to the same skill and leaves conflicting files or links untouched. If it reports a conflict, resolve it manually and rerun.

To remove Looma skills, run `./uninstall.sh`. It removes only links to this repository's skills. Use `--target-dir /path/to/skills` if you installed them elsewhere.
