import { test, expect } from "bun:test";

import product from "./product";

test("example", () => {
    const input = `0 1
0 1
0 1
0 1`;
    const expectedOutput = `0 0 0 0
0 0 0 1
0 0 1 0
0 0 1 1
0 1 0 0
0 1 0 1
0 1 1 0
0 1 1 1
1 0 0 0
1 0 0 1
1 0 1 0
1 0 1 1
1 1 0 0
1 1 0 1
1 1 1 0
1 1 1 1`;

    expect(product(input)).toBe(expectedOutput);
});
