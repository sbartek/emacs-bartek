My emacs config
===============

Install cask
http://cask.readthedocs.org/en/latest/guide/installation.html#manual-installation

Clone it into `~` and add run

    cask install

Add to .emacs:

    (load "~/emacs-bartek/emacs-bartek.el")


## Python 

I assume that one uses python's `virtualenv` and has`~\venvs` catalog
with `py3.5` environment. If not, one should edit `python-config.el`
file accordingly.`

Also, after installing everything run in Emacs: `M-x jedi:install-server`

## C/C++ Support

For flymake, you should have installed `cpplint`. One way to get it is to so something like:

```
pip install cpplint
sudo mv ~/.local/lib/python2.7/site-packages/cpplint.py /usr/local/bin/cpplint.py
sudo chmod 755 /usr/local/bin/cpplint.py
```

