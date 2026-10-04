FROM alpine:latest

# 의존성 패키지 설치
RUN apk add --no-cache nut util-linux

# 작업 디렉토리 및 설정 디렉토리 생성
RUN mkdir -p /etc/nut /var/run/nut

# entrypoint 스크립트 복사 및 권한 부여
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# 실행 파일 설정
ENTRYPOINT ["/entrypoint.sh"]
