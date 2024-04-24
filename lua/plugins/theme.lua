-- https://www.lazyvim.org/plugins/colorscheme

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 2000,
    ---@class CatppuccinOptions
    opts = function()
      -- TODO: generate dynamics colors
      local theme_colors = require("config.colors")
      return {
        flavour = "mocha",
        transparent_background = true,
        color_overrides = { all = theme_colors },
        custom_highlights = function(colors)
          return {
            CurSearch = { bg = colors.yellow },
            GitSignsChange = { fg = colors.blue },
          }
        end,
        integrations = {
          cmp = true,
          fidget = true,
          gitsigns = true,
          harpoon = true,
          lsp_trouble = true,
          mason = true,
          neotest = true,
          noice = true,
          notify = true,
          octo = true,
          telescope = {
            enabled = true,
          },
          treesitter = true,
          treesitter_context = false,
          symbols_outline = true,
          illuminate = true,
          which_key = true,
          barbecue = {
            dim_dirname = true,
            bold_basename = true,
            dim_context = false,
            alt_background = false,
          },
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "underline" },
              hints = { "underline" },
              warnings = { "underline" },
              information = { "underline" },
            },
          },
        },
      }
    end,
  },

  --   {
  --     "folke/tokyonight.nvim",
  --     lazy = true,
  --     opts = {
  --       style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  --       light_style = "day", -- The theme is used when the background is set to light
  --       transparent = true, -- Enable this to disable setting the background color
  --       terminal_colors = false, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  --       styles = {
  --         -- Style to be applied to different syntax groups
  --         -- Value is any valid attr-list value for `:help nvim_set_hl`
  --         comments = { italic = true },
  --         keywords = { italic = true },
  --         functions = {},
  --         variables = {},
  --         -- Background styles. Can be "dark", "transparent" or "normal"
  --         sidebars = "transparent", -- style for sidebars, see below
  --         floats = "normal", -- style for floating windows
  --       },
  --       sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  --       day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  --       hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  --       dim_inactive = false, -- dims inactive windows
  --       lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
  --     },
  --   },
}
