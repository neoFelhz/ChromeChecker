mkdir ./_deploy
cd ./_deploy
git init
git config --global push.default matching
git config --global user.email "${GitHubEMail}"
git config --global user.name "${GitHubUser}"
git remote add origin https://${GitHubKEY}@github.com/neko-dev/neohosts.git
git pull origin gh-pages
rm -rf ./*
cp -rf ../_public/* ../_deploy/
git add --all .
git commit -m "Chrome daily"
git push --quiet --force origin HEAD:gh-pages
