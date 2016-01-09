git checkout master

git submodule update --init
cd _site/
git checkout gh-pages
cd ../

cabal run build

cd _site/
git status
git add --all
git commit -m "Update (`date '+%F %T %Z'`) [ci skip]"
git push origin gh-pages
cd ../

git status
git add _site/
git commit -m "Update _site (`date '+%F %T %Z'`) [ci skip]"
git push origin master
