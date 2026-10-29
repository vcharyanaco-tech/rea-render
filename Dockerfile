FROM node:22-slim

RUN apt-get update && apt-get install -y \
    chromium procps ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ENV REA_BROWSER_EXECUTABLE=/usr/bin/chromium
ENV PORT=10000

RUN npm install -g rea-agents@5.0.0 supergateway

EXPOSE 10000

CMD ["supergateway", "--stdio", "rea mcp", "--port", "10000", "--outputTransport", "streamableHttp"]
