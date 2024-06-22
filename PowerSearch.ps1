# Ask the user for the path to the executable
$path = Read-Host -Prompt 'Enter the path to the program you want to run'

# Check if the file exists
if (Test-Path $path) {
    # Try to run the program as an administrator and catch any errors
    try {
        Start-Process -FilePath $path -Verb RunAs
        Write-Host "The program '$path' was run successfully."
    } catch {
        Write-Host "An error occurred while trying to run the program: $_"
    }
} else {
    Write-Host "The file '$path' does not exist."
}
