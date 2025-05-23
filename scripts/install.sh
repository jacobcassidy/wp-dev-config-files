#!/bin/bash

# Constants
ROOT_DIR='wp-dev-config-files'
SCRIPTS_DIR="${ROOT_DIR}/scripts"
EXTRAS_DIR="${ROOT_DIR}/extras"

# Terminal Base Colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# Terminal Bright Colors
BRIGHT_BLACK='\033[1;30m'
BRIGHT_RED='\033[1;31m'
BRIGHT_GREEN='\033[1;32m'
BRIGHT_YELLOW='\033[1;33m'
BRIGHT_BLUE='\033[1;34m'
BRIGHT_MAGENTA='\033[1;35m'
BRIGHT_CYAN='\033[1;36m'
BRIGHT_WHITE='\033[1;37m'

# Terminal Format
ITALIC='\033[3m'
BOLD='\033[1m'
RESET='\033[0m'

# Messages
FILE_ADDED_MSG="${GREEN}File added!${RESET}\n\n"
FILE_EXISTS_MSG="${BLACK}The file already exists. Skipping creation.${RESET}\n\n"

# Get the script settings
source ${SCRIPTS_DIR}/settings.sh

echo '' # new line

if $ADD_PATCH_FILES; then
  # Add /patches/ files to project
  printf "${BLUE}Adding patch files...${RESET}\n"
  # Download files from GitHub
  printf "${WHITE}Downloading patch files from https://github.com/jacobcassidy/wp-scripts-patches...${RESET}\n"
  git clone git@github.com:jacobcassidy/wp-scripts-patches.git
  # Ensure the .vscode directory exists
  printf "${WHITE}Creating 'patches' directory...${RESET}\n"
  mkdir -p patches
  # Copy/Paste file
  printf "${WHITE}Copying cloned patches into 'patches' directory...${RESET}\n"
  cp wp-scripts-patches/patches/*.patch ./patches/
  if $REMOVE_CLONED_WP_SCRIPTS_PATCHES; then
    # Remove the downloaded repository
    printf "${WHITE}Removing cloned wp-scripts-patches repo...${RESET}\n"
    rm -rf wp-scripts-patches
  fi
  # Print success message
  printf "${GREEN}Success!${RESET}\n\n"
fi

if $ADD_CONFIG_COMPOSER; then
  # Add composer.json file to project
  printf "${BLUE}Adding composer.json file...${RESET}\n"
  if [ -f "composer.json" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/composer.json ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi


if $ADD_CONFIG_EDITORCONFIG; then
  # Add .editorconfig file to project
  printf "${BLUE}Adding .editorconfig file...${RESET}\n"
  if [ -f ".editorconfig" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.editorconfig ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_ESLINT; then
  # Add eslint.config.mjs file to project
  printf "${BLUE}Adding eslint.config.mjs file...${RESET}\n"
  if [ -f "eslint.config.mjs" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/eslint.config.mjs ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_GITIGNORE; then
  # Add .gitignore file to project
  printf "${BLUE}Adding .gitignore file...${RESET}\n"
  if [ -f ".gitignore" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.gitignore ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_MARKDOWN_LINT_CLI2; then
  # Add .markdownlint-cli2.jsonc file to project
  printf "${BLUE}Adding .markdownlint-cli2.jsonc file...${RESET}\n"
  if [ -f ".markdownlint-cli2.jsonc" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.markdownlint-cli2.jsonc ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_MARKDOWN_LINT; then
  # Add .markdownlint.jsonc file to project
  printf "${BLUE}Adding .markdownlint.jsonc file...${RESET}\n"
  if [ -f ".markdownlint.jsonc" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.markdownlint.jsonc ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_PACKAGE; then
  # Add package.json file to project
  printf "${BLUE}Adding package.json file...${RESET}\n"
  if [ -f "package.json" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/package.json ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_PHPCS; then
  # Add phpcs.xml file to project
  printf "${BLUE}Adding phpcs.xml file...${RESET}\n"
  if [ -f "phpcs.xml" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/phpcs.xml ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_PHPSTAN; then
  # Add phpstan.neon file to project
  printf "${BLUE}Adding phpstan.neon file...${RESET}\n"
  if [ -f "phpstan.neon" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/phpstan.neon ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_PRETTIER; then
  # Add prettier.config.mjs file to project
  printf "${BLUE}Adding prettier.config.mjs file...${RESET}\n"
  if [ -f "prettier.config.mjs" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/prettier.config.mjs ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_PRETTIER_IGNORE; then
  # Add .prettierignore file to project
  printf "${BLUE}Adding .prettierignore file...${RESET}\n"
  if [ -f ".prettierignore" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.prettierignore ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_STYLELINT; then
  # Add stylelint.config.mjs file to project
  printf "${BLUE}Adding stylelint.config.mjs file...${RESET}\n"
  if [ -f "stylelint.config.mjs" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/stylelint.config.mjs ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_VSCODE_RECOMMENDATIONS; then
  # Add .vscode/extensions.json file to project
  printf "${BLUE}Adding .vscode/extensions.json file...${RESET}\n"

  # Ensure the .vscode directory exists
  mkdir -p .vscode

  if [ -f ".vscode/extensions.json" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.vscode/extensions.json ./.vscode/
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_VSCODE_SETTINGS; then
  # Add .vscode/settings.json file to project
  printf "${BLUE}Adding .vscode/settings.json file...${RESET}\n"

  # Ensure the .vscode directory exists
  mkdir -p .vscode

  if [ -f ".vscode/settings.json" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/.vscode/settings.json ./.vscode/
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_CONFIG_WEBPACK; then
  # Add webpack.config.mjs file to project
  printf "${BLUE}Adding webpack.config.mjs file...${RESET}\n"
  if [ -f "webpack.config.mjs" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${ROOT_DIR}/webpack.config.mjs ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_DOC_CHANGELOG; then
  # Add CHANGELOG.md file to project
  printf "${BLUE}Adding CHANGELOG.md file...${RESET}\n"
  if [ -f "CHANGELOG.md" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${EXTRAS_DIR}/CHANGELOG.md ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $ADD_DOC_README; then
  # Add README.md file to project
  printf "${BLUE}Adding README.md file...${RESET}\n"
  if [ -f "README.md" ]; then
    printf "${FILE_EXISTS_MSG}"
  else
    # Copy/Paste file
    cp ${EXTRAS_DIR}/README.md ./
    # Print success message
    printf "${FILE_ADDED_MSG}"
  fi
fi

if $RUN_COMPOSER_INSTALL; then
  # Install composer dependencies
  printf "${BLUE}Running 'composer install'...${RESET}\n"
  composer install
  # Print success message
  printf "${GREEN}${BOLD}Composer installation finished${RESET}\n\n"
fi

if $RUN_NPM_INSTALL; then
  # Install npm dependencies
  printf "${BLUE}Running 'npm install'...${RESET}\n"
  npm install
  # Print success message
  printf "${GREEN}${BOLD}NPM installation finished${RESET}\n\n"
fi

if $INSTALL_GIT_LOCAL_REPO; then
  # Initialize Git
  printf "${BLUE}Initialization Git...${RESET}\n"
  if [ -d .git ]; then
    printf "${BLACK}Git is already initialized for this project. Skipping initialization.${RESET}\n\n"
  else
    git init
    # Print success message
    printf "${GREEN}Local Git repository created at: ${BOLD}.git${RESET}\n\n"
  fi
fi

printf "${MAGENTA}${BOLD}The wp-dev-config-files installation process is all finished! You may delete the /wp-dev-config-files directory if no errors were present.${RESET}\n\n"
