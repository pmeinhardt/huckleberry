RBENVDIR=~/.rbenv
PLUGDIR=$RBENVDIR/plugins

if [ ! -d $RBENVDIR ]
then
  git clone https://github.com/rbenv/rbenv.git $RBENVDIR
  mkdir -p $PLUGDIR
fi

if [ ! -d $PLUGDIR/ruby-build ]
then
  git clone https://github.com/rbenv/ruby-build.git $PLUGDIR/ruby-build
fi

if [ ! -d $PLUGDIR/rbenv-update ]
then
  git clone https://github.com/rkh/rbenv-update.git $PLUGDIR/rbenv-update
fi
