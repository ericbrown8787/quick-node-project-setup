mkdir .vscode

cat ~/eqc/templates/settings-template > .vscode/settings.json
git add .
git commit -m "Create VS Code config file \n\nStandardize local VS Code settings"
git push

cat ~/eqc/templates/gitignore-template > .gitignore
git add .
git commit -m "Create gitignore \n\nVersion control ignores specified files"
git push
npm init --yes
git add .
git commit -m "Create package.json \n\nStore project metadata"
git push
npm install eslint @eslint/create-config --save-dev

cat ~/eqc/templates/nodeconfig-template > .eslintrc.json
npm install eslint-config-airbnb-base@latest --save-dev
npm install eslint@^7.32.0 || ^8.2.0 --save-dev
npm install eslint-plugin-import@^2.25.2 --save-dev
git add .
git commit -m "Configure ESLint\n\nCheck syntax and enforce style conventions"
git push
