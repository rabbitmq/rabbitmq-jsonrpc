PROJECT = rabbitmq_jsonrpc

DEPS = rabbitmq_web_dispatch rfc4627_jsonrpc
dep_rfc4627_jsonrpc = git_rmq erlang-rfc4627 master

DEP_PLUGINS = rabbit_common/mk/rabbitmq-plugin.mk

# FIXME: Use erlang.mk patched for RabbitMQ, while waiting for PRs to be
# reviewed and merged.

ERLANG_MK_REPO = https://github.com/rabbitmq/erlang.mk.git
ERLANG_MK_COMMIT = rabbitmq-tmp

include rabbitmq-components.mk
include erlang.mk
