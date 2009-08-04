PACKAGE=rabbitmq-jsonrpc-http-channel
DEPS=rabbitmq-server rabbitmq-http-server erlang-rfc4627 rabbitmq-jsonrpc-channel
TEST_APPS=rfc4627_jsonrpc mochiweb rabbitmq_http_server rabbit_jsonrpc_channel rabbit_jsonrpc_http_channel
START_RABBIT_IN_TESTS=true

include ../include.mk
