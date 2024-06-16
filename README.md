### 인프라 실행 방법

프로젝트 폴더의 루트 디렉토리에서 `docker-compose up -d` 를 입력하면, 백그라운드에서 인프라가 실행됨.
현재 `mariadb` 만 적용해 놓은 상태이지만, 추후에 도커 컴포즈 파일을 수정해서 `redis` 를 추가하는 등의 확장이 가능.

### Express 서버 실행 방법

```sh
corepack enable # corepack 활성화
pnpm install # 패키지 설치
pnpm prisma generate # Prisma 클라이언트에 현재 Prisma Schema의 내용을 반영 (schema.prisma 파일 바꿀 때마다 실행해야 함.)
pnpm dev # Hot Reload가 적용된 개발 서버 실행
```
