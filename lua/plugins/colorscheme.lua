local colorschemes = {
  { "ribru17/bamboo.nvim", "bamboo" },
  { "mellow-theme/mellow.nvim", "mellow" },
  { "sainnhe/sonokai", "sonokai" },
  { "AlexvZyl/nordic.nvim", "nordic" },
  { "rebelot/kanagawa.nvim", "kanagawa-dragon" },
}

local function transform()
  local ret = {}
  for _, v in pairs(colorschemes) do
    table.insert(ret, { v[1] })
  end
  local randColor = colorschemes[math.random(0, #colorschemes - 1)][2]
  table.insert(ret, {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = randColor,
    },
  })

  print(ret)

  return ret
end

return {
  { "rebelot/kanagawa.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}

-- return transform()

-- return {
--   { "ribru17/bamboo.nvim" },
--   { "mellow-theme/mellow.nvim" },
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "mellow",
--     },
--   },
-- }
