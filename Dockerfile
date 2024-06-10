# Node 20 버전을 기반으로 파일을 빌드할 이미지 (alpine은 경량화 버전)
FROM node:20-alpine as base

# 이미지에 파일 복사
COPY package.json pnpm-lock.yaml ./
COPY src ./src
COPY tsconfig.json ./tsconfig.json

# 패키지 설치 및 빌드
RUN corepack enable && \
  pnpm install && \
  pnpm build

CMD ["pnpm", "start"]
