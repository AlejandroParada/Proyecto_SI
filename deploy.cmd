rem npm run build
git add .
git commit -m "deploy"
git push

xcopy /S /Y /-Y docs\.vuepress\dist D:\temp\site
rem git pull
git checkout gh-pages
git pull
xcopy /S /Y /-Y D:\temp\site D:\ale\codigo\Proyecto_SI 
git add .
git commit -m "deploy"
git push