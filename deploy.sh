PROJECT=demo
echo Docker Cleanup
cd /home/ilukinov/pubmed_ariadna
docker-compose -f docker-compose-${PROJECT}.yml down
git fetch origin
git reset --hard origin/master
docker-compose -f docker-compose-${PROJECT}.yml build
docker-compose -f docker-compose-${PROJECT}.yml up -d