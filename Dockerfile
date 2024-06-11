# Node 20 버전을 기반으로 파일을 빌드할 이미지 (alpine은 경량화 버전)
# NOTE: Express 서버를 위한 도커 이미지 빌드 파일을 만들었지만, 개발 단계에서 hot reload가 안되기에 Express 서버는 로컬에서 직접 띄워도 괜찮을 듯.
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
