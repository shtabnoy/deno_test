publish:
		curl -fsSL https://deno.land/x/install/install.sh | sh
		# export DENO_INSTALL="/opt/buildhome/.local"
    # export PATH="$DENO_INSTALL/bin:$PATH"
		/opt/buildhome/.local/bin/deno --help
		# deno --allow-net --allow-read index.ts