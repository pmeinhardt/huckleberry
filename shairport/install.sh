# install shairport from source

if test $(which shairport); then exit 0; fi

cd ~/.local/src

if [ ! -d shairport ]
then
  git clone https://github.com/abrasive/shairport.git
fi

cd shairport

./configure && make && PREFIX=~/.local make install
