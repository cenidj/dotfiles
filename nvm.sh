# Change to make to this file to detect .node-version files and install node version through nvm

# Look for this function and add the lines with plus sign 
nvm_find_nvmrc() {
  local dir
  dir="$(nvm_find_up '.nvmrc')"
  if [ -e "${dir}/.nvmrc" ]; then
     nvm_echo "${dir}/.nvmrc"
+   else 
+   dir="$(nvm_find_up '.node-version')"
+   if [ -e "${dir}/.node-version" ]; then
+     nvm_echo "${dir}/.node-version"
+   fi
  fi
}

# Change the message for both nvm_error to add .node-version word (Are in different lines)
- nvm_err "No .nvmrc file found"
+ nvm_err "No .nvmrc or .node-version file found"
- nvm_err "Warning: empty .nvmrc file found at \"${NVMRC_PATH}\""
+ nvm_err "Warning: empty .nvmrc or .node-version file found at \"${NVMRC_PATH}\""
