#!/bin/bash
cd Projects
echo -n "Project Name: "
read -r pname
npm create vite@latest $pname
cd $pname
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
cd ../..
cp -r src ./Projects/$pname/src
cp -rf tailwind.config.js ./Projects/$pname/tailwind.config.js
cp -rf index.html ./Projects/$pname/index.html
cp vite.config.js ./Projects/$pname/vite.config.js
cd ./Projects/$pname

npm run dev
