# GetFromGit for Godot

GetFromGit is a Godot utility node for downloading and fetching content from public GitHub repositories and websites at runtime.
GitHub URLs are automatically converted to raw form, supports async text retrieval, file downloads, and image loading.

## Usage

1. Download this repo
2. Copy the GetFromGit folder into your godot project
3. Instantiate a GetFromGit node in your scene
4. Call the public methods on your node instance (see examples below).
```GDScript
@onready var GetFromGitNode: GetFromGit = $GetFromGit
```

### Function Examples

- func get_string_content_from_github(git_url:String) -> String:
```GDScript
print(await GetFromGitNode.get_string_content_from_github("https://github.com/AcoAlexDev/GetFromGit-for-Godot/edit/main/README.md"))
```
- func get_string_content_from_website(url:String) -> String:
```GDScript
print(await GetFromGitNode.get_string_content_from_website("https://example.com/data.txt"))
```
- func download_file_from_github(git_url:String, download_path:String = "res://") -> void:
```GDScript
GetFromGitNode.download_file_from_github("https://github.com/AcoAlexDev/GetFromGit-for-Godot/blob/main/GetFromGit/get_from_git_plugin.gd", "res://downloaded_file.gd")
```
- func download_file_from_website(url:String, download_path:String = "res://") -> void:
```GDScript
GetFromGitNode.download_file_from_website("https://example.com/data.txt", "res://downloaded_data.txt")
```
- func load_image_from_github(git_url:String) -> Image:
```GDScript
var image = await GetFromGitNode.load_image_from_github("https://github.com/AcoAlexDev/Aco-JUCE-CMake-Template/blob/main/Assets/bypass_image.png")
var tr = TextureRect.new()
tr.texture = ImageTexture.create_from_image(image)
add_child(tr)
```
- func load_image_from_website(url:String) -> Image:
```GDScript
var image = await GetFromGitNode.load_image_from_website("https://fast-images.static-thomann.de/pics/images/logos/thomann-cyan-black.svg")
var tr = TextureRect.new()
tr.texture = ImageTexture.create_from_image(image)
add_child(tr)
```

Enable or disable debug_printing in the Inspector or with
```GDScript
GetFromGitNode.toggle_debug_printing(false)
```

License
This project is licensed under the MIT License (2025). See the https://choosealicense.com/licenses/mit/ for details.

Contributing
Contributions, issues, and feature requests are welcome. Feel free to open an issue or submit a pull request.
