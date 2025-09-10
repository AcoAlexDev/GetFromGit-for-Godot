extends Resource
class_name GetFromGitData
## AUTHOR: Github @AcoAlexDev

## Resource class for the GetFromGit Plugin.
## For each request, one data is created and added to the queue

@export var operation:GetFromGit.OPERATIONS = GetFromGit.OPERATIONS.DOWNLOAD
@export var git_url:String = ""
@export var os_path:String = ""
