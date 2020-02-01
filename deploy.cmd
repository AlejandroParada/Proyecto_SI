git branch -D gh-pages

npm run build
git add .
git commit -m "deploy"
git push

git subtree split --prefix docs\.vuepress\dist -b gh-pages 
rem create a local gh-pages branch containing the splitted output folder
git push -f origin gh-pages:gh-pages 
rem force the push of the gh-pages branch to the remote gh-pages branch at origin
git branch -D gh-pages 
rem delete the local gh-pages because you will need it: ref

rem xcopy /S /Y docs\.vuepress\dist D:\temp\site
rem rem git pull
rem git checkout gh-pages
rem pause
rem git pull
rem xcopy /S /Y D:\temp\site D:\ale\codigo\Proyecto_SI 
rem git add .
rem git commit -m "deploy"
rem git push
