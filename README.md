# Where to put this folder?
Open Vim and type
   :h rtp
You should place the contents of this folder into $HOME/.config/{path shown in the prev command}

# Installation commands
- :PackerSync the plugin manager

# Shortcuts
- \<leader>p = delete current highlited word and paste what you copied before
- \<leader>d = delete into the void

## normal mode
- \<leader>pf = all files search
- \<leader>ps = grep search in multiple files
- \<C-p> = search only in git files

## Visual mode
- J move down block
- K move up block

## Harpoon
- \<C-e> = open harpoon menu
- \<C-h> = go to file 1
- \<C-t> = go to file 2
- \<C-n> = go to file 3
- \<C-s> = go to file 4
- space  a = mark file

## Undo tree
- \<leader>  u = open tree

## vim-fugitive
- \<leader>  g  s = open git

## LSP zero
- \<C-p> = Go to prev definition when showing the autocompletion
- \<C-n> = Go to next definition
- \<C-y> = Accept definition
- \<C-space> = Compelte definition

### normal mode
- gd = go to definition
- K = hover
- \<leader>  v w s = workspace symbol
- space  v  d = diagnostic open float
- [d = diagnostic next
- ]d = diagnostic prev
- \<leader>vca = code action
- \<leader>vrr = references
- \<leader>vrn = rename
- \<C-h> = signature help

# Installations needed
- https://github.com/wbthomason/packer.nvim
 - Need to install it manually with the command provided in the Repo
- https://github.com/BurntSushi/ripgrep/tree/master
  - For enhanced grep

# Dependencies
- https://github.com/nvim-telescope/telescope.nvim
- https://github.com/rose-pine/neovim
  - For color
- https://github.com/nvim-treesitter/nvim-treesitter
- https://github.com/ThePrimeagen/harpoon
- https://github.com/mbbill/undotree
- https://github.com/tpope/vim-fugitive
- https://github.com/VonHeikemen/lsp-zero.nvim
