# Where to put this folder?
Open Vim and type
   :h rtp
You should place the contents of this folder into $HOME/.config/{path shown in the prev command}

# Installation commands
- :PackerSync the plugin manager

# Shortcuts
- space+p+f = all files search
- space+p+s = grep search in multiple files
- Ctrl + p = search only in git files

## Harpoon
- Ctrl + e = open harpoon menu
- Ctrl + h = go to file 1
- Ctrl + t = go to file 2
- Ctrl + n = go to file 3
- Ctrl + s = go to file 4
- space + a = mark file

## Undo tree
- space + u = open tree

## vim-fugitive
- space + g + s = open git

## LSP zero
- Ctrl + p = Go to prev definition when showing the autocompletion
- Ctrl + n = Go to next definition
- Ctrl + y = Accept definition
- Ctrl + space = Compelte definition

### normal mode
- gd = go to definition
- K = hover
- space  v w s = workspace symbol
- space  v  d = diagnostic open float
- [d = diagnostic next
- ]d = diagnostic prev
- <leader>vca = code action
- <leader>vrr = references
- <leader>vrn = rename
- <C-h> = signature help

# Installations needed
- https://github.com/wbthomason/packer.nvim
-- Need to install it manually with the command provided in the Repo
- https://github.com/BurntSushi/ripgrep/tree/master
-- For enhanced grep

# Dependencies
- https://github.com/nvim-telescope/telescope.nvim
- https://github.com/rose-pine/neovim
-- For color
- https://github.com/nvim-treesitter/nvim-treesitter
- https://github.com/ThePrimeagen/harpoon
- https://github.com/mbbill/undotree
- https://github.com/tpope/vim-fugitive
- https://github.com/VonHeikemen/lsp-zero.nvim
