git add .
git commit -m "deploy"
git push

git subtree split --prefix docs\.vuepress\dist -b gh-pages 
rem create a local gh-pages branch containing the splitted output folder
git push -f origin gh-pages:gh-pages 
rem force the push of the gh-pages branch to the remote gh-pages branch at origin
git branch -D gh-pages 
