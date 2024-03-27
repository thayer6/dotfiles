#!/bin/bash

# Run Packer install/update in headless mode
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# Keep the container running
exec "$@"

