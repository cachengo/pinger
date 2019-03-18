FROM alpine:3.8
RUN apk add --no-cache curl bash
COPY start.sh start.sh
ENTRYPOINT ["./start.sh"]
