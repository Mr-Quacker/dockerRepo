git clone https://github.com/mr-quacker/dockerRepo.git
cd dockerRepo
mkdir src
cd src
git clone https://github.com/mr-quacker/xmRepo.git
mv env .env
cd xmRepo
mv * ..
cd ..
rm -rf xmRepo
cd ..
docker-compose up -d --build
