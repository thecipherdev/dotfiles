return {
  'desdic/marlin.nvim',
  opts = {},
  config = function(_, opts)
    local marlin = require 'marlin'
    marlin.setup(opts)

    local keymap = vim.keymap.set
    keymap('n', '<Leader>fa', function()
      marlin.add()
    end, { desc = 'add file' })
    keymap('n', '<Leader>fd', function()
      marlin.remove()
    end, { desc = 'remove file' })
    keymap('n', '<Leader>fx', function()
      marlin.remove_all()
    end, { desc = 'remove all for current project' })
    keymap('n', '<Leader>f]', function()
      marlin.move_up()
    end, { desc = 'move up' })
    keymap('n', '<Leader>f[', function()
      marlin.move_down()
    end, { desc = 'move down' })
    keymap('n', '<Leader>fs', function()
      marlin.sort()
    end, { desc = 'sort' })
    keymap('n', '<Leader>fn', function()
      marlin.next()
    end, { desc = 'open next index' })
    keymap('n', '<Leader>fp', function()
      marlin.prev()
    end, { desc = 'open previous index' })
    keymap('n', '<Leader><Leader>', function()
      marlin.toggle()
    end, { desc = 'toggle cur/last open index' })

    for index = 1, 4 do
      keymap('n', '<Leader>' .. index, function()
        marlin.open(index)
      end, { desc = 'goto ' .. index })
    end
  end,
}
