FROM kong:3.0.0-alpine

USER root

ENV KONG_PLUGIN_COOKIES_TO_HEADERS_VERSION=1.1-4

RUN luarocks install kong-plugin-cookies-to-headers ${KONG_PLUGIN_COOKIES_TO_HEADERS_VERSION}
RUN mkdir -p /usr/local/kong \
    && chown -R kong:`id -gn kong` /usr/local/kong
USER kong