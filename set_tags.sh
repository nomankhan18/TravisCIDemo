# Tag last commit as 'latest'.

if [ "$TRAVIS_BRANCH" = "master" -a "$TRAVIS_PULL_REQUEST" = "false" ]; then
  git config --global user.email "n.khan@boutiqaat.com"
  git config --global user.name "nomankhan18"

  git remote add release "https://661713c2b553f16e81a31da48b141a6bd9b4ecf7@github.com/nomankhan18/TravisCIDemo.git"

  git push -d release latest
  git tag -d latest
  git tag -a "latest" -m "[Autogenerated] This is the latest version pushed to the master branch."
  git push release --tags
fi
