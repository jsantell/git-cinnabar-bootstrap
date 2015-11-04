# git-cinnabar-bootstrap

Automated portions of the [git-cinnabar workflow](http://glandium.org/blog/?page_id=3438).

Mostly notes for myself.

After installing [git-cinnabar](https://github.com/glandium/git-cinnabar), and ensuring it's in your path (need it to run this script due to needing [git-remote-hg](https://github.com/glandium/git-cinnabar/blob/master/git-remote-hg.py)), run this script, which is pretty much all the config in the [workflow](http://glandium.org/blog/?page_id=3438) above.

If you're using a git clone of [gecko-dev](https://github.com/mozilla/gecko-dev) and want to push to mercurial, read [this](http://glandium.org/blog/?p=3543) and this script probably won't help you.

## Bootstrapping

```
$ git init gecko
$ cd gecko
$ ../git-cinnarbar-bootstrap/bootstrap.sh
```

## Setting up branches

`$ git checkout -b fx-team fx-team/branches/default/tip`

Sets up a branch `fx-team` tracking the tip of `https://hg.mozilla.org/integration/fx-team`
