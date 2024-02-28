FROM unit:1.32.0-python3.11
WORKDIR /app
RUN curl -sSL https://install.python-poetry.org | python3 -
COPY . ./
RUN export POETRY=${HOME}/.local/bin/poetry && \
    ${POETRY} config virtualenvs.in-project true && \
    ${POETRY} install
RUN chown -R unit:unit /app/fastapi_example_app
