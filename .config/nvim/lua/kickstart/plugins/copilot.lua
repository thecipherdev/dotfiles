return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  build = ':Copilot auth',
  event = 'BufReadPost',
  config = function()
    require('copilot').setup {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        keymap = {
          accept = '<C-y>',
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    }

    vim.keymap.set('i', '<C-y>', function()
      if require('copilot.suggestion').is_visible() then
        require('copilot.suggestion').accept()
      end
    end)
    vim.keymap.set('i', '<C-n>', function()
      if require('copilot.suggestion').is_visible() then
        require('copilot.suggestion').next()
      end
    end)
    vim.keymap.set('i', '<C-p>', function()
      if require('copilot.suggestion').is_visible() then
        require('copilot.suggestion').prev()
      end
    end)

    -- vim.api.nvim_set_hl(0, 'CopilotSuggestion', { fg = '#404040' })
  end,
}
