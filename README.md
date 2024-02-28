# fastapi-example-app

## Сборка

```bash
docker build --tag ngunit:latest .
```

## Запуск

```bash
docker run --name ngunit \
    -p 80:80 \
    -v $(pwd)/unit/:/docker-entrypoint.d/ \
    ngunit:latest
```