---@meta
error("Cannot require a meta file")



---{sort_by} [nvim_tree.config.help.sort_by]()
---
---Sort help entries alphabetically by:
---- `"key"`: map lhs
---- `"desc"`: description
---@alias nvim_tree.config.help.sort_by "key"|"desc"
---
---{border} of the help window is passed to [nvim_open_win()].
---
---@class nvim_tree.config.help
---
---(default: `"key"`)
---@field sort_by? nvim_tree.config.help.sort_by
---
---(default: `"single"`)
---@field border? string|(string|[string,string])[]
