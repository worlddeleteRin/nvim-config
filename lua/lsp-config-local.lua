local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local opts = { noremap=true, silent=true }

local on_attach = function(client, bufnr)

  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  -- buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'fi', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>Telescope lsp_references<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setqflist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
-- pyright tailwindcss html eslint tsserver rust_analyzer?

-- python pyright
nvim_lsp["pyright"].setup {
    on_attach = on_attach,
}
nvim_lsp["tsserver"].setup {
    on_attach = on_attach,
    filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescriptreact", "typescript.tsx", "typescript"}
}

-- vue
nvim_lsp["vuels"].setup {
    on_attach = on_attach,
    filetypes = {"vue"}
}

-- eslint
nvim_lsp["eslint"].setup {
    on_attach = on_attach,
}

-- rust (rls)
nvim_lsp["rust_analyzer"].setup{
    on_attach = on_attach,
    --[[
    settings = {
        ["rust-analyzer"] = {
            check = {
                allTargets = false,
                extraArgs = {},
            },
            checkOnSave = true,
            completion = {
                limit = 15
            },
            diagnostics = {
                disabled = {}
            },
            procMacro = {
                enable = false,
                ignored = {},
                attributes = {
                    enable = false
                }
            },
            cargo = {
                buildScripts = {
                    enable = true
                }
            },
            references = {
                excludeImports = false
            }
        }
    }
    --]]
}

-- go (gopls)
nvim_lsp["gopls"].setup{
    on_attach = on_attach,
}

-- go linter
nvim_lsp["golangci_lint_ls"].setup{
    on_attach = on_attach,
}

-- html
nvim_lsp["html"].setup{
    on_attach = on_attach,
}

-- TODO swift / C/C++/ Objective-C
nvim_lsp["sourcekit"].setup{
    on_attach = on_attach,
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    underline = true,
    signs = true,
  }
)



-- dart
--[[
nvim_lsp["dartls"].setup {
    cmd = {
        "dart",
        "language-server",
    },
    on_attach = on_attach,
    filetypes = {"dart"}
}
--]]

-- tailwindcss
--[[
nvim_lsp["tailwindcss"].setup {
    on_attach = on_attach,
}
--]]

-- csharp_ls
nvim_lsp["csharp_ls"].setup {
    on_attach = on_attach,
}

-- lua_ls
nvim_lsp["lua_ls"].setup {
    on_attach = on_attach,
}

-- solidity
nvim_lsp["solidity_ls"].setup {
    on_attach = on_attach,
}

-- lua | sumneko_lua
-- local runtime_path = vim.split(package.path, ';')
-- table.insert(runtime_path, "lua/?.lua")
-- table.insert(runtime_path, "lua/?/init.lua")

--[[
nvim_lsp["sumneko_lua"].setup {
    settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
  on_attach = on_attach
}
--]]

--[[
    cmd = {
        "dart",
        "/Users/noname/export_path/flutter/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot",
        "--lsp"
    },
--]]
    --[[
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
--]]
--
--[[
Installation
npm i -g vscode-langservers-extracted @tailwindcss/language-server typescript typescript-language-server vls
--]]
