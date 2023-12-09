return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>/", false },
    {
      "ff",
      function()
        require("telescope.builtin").find_files({
          file_ignore_patterns = { "node_modules", ".git/", "_build", ".elixir_ls/" },
          hidden = true,
        })
      end,
      desc = "find files",
    },
    {
      "fg",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "live grep",
    },
    {
      "fb",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "buffers",
    },
    {
      "fh",
      function()
        require("telescope.builtin").help_tags()
      end,
      desc = "help tags",
    },
    {
      "fp",
      function()
        require("telescope.builtin").find_files({
          cwd = require("lazy.core.config").options.root,
        })
      end,
      desc = "Find Plugin File",
    },
  },
}
