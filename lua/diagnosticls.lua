-- diagnosticls.lua
return {
  filetypes = {
    "sh",
  },
  init_options = {
    linters = {
      shellcheck = {
        command = "shellcheck", -- brew install shellcheck
        debounce = 100,
        args = { "--format=gcc", "-" },
        offsetLine = 0,
        offsetColumn = 0,
        sourceName = "shellcheck",
        formatLines = 1,
        formatPattern = {
          "^[^:]+:(\\d+):(\\d+):\\s+([^:]+):\\s+(.*)$",
          {
            line = 1,
            column = 2,
            message = 4,
            security = 3
          }
        },
        securities = {
          error = "error",
          warning = "warning",
          note = "info"
        }
      },
    },
    formatters = {},
    filetypes = {
      sh = "shellcheck",
    },
    formatFiletypes = {}
  }
}
