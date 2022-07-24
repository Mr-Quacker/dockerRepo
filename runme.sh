git clone https://github.com/mr-quacker/dockerRepo.git
cd dockerRepo
mkdir src
cd src
mv env .env
git clone https://github.com/mr-quacker/xmRepo.git
cd xmRepo
mv * ..
cd ..
rm -rf xmRepo
cd ..
docker-compose up -d --build
