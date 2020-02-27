publish:
		curl -fsSL https://deno.land/x/install/install.sh | sh
		deno --allow-net --allow-read index.ts