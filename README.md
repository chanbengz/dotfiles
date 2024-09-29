# dotfiles
研究者とハッカーとしてのMacの設定ファイル

## Dependencies

I use [Homebrew](https://brew.sh/) for package manager (Homebrew 最高！) and it all works on Apple Silicon.

```bash
# Xcode Develop Toolkitを持っていない人はいないでしょうね？
xcode-select --install

brew install autojump cmake fzf gawk gcc gnupg jq
brew install neovim rainbarf yazi wget pkg-config
brew install ripgrep rust tmux zsh

# optional
brew install btop cloc fastfetch lazygit pinentry-mac typst tree
```

### Terminal

My current terminal emulator is [Alacritty](https://alacritty.org/). The icon sucks, so please change it to whatever you like.

## Notes

This section includes something to be noticed. TBD

## Issues

Well, I dont remember much of the dependencies and neither do I verify the functionalities. It just works for me but I'm very happy to help if you get stucked when configuring your environment. Please directly raise an issue where I'll be notified immediately by email.
