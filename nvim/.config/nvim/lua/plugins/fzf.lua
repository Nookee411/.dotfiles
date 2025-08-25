return {
  "ibhagwan/fzf-lua",
  opts = {
    files = {
      actions = {
        ["ctrl-h"] = { require("fzf-lua").actions.toggle_hidden }, -- Your custom key
        ["ctrl-i"] = { require("fzf-lua").actions.toggle_ignore }, -- Keep ignore toggle
      },
    },
    grep = {
      glob_flag = "--iglob", -- case insensitive globs
      actions = {
        ["ctrl-h"] = { require("fzf-lua").actions.toggle_hidden }, -- Your custom key
        ["ctrl-i"] = { require("fzf-lua").actions.toggle_ignore }, -- Keep ignore toggle
      },
    },
  },
}
