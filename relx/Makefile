.PHONY: rebar3 relx release clean

release: compile
	@./relx

compile: rebar3 relx
	@./rebar3 compile

relx:
	@ls relx || ./get_relx.sh

rebar3:
	@ls rebar3 || wget https://s3.amazonaws.com/rebar3/rebar3 && chmod +x rebar3
