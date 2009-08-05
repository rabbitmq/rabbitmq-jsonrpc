PACKAGE=rabbitmq-jsonrpc
DEPS=rabbitmq-server rabbitmq-mochiweb erlang-rfc4627
TEST_APPS=rfc4627_jsonrpc mochiweb rabbit_mochiweb rabbit_jsonrpc
START_RABBIT_IN_TESTS=true

include ../include.mk
