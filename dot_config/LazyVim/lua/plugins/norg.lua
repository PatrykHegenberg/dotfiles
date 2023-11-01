return {
  "nvim-neorg/neorg",
  lazy = false,
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.looking-glass"] = {},
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/dev/notes",
            },
          },
          default_workspace = "notes",
        },
        ["core.export"] = { config = { extensions = "all" } },
        ["core.presenter"] = {
          config = {
            zen_mode = "zen-mode",
          },
        },
      },
    })
  end,
}
