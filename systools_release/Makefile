.PHONY: compile

compile:
	erlc -I include -o ebin/ src/*.erl
	cp src/product.app.src ebin/product.app # Yeah - i know - this is not how normal people do it... take it with a grain of salt

clean:
	rm ebin/*