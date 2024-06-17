const port = process.env.PORT || "3000";

const server = Bun.serve({
  port: port,
  fetch(req) {
    return new Response("Bun!");
  },
});

console.log(`Listening on http://localhost:${server.port} ...`);
