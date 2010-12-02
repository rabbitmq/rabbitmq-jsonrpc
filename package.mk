DEPS:=rabbitmq-server rabbitmq-mochiweb mochiweb-wrapper erlang-rfc4627-wrapper
RUNTIME_DEPS:=rabbitmq-mochiweb rfc4627_jsonrpc
TEST_APPS:=rfc4627_jsonrpc crypto inets mochiweb rabbit_mochiweb rabbit_jsonrpc
START_RABBIT_IN_TESTS:=true
