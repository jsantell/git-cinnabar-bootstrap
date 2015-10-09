#!/bin/sh

# From http://glandium.org/blog/?page_id=3438

# Set fetch.prune for git-cinnabar to be happier
git config fetch.prune true

# Set push.default to "upstream", which I think allows a better workflow to use topic branches and push them more easily
git config push.default upstream

# Add remotes for the mercurial repositories you pull from
git remote add central hg::https://hg.mozilla.org/mozilla-central -t branches/default/tip
git remote set-url --push central hg::ssh://hg.mozilla.org/mozilla-central
git remote add inbound hg::https://hg.mozilla.org/integration/mozilla-inbound -t branches/default/tip
git remote set-url --push inbound hg::ssh://hg.mozilla.org/integration/mozilla-inbound
git remote add fx-team hg::https://hg.mozilla.org/integration/fx-team -t branches/default/tip
git remote set-url --push inbound hg::ssh://hg.mozilla.org/integration/fx-team

# Set up remote for try
git remote add try hg::https://hg.mozilla.org/try
git config remote.try.skipDefaultUpdate true
git remote set-url --push try hg::ssh://hg.mozilla.org/try
git config remote.try.push +HEAD:refs/heads/branches/default/tip

# Update all remotes (`git fetch` on all remotes other than try)
git remote update
