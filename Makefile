publish:
		curl -fsSL https://deno.land/x/install/install.sh | sh
		/opt/buildhome/.local/bin/deno --allow-net --allow-read index.ts