-- codecompanion
require("codecompanion").setup({
    interactions = {
        chat = {
            adapter = {
                name = "opencode",
                model = "openai/gpt-5.5",
            },
        },
        inline = {
            adapter = {
                name = "deepseek",
                model = "deepseek-v4-pro",
            },
        },
        cmd = {
            adapter = {
                name = "deepseek",
                model = "deepseek-v4-flash",
            },
        },
        cli = {
            agent = "codex",
            agents = {
                claude_code = {
                    cmd = "claude",
                    args = {},
                    description = "Claude Code CLI",
                    provider = "terminal",
                },
                open_code = {
                    cmd = "opencode",
                    args = {},
                    description = "Open Code CLI",
                    provider = "terminal",
                },
                codex = {
                    cmd = "codex",
                    args = {},
                    description = "OpenAI Codex CLI",
                    provider = "terminal",
                },
            },
        },
    },
})

vim.keymap.set({ "n", "v" }, "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<LocalLeader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])
