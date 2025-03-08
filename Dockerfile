FROM node:20-bookworm-slim
LABEL authors="josh.smith"

ENV NODE_ENV=development
ENV NODE_OPTIONS="--no-node-snapshot"

# ARG GITHUB_USER_NAME

RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt-get update && \
    apt-get install -y --no-install-recommends python3 g++ build-essential git && \
    rm -rf /var/lib/apt/lists/*


RUN printf '%s\n' app | npx @backstage/create-app@latest

WORKDIR /app

RUN yarn --cwd packages/backend add @backstage/plugin-auth-backend-module-github-provider
COPY overrides/app-config.local.yaml app-config.local.yaml
COPY overrides/examples/org.yaml examples/org.yaml
# RUN echo $GITHUB_USER_NAME
# RUN sed -i "s/<GITHUB_USER_NAME>/$GITHUB_USER_NAME/g" "/app/examples/org.yaml"
COPY overrides/examples/ examples/
COPY overrides/packages/backend/src/index.ts packages/backend/src/index.ts
COPY overrides/packages/app/src/App.tsx packages/app/src/App.tsx

EXPOSE 3000 7007

# CMD ["node", "packages/backend", "--config", "app-config.yaml", "--config", "app-config.production.yaml"]
CMD ["yarn", "dev"]


