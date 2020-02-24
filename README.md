# pyenv-latest: A pyenv plugin to make pyenv friendlier

Currently pyenv installs versions that are distinct to the micro version. This
makes upgrading local Python installations to the latest version needlessly
painful. pyenv-latest adds a new `install-latest` command to pyenv that will
install the latest version of a provided alias. In addition, it will group
site-packages together in a folder per minor version so upgrading your Python
version will not require you reinstall all your packages and virtual
environments.

This plugin only hooks into the existing `pyenv install` command, so you will
see each micro version listed independently when you run `pyenv versions`. It
does not currently uninstall old versions when upgrading.

Currently only standard CPython versions are supported.

## Installation
You must have [pyenv](https://github.com/pyenv/pyenv) installed.

Install as a [pyenv plugin](https://github.com/pyenv/pyenv/wiki/Plugins).
```sh
cd $PYENV_ROOT/plugins
git clone https://github.com/akedrou/pyenv-latest.git
```

## Usage
```sh
pyenv install-latest 3.7
```

## Status
This project is not meant to be a long-term solution. Ideally this feature will
be implemented in the pyenv project and this plugin can peacefully die. That
said, it does address an immediate need (however hackily) and so I'm happy to
accept submissions.
