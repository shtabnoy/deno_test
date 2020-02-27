import { serve } from 'https://deno.land/std@v0.30.0/http/server.ts'
// import * as path from 'https://deno.land/std@v0.30.0/path/mod.ts'
// import { readFileStrSync } from 'https://deno.land/std/fs/mod.ts'

const startServer = async () => {
  const port = 8000
  const s = serve({ port: 8000 })
  const decoder = new TextDecoder('utf-8')
  let html = await Deno.readFile('./intro.html')
  let tosend = decoder.decode(html)
  console.log('Server started on port ', port)
  for await (const req of s) {
    req.respond({ body: tosend })
  }
}

startServer()
// readFileStrSync('text.txt', { encoding: 'utf8' })
// const decoder = new TextDecoder('utf-8')

// const text = await Deno.readFile('./text.json')
// console.log(text)
