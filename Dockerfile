FROM python:3.6-alpine as base
FROM base as builder
RUN mkdir /install
WORKDIR /install
COPY requirements.txt /requirements.txt
RUN pip install --install-option="--prefix=/install" -r /requirements.txt
FROM base
COPY --from=builder /install /usr/local
COPY redfish_prompt /app
WORKDIR /app
RUN pip install -e .
CMD ["redfish-prompt", "-w 4", "main:app"]
