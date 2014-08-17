#!/usr/bin/python2
from subprocess import call
from subprocess import check_call
import subprocess
# old_file = "/home/jw/.packages.old"

# ----------------- functions -------------------
def package_is_installed(package):
  try:
    check_call(["pacman", "-Q", package])
    print "Package added to list, but is already installed."
  except subprocess.CalledProcessError as e:
    return False

  return True

def packer():
  for package in to_remove:
    if package_is_installed(package):
      call(["pacman", "-Rns", "--noconfirm", package])

  for package in new:
    if not package_is_installed(package):
      call(["packer", "-S", "--noconfirm", package])

def update_package_file():
  with open(old_file, "w") as f:
    f.write("\n".join(packages))

# -----------------------------------------------


# ----------- read old --------------
# with open(old_file, "r") as f:
#   packages_old = set(f.read().splitlines())
  
# ----------- read new --------------
with open("/home/jw/.packages.md", "r") as f:
  packages = set([line for line in f.read().splitlines() 
                  if not (len(line) == 0 or line.startswith("#")
                    or line.startswith(">"))])
  print packages


to_remove = packages_old - packages
new = packages - packages_old

update_package_file()
packer()
