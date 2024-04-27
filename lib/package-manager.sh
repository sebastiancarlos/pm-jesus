# return the name of the current package manager, if any
function get_package_manager () {
  if command -v apt-get &> /dev/null; then
    echo "apt"
  elif command -v yum &> /dev/null; then
    echo "yum"
  elif command -v dnf &> /dev/null; then
    echo "dnf"
  elif command -v zypper &> /dev/null; then
    echo "zypper"
  elif command -v pacman &> /dev/null; then
    echo "pacman"
  elif command -v emerge &> /dev/null; then
    echo "emerge"
  elif command -v apk &> /dev/null; then
    echo "apk"
  elif command -v pkg &> /dev/null; then
    echo "pkg"
  elif command -v brew &> /dev/null; then
    echo "brew"
  else
    echo "unknown"
  fi
}
package_manager=$(get_package_manager)
