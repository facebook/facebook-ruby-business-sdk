VERSION_CLASS=lib/facebook_ads/version.rb

VERSION=$(sed -n "s/.* VERSION = '\(.*\)\'/\1/p" $VERSION_CLASS) # 0.4.0.7
GIT_RAW_TAG=$(git describe --abbrev=0 --tags) # v0.4.0.6
VERSION_TAG="v$VERSION"

if [ "$VERSION_TAG" == "$GIT_RAW_TAG" ]; then
  echo 'versions are updated, no need to add new tag.'
else
  echo 'versions are not updated, start to add new tag.'
  git tag $VERSION_TAG -a -m "Version $VERSION_TAG" || die "get error when add new tag"
  echo 'push tag...'
  git push origin $VERSION_TAG

fi
