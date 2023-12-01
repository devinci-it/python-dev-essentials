# PowerShell script for creating Python virtual environment

# Welcome message
Write-Host "Welcome to the Python Virtual Environment Creator!"

# Prompt user for the virtual environment name (default is "env")
$venv_name = Read-Host "Enter the name for your virtual environment (default is 'env')"
if (-not $venv_name) { $venv_name = 'env' }

# Create the virtual environment with a loading indicator
Write-Host -NoNewline "Creating virtual environment '$venv_name'... "
python -m venv "$venv_name" | Out-Null

# Display a loading indicator while waiting for the process to complete
while ($null -ne (Get-Process -Id $PID -ErrorAction SilentlyContinue)) {
    Write-Host -NoNewline "="
    Start-Sleep -Milliseconds 200
}

# Move to a new line after the loading indicator
Write-Host

# Activate the virtual environment
. "$venv_name\Scripts\Activate"

# Display activation message
Write-Host "Virtual environment '$venv_name' is activated."
Write-Host "You can deactivate it by running 'deactivate'."
Write-Host "Install Python packages within this environment using 'pip install package_name'."
Write-Host "To exit the virtual environment and return to the global Python environment, run 'deactivate'."

# Provide additional instructions and information
Write-Host @"
---------------------------------------
Additional Instructions:
- To activate the virtual environment later, use:
  .\Scripts\Activate

- To deactivate the virtual environment, simply run:
  deactivate

- To install Python packages within the virtual environment, use:
  pip install package_name

- Remember, the virtual environment provides an isolated environment for your Python projects,
  allowing you to manage dependencies separately.

Enjoy coding in your virtual environment!
---------------------------------------
"@

