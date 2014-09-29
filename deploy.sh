#!/bin/bash
echo 'Deploying blog...'

BUILD_DIR=/tmp/.andreigherasim.net
rm -rf $BUILD_DIR

grunt release
git clone ssh://5426e81d4382ec9a56000590@blog-agherasim.rhcloud.com/~/git/blog.git/ $BUILD_DIR
mv .dist/release/*.zip $BUILD_DIR/release.zip

cd $BUILD_DIR
git add -A
git commit -m "Deploying release"
git push origin master
