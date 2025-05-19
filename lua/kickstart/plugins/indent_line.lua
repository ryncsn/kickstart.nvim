return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    config = function()
      local highlight = {
        'RainbowBlue',
        'RainbowGreen',
        'RainbowYellow',
        'RainbowOrange',
        'RainbowRed',
        'RainbowViolet',
        'RainbowCyan',
      }

      local hooks = require 'ibl.hooks'
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#313F9F' })
        vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#889339' })
        vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#C5B04B' })
        vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#A17A46' })
        vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#D04C55' })
        vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#B668BD' })
        vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#56A6B2' })
      end)

      require('ibl').setup { indent = { highlight = highlight } }
    end,
  },
}
