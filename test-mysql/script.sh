docker network create test-mysql-network

#도커 이미지 빌드 및 푸시
docker buildx build --platform=linux/amd64,linux/arm64 -t {TYPE_YOUR_REPOSITORY}/print-arch
docker push {TYPE_YOUR_REPOSITORY}/test-mysql:1.0.0

# 컨테이너 생성
docker run -d --name test-mysql --network test-mysql-network -v datadir:/var/lib/mysql {TYPE_YOUR_REPOSITORY}/test-mysql:1.0.0

# 로그 확인
docker logs -f test-mysql

# 컨테이너 명령어 실행
docker exec -it test-mysql bash -c "mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE}"


# 데이터 조회

