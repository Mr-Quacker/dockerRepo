git clone https://github.com/mr-quacker/dockerRepo.git
cd dockerRepo
mkdir src
cd src
git clone https://github.com/mr-quacker/xmRepo.git
cd xmRepo
mv * ..
cd ..
mv env .env
rm -rf xmRepo
cd ..
docker-compose up -d --build
