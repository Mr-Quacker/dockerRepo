#git clone https://github.com/mr-quacker/dockerRepo.git
#cd dockerRepo
git clone https://github.com/mr-quacker/xmRepo.git src
cd src
mv env .env
cd ..
docker-compose up -d --build
docker exec php compose install
docker exec php php artisnan key:generate
