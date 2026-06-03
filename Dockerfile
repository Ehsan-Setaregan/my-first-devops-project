# V1:
# FROM nginx:alpine
# COPY index.html /usr/share/nginx/html/

# V2:
FROM alpine:3.18 AS builder
RUN echo "<h1>Ehsan DevOps Webpage with Multi-stage Build</h1>" > /index.html

FROM nginx:alpine
COPY --from=builder /index.html /usr/share/nginx/html/
