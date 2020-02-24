PYENV_LATEST_ROOT=${PYENV_LATEST_ROOT:-"$PYENV_ROOT/plugins/pyenv-latest"}
source "${PYENV_LATEST_ROOT}/etc/pyenv.d/common/symlink-site-packages.bash"

after_install "symlink_site_packages"
