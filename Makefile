publish:
		curl -fsSL https://deno.land/x/install/install.sh | sh
		export DENO_INSTALL="/opt/buildhome/.local"
    export PATH="$DENO_INSTALL/bin:$PATH"
		deno --allow-net --allow-read index.ts