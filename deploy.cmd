git checkout master
npm run build
git add .
git commit -m "deploy"
git push

xcopy /S /Y docs\.vuepress\dist D:\temp\site
rem git pull

echo gh-pages
git checkout gh-pages
git pull
xcopy /S /Y D:\temp\site D:\ale\codigo\Proyecto_SI 
git add .
git commit -m "deploy"
git push
