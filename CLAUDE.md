# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a LazyVim-based Neovim configuration that follows the standard LazyVim structure:

- `init.lua`: Entry point that bootstraps the configuration by requiring `config.lazy`
- `lua/config/`: Core configuration modules
  - `lazy.lua`: Plugin manager setup with Lazy.nvim, imports LazyVim core and custom plugins
  - `options.lua`: Neovim options and settings (extends LazyVim defaults)
  - `keymaps.lua`: Custom key mappings (extends LazyVim defaults)  
  - `autocmds.lua`: Autocommands (extends LazyVim defaults)
- `lua/plugins/`: Custom plugin specifications that override or extend LazyVim plugins
- `lazyvim.json`: LazyVim extras configuration defining enabled language packs and features
- `lazy-lock.json`: Plugin version lockfile managed by Lazy.nvim

## Plugin Management

This configuration uses Lazy.nvim as the plugin manager with LazyVim as the base configuration. The plugin loading strategy:

1. LazyVim core plugins are loaded first via `{ "LazyVim/LazyVim", import = "lazyvim.plugins" }`
2. Custom plugins in `lua/plugins/` are imported and can override LazyVim defaults
3. LazyVim extras are enabled via `lazyvim.json` for additional language support and features

## Key Configuration Details

- Host programs configured: Perl (`/opt/homebrew/bin/perl`) and Python (`~/.venvs/nvim/bin/python`)
- StyLua formatting configured with 2-space indentation and 120 column width
- Claude Code plugin integrated with comprehensive keybindings under `<leader>a`
- PHP: Intelephense LSP with php-cs-fixer for formatting (auto-discovers project config)
- Testing: vim-test with vimux strategy under `<leader>t`
- Navigation: vim-tmux-navigator for seamless tmux/vim pane switching
- Winbar enabled showing modified flag and file path per window

## Enabled LazyVim Extras

The configuration includes these LazyVim extras (defined in `lazyvim.json`):
- AI: copilot
- Coding: mini-surround, yanky
- Editor: dial, inc-rename
- Languages: ansible, docker, git, json, markdown, php, toml, typescript, yaml
- Utilities: dot, mini-hipatterns

## Commands

### Plugin Management
- `:Lazy` - Open Lazy.nvim plugin manager UI
- `:Lazy update` - Update all plugins
- `:Lazy sync` - Synchronize plugins (install missing, update existing)

### Code Formatting  
- `:!stylua .` - Format Lua files using StyLua with the project's configuration

### LazyVim Commands
- `:LazyExtras` - Browse and enable additional LazyVim extras
- `:LazyHealth` - Check LazyVim health and configuration status

### Claude Code Integration
The configuration includes comprehensive Claude Code keybindings under `<leader>a`:
- `<leader>ac` - Toggle Claude Code
- `<leader>af` - Focus Claude Code  
- `<leader>ar` - Resume Claude Code session
- `<leader>aC` - Continue Claude Code session
- `<leader>am` - Select Claude Code model
- `<leader>ab` - Add current buffer to Claude Code
- `<leader>as` - Send selection to Claude Code (visual mode) or add file from tree
- `<leader>aa` - Accept Claude Code diff
- `<leader>ad` - Deny Claude Code diff

### Testing (vim-test)
- `<leader>tn` - Test nearest
- `<leader>tf` - Test file
- `<leader>ts` - Test suite
- `<leader>tl` - Test last
- `<leader>tv` - Test visit