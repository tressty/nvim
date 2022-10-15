 <div align="center">
<p align="center">
  <img width="302" height="302" src="https://raw.githubusercontent.com/gist/Trard/11b579bed90014983788bb80a2ee88c8/raw/23eb027a2187a946ff533540123b66faaed4a02f/tressty.svg">
</p>


## **tressty.nvim**

Better than material.nvim

---

</div>

## 🔱 Info
Theme based on [Material theme](https://github.com/marko-cerovac/material.nvim) for [NeoVim](https://neovim.io/) with prettier highlight written in Lua.

tressty.nvim is meant to be a fast and modern colorscheme written in Lua that supports a lot of the new features
added to NeoVim like built-in [LSP](https://github.com/neovim/nvim-lspconfig) and [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

## 🌊 Features

+ 5 styles to choose from

TODO: make screenshots
<!-- 
    + Oceanic ![2022-04-18-01:21:38-screenshot](https://user-images.githubusercontent.com/76592799/163740712-493ff2e9-cd4f-41e0-b7cd-595b58924816.png)

    + Deep ocean ![2022-04-18-01:21:16-screenshot](https://user-images.githubusercontent.com/76592799/163740695-3c34201c-7ae4-482f-9548-53d08701bdd5.png)

    + Palenight ![2022-04-18-01:21:33-screenshot](https://user-images.githubusercontent.com/76592799/163740722-5bad7a23-a93d-446b-901a-fa2cae0c611e.png)

    + Lighter ![2022-04-18-01:21:28-screenshot](https://user-images.githubusercontent.com/76592799/163740732-bfb9bde2-f56b-48af-b8be-be8b1e18fef3.png)

    + Darker ![2022-04-18-01:21:22-screenshot](https://user-images.githubusercontent.com/76592799/163740743-02c243ae-512d-4707-b865-5261e09072dd.png)
 -->


+ Supported plugins:
    + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
    + [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
    + [Lsp Saga](https://github.com/glepnir/lspsaga.nvim)
    + [Nvim-Cmp](https://github.com/hrsh7th/nvim-cmp)
    + [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
    + [Git Gutter](https://github.com/airblade/vim-gitgutter)
    + [git-messenger](https://github.com/rhysd/git-messenger.vim)
    + [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
    + [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    + [Nvim-Tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
    + [NERDTree](https://github.com/preservim/nerdtree)
    + [Indent-Blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
    + [vim-which-key](https://github.com/liuchengxu/vim-which-key)
    + [WhichKey.nvim](https://github.com/folke/which-key.nvim)
    + [Dashboard](https://github.com/glepnir/dashboard-nvim)
    + [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
    + [Lualine](https://github.com/hoob3rt/lualine.nvim)
    + [Neogit](https://github.com/TimUntersberger/neogit)
    + [vim-sneak](https://github.com/justinmk/vim-sneak)
    + [nvim-dap](https://github.com/mfussenegger/nvim-dap)
    + [vim-illuminate](https://github.com/RRethy/vim-illuminate)
    + [mini.nvim](https://github.com/echasnovski/mini.nvim)

+ Ability to change background on sidebar-like windows like Nvim-Tree, Packer, terminal etc.

+ Asynchronous highlight loading which makes the theme blazingly fast

+ Ability to select styles using [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

+ Added functions for live theme switching without the need to restart NeoVim

+ Two [Lualine](https://github.com/hoob3rt/lualine.nvim) themes

    + Default:
    ![default-oceanic](https://user-images.githubusercontent.com/76592799/152083490-d0d3631f-6652-4fb0-aea5-1feb662ee01c.png)
    ![default-darker](https://user-images.githubusercontent.com/76592799/152083516-744eaad0-4803-4910-ac79-74acad5f306d.png)
    ![default-deep-ocean](https://user-images.githubusercontent.com/76592799/152083521-a0951e57-53aa-4d1a-8b3b-d374e74eae3e.jpg)
    ![default-palenight](https://user-images.githubusercontent.com/76592799/152083524-3c618c5b-f3f2-480d-8890-a8c36a356e08.png)
    ![default-lighter](https://user-images.githubusercontent.com/76592799/152083531-ae9f5b3f-4b24-4ab6-a974-e5662d1deaca.png)
    
    + Stealth
    ![stealth-oceanic](https://user-images.githubusercontent.com/76592799/152083543-bd887c52-c05e-4913-bab0-5de99bac76df.png)
    ![stealth-darker](https://user-images.githubusercontent.com/76592799/152083585-c8ea9e62-8188-4935-911b-c5da818aa93f.png)
    ![stealth-deep-ocean](https://user-images.githubusercontent.com/76592799/152083592-157ea3bc-6de9-40b0-a39b-5c0c1be1e0f6.png)
    ![stealth-palenight](https://user-images.githubusercontent.com/76592799/152083601-bbb22742-e5eb-452a-98cf-93a8ef6c7d11.png)
    ![stealth-lighter](https://user-images.githubusercontent.com/76592799/152083608-ee859def-be8b-443d-a871-987d5ca3e948.png)

## ⚡️ Requirements

+ Neovim >= 0.7.0

## ⚓ Installation

Install via your favourite package manager:
```vim
" If you are using Vim-Plug
Plug 'trard/tressty.nvim'
```

```lua
-- If you are using Packer
use 'trard/tressty.nvim'
```

## 🐬 Usage

Enable the colorscheme:
```vim
"Vim-Script:
colorscheme tressty
```

```lua
--Lua:
vim.cmd 'colorscheme tressty'
```


For a comlete guide on usage and configuration of the theme, see ```:help tressty.nvim```.

## ⚙️ Configuration

+ There are 5 different styles available:
    + darker
    + lighter
    + oceanic
    + palenight
    + deep ocean

Set the desired style using:
```vim
"Vim-Script:
let g:tressty_style = "darker"
```

```lua
--Lua:
vim.g.tressty_style = "deep ocean"
```

The configuration of different options is done trough a setup function
```vim
lua << EOF
require('tressty').setup()
EOF
```

This is an example of the function with the default values
```lua
require('tressty').setup({

    contrast = {
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        non_current_windows = false, -- Enable darker background for non-current windows
        popup_menu = false, -- Enable lighter background for the popup menu
    },

    italics = {
        comments = false, -- Enable italic comments
        keywords = false, -- Enable italic keywords
        functions = false, -- Enable italic functions
        strings = false, -- Enable italic strings
        variables = false -- Enable italic variables
    },

    contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
        "terminal", -- Darker terminal background
        "packer", -- Darker packer background
        "qf" -- Darker qf list background
    },

    high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = false -- Enable higher contrast text for darker style
    },

    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between verticaly split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    custom_highlights = {}, -- Overwrite highlights with your own

    plugins = { -- Here, you can disable(set to false) plugins that you don't use or don't want to apply the theme to
        trouble = true,
        nvim_cmp = true,
        neogit = true,
        gitsigns = true,
        git_gutter = true,
        telescope = true,
        nvim_tree = true,
        sidebar_nvim = true,
        lsp_saga = true,
        nvim_dap = true,
        nvim_navic = true,
        which_key = true,
        sneak = true,
        hop = true,
        indent_blankline = true,
        nvim_illuminate = true,
        mini = true,
    }
})
```

After passing the configuration to a setup function, make sure to enable the colorscheme:

```vim
colorscheme tressty
```

```lua
vim.cmd 'colorscheme tressty'
```

This is an example of overwriting the default highlights (most users will never need to do this)
```lua
require('tressty').setup{
    custom_highlights = {
        LineNr = { bg = '#FF0000' }
        CursorLine = { fg = '#0000FF', underline = true },

        -- This is a list of possible values
        YourHighlightGroup = {
            fg = "#SOME_COLOR", -- foreground color
            bg = "#SOME_COLOR", -- background color
            sp = "#SOME_COLOR", -- special color (for colored underlines, undercurls...)
            bold = false, -- make group bold
            italic = false, -- make group italic
            underline = false, -- make group underlined
            undercurl = false, -- make group undercurled
            underdot = false, -- make group underdotted
            underdash = false -- make group underdotted
            striketrough = false, -- make group striked trough
            reverse = false, -- reverse the fg and bg colors
            link = "SomeOtherGroup" -- link to some other highlight group
        }
    }
}
```

To enable the lualine themes, first set the theme in your lualine settings to `auto` or `tressty`
```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'auto'
    or
    theme = 'tressty'
    -- ... your lualine config
  }
}
```
Then, choose the style trough a variable called ```lualine_style``` in the theme setup function
```lua
require('tressty').setup({
    lualine_style = 'default' -- the default style
    or
    lualine_style = 'stealth' -- the stealth style
})
```

If the theme, doesn't look right, it's probably because tressty.nvim is being loaded before lualine,
causing the other tressty theme that comes built-in to lualine to be used.
To fix this, either load tressty.nvim after lualine (preferred way)
or set the lualine theme to one of these two values in your lualine settings
```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tressty-nvim' -- the default style
    or
    theme = 'tressty-stealth' -- the stealth style
    -- ... your lualine config
  }
}
```

## ⛵ Functions

+ Use Telescope.nvim to switch styles

![telescope_finder](https://user-images.githubusercontent.com/76592799/191139931-579be597-f176-4dd4-af52-eb2c496c3607.png)
```vim
:lua require("tressty.functions").find_style()
```


+ Cycle trough styles
```vim
:lua require('tressty.functions').toggle_style()
```


+ Toggle the end of buffer lines ( ~ )
```vim
:lua require('tressty.functions').toggle_eob()
```


+ Change the style to a desired one using the function change_style("desired style")
```vim
:lua require('tressty.functions').change_style("palenight")
```
