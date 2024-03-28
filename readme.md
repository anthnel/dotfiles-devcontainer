Dotfiles for DevContainer.

Add the following to your VS Code's settings.json.

```json
{
  "remote.containers.dotfiles.repository": "https://github.com/anthnel/dotfiles-devcontainer.git",
  "remote.containers.dotfiles.installCommand": "~/dotfiles/install.sh",
  "remote.containers.dotfiles.targetPath": "~/dotfiles",
}
```