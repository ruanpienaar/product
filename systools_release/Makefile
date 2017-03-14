ifndef RELEASE
export RELEASE = 0.0.1
endif

.PHONY: compile

compile:
	mkdir -p ebin
	erlc -I include -o ebin/ src/*.erl
	cp src/product.app.src ebin/product.app # Yeah - i know - this is not how normal people do it... take it with a grain of salt

clean:
	rm ebin/*

# For running locally	
release:
	escript generate_rel.esh "$(RELEASE)" # Generate release resource file .rel
	escript generate_local_script.esh "$(RELEASE)" # Generate the Boot Scripts

# For running locally
run_release:
	erl -boot rel/$(RELEASE)/product_rel-$(RELEASE) # boot a local release

# For generating a package, for remote installation
package:
	escript generate_rel.esh "$(RELEASE)" # Generate release resource file .rel
	escript generate_tar.esh "$(RELEASE)" # Generate the release in compressed form to ship out
	sed 's/RELEASE_VSN/$(RELEASE)/' start_release.sh.template > rel/start_release.sh
	gunzip rel/$(RELEASE)/product_rel-$(RELEASE).tar.gz
	tar -rvf rel/$(RELEASE)/product_rel-$(RELEASE).tar start_release.sh
	chmod +x start_release.sh
	gzip -f rel/$(RELEASE)/product_rel-$(RELEASE).tar
	
	