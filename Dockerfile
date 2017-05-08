FROM kong
RUN yum -y install -y git
RUN luarocks install kong-plugin-cookies-to-headers
ENv KONG_CUSTOM_PLUGINS cookies-to-headers
