return {
    'nvim-pack/nvim-spectre',
    config = function()
      require('spectre').setup({
     
        highlight = {
          ui = "String",  
          search = "DiffChange", 
          replace = "DiffDelete", 
        },
        mapping = {
          ['toggle_line'] = {
            map = "d",
            cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
            desc = "toggle current item (nhấn phím 'd')"
          },
          ['enter_file'] = {
            map = "<cr>",
            cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
            desc = "goto current file (nhấn phím Enter)"
          },
          ['send_to_qf'] = {
            map = "Q",
            cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
            desc = "send all item to quickfix (nhấn phím 'Q')"
          },
          ['replace_cmd'] = {
            map = "c",
            cmd = "<cmd>lua require('spectre.actions').replace_cmd()<CR>",
            desc = "input replace vim command (nhấn phím 'c')"
          },
          ['show_option_menu'] = {
            map = "o",
            cmd = "<cmd>lua require('spectre').show_options()<CR>",
            desc = "show option (nhấn phím 'o')"
          },
          ['run_replace'] = {
            map = "R",
            cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
            desc = "replace all (nhấn phím 'R')"
          },
          ['change_view_mode'] = {
            map = "m",
            cmd = "<cmd>lua require('spectre').change_view()<CR>",
            desc = "change result view mode (nhấn phím 'm')"
          },
          ['toggle_ignore_case'] = {
            map = "I",
            cmd = "<cmd>lua require('spectre').change_options('ignore-case')<CR>",
            desc = "toggle ignore case (nhấn phím 'I')"
          },
          ['toggle_ignore_hidden'] = {
            map = "H",
            cmd = "<cmd>lua require('spectre').change_options('hidden')<CR>",
            desc = "toggle search hidden (nhấn phím 'H')"
          },
        },
        find_engine = {
          ['rg'] = {
            cmd = "rg",
            args = {
              '--color=never',
              '--no-heading',
              '--with-filename',
              '--line-number',
              '--column',
            },
            options = {
              ['ignore-case'] = {
                value = "--ignore-case",
                icon = "[I]",
                desc = "ignore case"
              },
              ['hidden'] = {
                value = "--hidden",
                desc = "hidden file",
                icon = "[H]"
              },
            }
          },
        },
        replace_engine = {
          ['sed'] = {
            cmd = "sed",
            args = nil,
            options = {
              ['ignore-case'] = {
                value = "--ignore-case",
                icon = "[I]",
                desc = "ignore case"
              },
            }
          },
        },
        default = {
          find = {
            cmd = "rg",
            options = { "ignore-case" }
          },
          replace = {
            cmd = "sed"
          },
        },
        replace_vim_cmd = "cdo",
        is_open_target_win = true,
        is_insert_mode = false,
      })
    end
  }