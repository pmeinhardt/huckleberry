if test ! $(which pip)
then
  easy_install --user pip
fi

if test $(which pip)
then
  pip install --user -r "$(dirname "$0")/requirements.txt"
fi
