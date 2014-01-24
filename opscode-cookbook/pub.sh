berks install --path ../opsworks-cookbook
cd ../opsworks-cookbook
git init .
git add *
git commit -a -m 'berk'
git remote add origin git@github.com:iwarshak/opsworks-cookbook.git
git push -f origin
