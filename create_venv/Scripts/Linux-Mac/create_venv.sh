#!/bin/zsh

echo "Welcome to the Python Virtual Environment Creator!"

# Prompt user for the virtual environment name (default is "env")
echo -n "Enter the name for your virtual environment (default is 'env'): "
read venv_name
venv_name=${venv_name:-env}

# Create the virtual environment with a loading indicator
echo -n "Creating virtual environment '$venv_name'... "
python3 -m venv "$venv_name" &

# Display a loading indicator while waiting for the process to complete
while kill -0 $! 2>/dev/null; do
    echo -n "="
    sleep 0.2
done
wait $!

# Move to a new line after the loading indicator
echo

# Activate the virtual environment
source "$venv_name/bin/activate"

# Display activation message
echo "Virtual environment '$venv_name' is activated."
echo "You can deactivate it by running 'deactivate'."
echo "Install Python packages within this environment using 'pip install package_name'."
echo "To exit the virtual environment and return to the global Python environment, run 'deactivate'."

# Provide additional instructions and information
cat <<EOF

---------------------------------------
Additional Instructions:
- To activate the virtual environment later, use:
  source $venv_name/bin/activate

- To deactivate the virtual environment, simply run:
  deactivate

- To install Python packages within the virtual environment, use:
  pip install package_name

- Remember, the virtual environment provides an isolated environment for your Python projects,
  allowing you to manage dependencies separately.

Enjoy coding in your virtual environment!
---------------------------------------
EOF

