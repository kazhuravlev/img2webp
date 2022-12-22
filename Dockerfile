FROM alpine:3.17

ENV SOURCE_DIR=/source
ENV OUPUT_DIR=/output

RUN apk add ffmpeg libwebp libwebp-tools

VOLUME [${SOURCE_DIR}, ${OUPUT_DIR}]


CMD ls ${SOURCE_DIR} | xargs -I % cwebp -mt -q 50 -z 9 ${SOURCE_DIR}/% -o ${OUPUT_DIR}/%
