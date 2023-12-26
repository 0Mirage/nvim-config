local status_ok, smoothcursor = pcall(require, "smoothcursor")
if not status_ok then
	return
end

smoothcursor.setup {
	type = "default",
	autostart = true,
	cursor = "",
	texthl = "Title",
	speed = 25,
	intervals = 35,
	priority = 10,
}
