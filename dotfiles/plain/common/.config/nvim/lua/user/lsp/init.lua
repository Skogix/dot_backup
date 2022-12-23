local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "skogix.lsp.mason"
require("skogix.lsp.handlers").setup()
require "skogix.lsp.null-ls"
