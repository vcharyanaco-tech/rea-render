# REA MCP on Render

REA (Reverse Engineer Anything) MCP server, Render par hosted, with keep-alive ping.

## Deploy on Render

1. Render -> New -> Web Service -> connect this repo
2. Runtime: Docker
3. Instance type: Starter (free tier sleeps)
4. Deploy

## Perplexity me connect karo

1. Settings -> Connectors -> Add custom connector
2. MCP server URL: `https://<your-service>.onrender.com/mcp`
3. Save

## Keep-alive

`.github/workflows/keep-alive.yml` har 5 min me Render URL ko ping karta hai.

Repo Settings -> Secrets and variables -> Actions -> New secret:
- Name: `RENDER_URL`
- Value: `https://<your-service>.onrender.com/mcp`
