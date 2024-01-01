echo -e "\033[0;32mDeploying updates to Github...\033[0m"

hugo -t digitalgarden

cd public
git add .

msg="rebuilding site `date`"
if [ $# -eq 1 ]
	then msg="$1"
fi
git commit -m "$msg"

git push origin main

cd ..

git add .

msg="rebuilding site `date`"
if [ $# -eq 1 ]
	then msg="$1"
fi
git commit -m "$msg"

git push origin main
