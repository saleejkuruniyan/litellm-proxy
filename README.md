# LiteLLM Proxy - Koyeb Deployment

This repository contains the configuration to deploy [LiteLLM](https://github.com/BerriAI/litellm) as a proxy server on Koyeb.

## Environment Variables

To run this proxy successfully on Koyeb, set the following environment variables:

| Variable | Description |
| :--- | :--- |
| `LITELLM_MASTER_KEY` | **Required.** Your secret key to access the proxy. |
| `DATABASE_URL` | **Required for persistence.** PostgreSQL URL (e.g., `postgresql://user:pass@host:port/db`). |
| `UI_USERNAME` | Username for the LiteLLM Dashboard. |
| `UI_PASSWORD` | Password for the LiteLLM Dashboard. |
| `OPENAI_API_KEY` | (Optional) Your OpenAI key if using OpenAI models. |

## Deployment Steps

1. **Deploy to Koyeb**: Connect this GitHub repo.
2. **Expose Port**: Set port `4000`.
3. **Health Check**: Use `/health/liveliness`.

## Local Testing

```bash
docker build -t litellm-proxy .
docker run -p 4000:4000 \
  -e LITELLM_MASTER_KEY=sk-1234 \
  -e UI_USERNAME=admin \
  -e UI_PASSWORD=password \
  litellm-proxy
```
