import os
from os.path import isdir, isfile
import shutil

SYNC_LIST = [
    ".bashrc",
    ".tmux.conf",
    ".fonts/",
    # ".emacs.d/",
    # ".tmux/",
    # ".config/nvim/",
    ".config/yazi/",
    ".config/sway/",
    ".config/swaync/",
    ".config/pip/",
    ".config/neofetch/",
    ".config/fuzzel/",
    ".config/fontconfig/",
    ".config/fish/",
    ".config/flameshot/",
]

for _f in SYNC_LIST:
    f = os.path.expanduser(os.path.join("~", _f))
    here = os.path.dirname(os.path.abspath(__file__))
    dist = os.path.join(here, _f)
    if not os.path.exists(f):
        print(f"'{f}' doesn't exist.")
        continue
    if isfile(f):
        print(f"Copying the file '{f}' to '{dist}'...")
        shutil.copy(f, dist)
    elif isdir(f):
        print(f"Copying the dir '{f}' to '{dist}'...")
        shutil.copytree(f, dist, dirs_exist_ok=True)

