
git add .
git commit -m "deploy"
git push
git checkout master

git push --delete gh-pages
git branch gh-pages

npm run deploy
