local M = {}

M.ui = {
  theme = 'nightowl',
  tabufline = {
    overriden_modules = function (modules)
      table.insert(modules, modules[1])
      table.remove(modules, 1)
    end,
    lazyload = false,
  },
}
M.plugins = 'custom.plugins'

return M
