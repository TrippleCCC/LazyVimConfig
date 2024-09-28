return {
  "echasnovski/mini.files",
  version = "*",
  keys = {
    {
      "-",
      function()
        require("mini.files").open()
      end,
      "Open mini.files",
    },
  },
}
