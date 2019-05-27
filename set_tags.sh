# Tag last commit as 'latest'.

if [ "$TRAVIS_BRANCH" = "master" -a "$TRAVIS_PULL_REQUEST" = "false" ]; then
  git config --global user.email "n.khan@boutiqaat.com"
  git config --global user.name "nomankhan18"

    # Add tag and push to master.
      git tag -a v${TRAVIS_BUILD_NUMBER} -m "Travis build $TRAVIS_BUILD_NUMBER pushed a tag."
      git push origin --tags
      git fetch origin

      echo -e "Done magic with tags.\n"
fi
