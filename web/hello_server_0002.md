# hello_server_0002

Sets up a web router with a GET handler using std/web/router. Shows the handler closure syntax for HTTP routes.

## Code

```skink
module hello_server_0002

import "std/web/router"
import "std/web/types"

// setup_routes creates a router with a hello route and returns the route path.
pub fn setup_routes() -> string {
    r := router.NewRouter()
    r.Get("/cherry", fn(req: types.Request, w: *types.ResponseWriter) {
        w.Write("Hello from Skink!")
    })
    return "/cherry"
}

fn main() -> int {
    route := setup_routes()
    print("Configured route: {route}")
    // Server setup (not started in this sample):
    // s := server.NewServer(8079, &r)
    // s.ListenAndServe()
    return 0
}

```
