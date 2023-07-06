## Installing

You will need `git` and GNU `stow`

Clone into your `$HOME` directory or `~`

```bash
git clone https://github.com/damevi/.dotfiles.git ~
```

Run `stow` to symlink everything or just select what you want

```bash
stow */ # Everything (the '/' ignores the README)
```

For NvChad
After installing, in order to ovewrite the existing files
```bash
stow nvchad --adopt
git restore .
```
