-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- GitHub Copilot
  {
    'github/copilot.vim',
    lazy = false,
    config = function()
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_filetypes = {
        ['*'] = false,
        ['lua'] = false,
        ['python'] = true,
        ['rust'] = true,
        ['javascript'] = true,
        ['typescript'] = true,
      }
    end,
  },

  -- monokai pro
  {
    'loctvl842/monokai-pro.nvim',
    lazy = false,
    config = function()
      require('monokai-pro').setup {
        transparent_background = false,
        terminal_colors = true,
        devicons = true, -- highlight the icons of `nvim-web-devicons`
        styles = {
          comment = { italic = true },
          keyword = { italic = true }, -- any other keyword
          type = { italic = true }, -- (preferred) int, long, char, etc
          storageclass = { italic = true }, -- static, register, volatile, etc
          structure = { italic = true }, -- struct, union, enum, etc
          parameter = { italic = true }, -- parameter pass in function
          annotation = { italic = true },
          tag_attribute = { italic = true }, -- attribute of tag in reactjs
        },
        filter = 'octagon', -- classic | octagon | pro | machine | ristretto | spectrum
        -- Enable this will disable filter option
        day_night = {
          enable = false, -- turn off by default
          day_filter = 'octagon', -- classic | octagon | pro | machine | ristretto | spectrum
          night_filter = 'octagon', -- classic | octagon | pro | machine | ristretto | spectrum
        },
        inc_search = 'background', -- underline | background
        background_clear = {
          -- "float_win",
          'toggleterm',
          'telescope',
          'which-key',
          'renamer',
        }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree"
        plugins = {
          bufferline = {
            underline_selected = false,
            underline_visible = false,
          },
          indent_blankline = {
            context_highlight = 'default', -- default | pro
            context_start_underline = false,
          },
        },
      }
      -- lua
      vim.api.nvim_cmd({ cmd = 'colorscheme', args = { 'monokai-pro' } }, {})
    end,
  },
}
