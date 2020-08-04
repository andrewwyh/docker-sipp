FROM debian:buster-slim as builder

LABEL maintainer="yehim.wong@gmail.com"

COPY ${PWD}/make.sh /

RUN chmod +x /make.sh && /make.sh

FROM debian:buster-slim as final

WORKDIR /sipp

COPY --from=0 /sipp/sipp .

COPY ${PWD}/install.sh /

RUN chmod +x /install.sh && /install.sh