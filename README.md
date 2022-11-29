# dotfiles

## Installation

### Manual installation

```bash
git clone https://github.com/ogyogy/dotfiles.git ~/dotfiles
~/dotfiles/install.sh
```

### Using Visual Studio Code

```json
// settings.json
{
  "dotfiles.repository": "ogyogy/dotfiles",
  "dotfiles.targetPath": "~/dotfiles",
  "dotfiles.installCommand": "~/dotfiles/install.sh"
}
```

_cf._ [Developing inside a Container using Visual Studio Code Remote Development](https://code.visualstudio.com/docs/devcontainers/containers)
