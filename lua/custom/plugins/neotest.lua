return {
    'nvim-neotest/neotest',
    dependencies = {
        'nvim-lua/plenare.nvim',
        'antoinemadec/FixCursorHold.nvim'
    },

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
}
