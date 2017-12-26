# These commands are used to update the fork with the latest version
# of the remote repository. 

# Assume that there is already a remote added called 'upstream'.
# Otherwise run the following to add it:
#git remote add upstream https://github.com/barrett777/Heroes.ReplayParser.git

# Fetch all the branches of that remote into remote-tracking branches,
# such as upstream/master:
git fetch upstream

# Make sure that you're on your master branch:
# (Most likely this will return that we're already on the master branch)
git checkout master

# Rewrite your master branch so that any commits of yours that aren't 
# already in upstream/master are replayed on top of that other branch:
git rebase upstream/master

# And finally push our work to GitHub.
# The first time you do this might require the -f flag.
git push origin master