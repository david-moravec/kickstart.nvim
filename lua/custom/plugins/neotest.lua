return {
    'nvim-neotest/neotest',
    'nvim-neotest/neotest-python',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'antoinemadec/FixCursorHold.nvim'
    },

    config = function()
        require('neotest').setup({
            adapters = {
                require('neotest-python')({
                    dap = { justMyCode = true },
                    args = {'--log-level', 'DEBUG'},
                    runner = 'pytest',
                    python = '.venv/Scripts/python.exe',
                })
            }
        })
    end,
}
