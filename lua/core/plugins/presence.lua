local status_ok, presence = pcall(require, "presence")
if not status_ok then
	return
end

presence.setup {
	auto_update = true,
	neovim_image_text = "i use Neovim btw",
	main_image = "neovim",
	debounce_timeout = 10,
  enable_line_number = false,
  blacklist = {},
  buttons = true,
  file_assets = {},
  show_time = true,
  editing_text= "Editing %s",
  file_explorer_text = "Browsing %s",
  git_commit_text = "Committing changes",
  plugin_manager_text = "Managing plugins",
  reading_text = "Reading %s",
  workspace_text = "Working on %s",
  line_number_text = "Line %s out of %s",
}
