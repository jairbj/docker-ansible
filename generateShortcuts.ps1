$executables = @(
  "ansible",
  "ansible-connection",
  "ansible-doc",
  "ansible-inventory",
  "ansible-pull",
  "ansible-config",
  "ansible-console",
  "ansible-galaxy",
  "ansible-playbook",
  "ansible-vault"
)

$parameters = '"%%EXECUTABLE%% $($args -join '' '')"'

$directory = ".\ps1Shortcuts"

# Load template
$template = Get-Content ".\ps1shortcut.template"

# Remove old shortcuts
Remove-Item -Force -Recurse $directory

# Create output directory
mkdir $directory

# Generate shortcuts
foreach ($executable in $executables) {
  Write-Output "Generating shortcut for executable $executable"

  $template | ForEach-Object {
    $_ -replace '%%PARAMETERS%%', $parameters `
       -replace '%%EXECUTABLE%%', $executable
  } | Set-Content "$directory\$executable.ps1"
}

# Generate the ansible-container generic shortcut
Write-Output "Generating shortcut for ansible-container"
$template | ForEach-Object {
  $_ -replace '%%PARAMETERS%%', ''
} | Set-Content "$directory\ansible-container.ps1"