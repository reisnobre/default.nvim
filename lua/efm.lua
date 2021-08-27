-- efm.lua
local prettier = {
  formatCommand = "prettier",
}

local eslint = {
  lintCommand = 'eslint_d -f unix --stdin',
  lintIgnoreExitCode = true,
  lintStdin = true,
}

local shellcheck = {
  lintCommand = 'shellcheck -f gcc -x',
  lintSource = "shellcheck",
  lintFormats = {
    '%f:%l:%c: %trror: %m',
    '%f:%l:%c: %tarning: %m',
    '%f:%l:%c: %tote: %m'
  },
}
local shfmt = {
  formatCommand = 'shfmt -ci -s -bn',
  formatStdin = true,
}

local luaformat = {
  formatCommand = "lua-format -i",
  formatStdin = true
}

return {
  filetypes = {
    "sh",
    "lua",
    "javascript",
  },
  init_options = {
    documentFormatting = true
  },
  settings = {
    rootMarkers = { ".git/" },
    languages = {
      lua = { luaformat },
      sh = { shellcheck, shfmt },
      javascript = { eslint, prettier },
    },
  }
}
