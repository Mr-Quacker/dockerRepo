mkdir src
cd src
git clone https://github.com/mr-quacker/xmRepo.git
cd xmRepo
mv * ..
cd ..
rm -rf xmRepo
mv Docker* ..
mv docker* ..
cd ..
mkdir mysql
mkdir nginx
touch nginx/default.conf
docker-compose up -d --build