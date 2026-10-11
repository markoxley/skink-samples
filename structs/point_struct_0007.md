# point_struct_0007

Defines a Point struct with x, y fields and a value-receiver method distance_to. Shows struct initialization with named fields.

## Code

```skink
module point_struct_0007

struct Point {
    x: float
    y: float

    pub fn distance_to(self: Point, other: Point) -> float {
        dx := self.x - other.x
        dy := self.y - other.y
        return dx*dx + dy*dy
    }
}

// distance returns the squared distance between two points.
pub fn distance(x1: float, y1: float, x2: float, y2: float) -> float {
    p1 := Point{x: x1, y: y1}
    p2 := Point{x: x2, y: y2}
    return p1.distance_to(p2)
}

fn main() -> int {
    d := distance(23.4, 25.1, 26.8, 28.5)
    print("Squared distance: {d}")
    return 0
}

```
