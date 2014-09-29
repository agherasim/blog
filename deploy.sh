#!/bin/bash
echo 'Deploying blog...'

grunt release
git clone ssh://5426e81d4382ec9a56000590@blog-agherasim.rhcloud.com/~/git/blog.git/ .blog
mv ./dist/release/*.zip .blog/release.zip
git add -A
git commit -m "Deploying release"
#git push origin master
