# SwizzleIMD

Add swizzling to `SIMD2`, `SIMD3` and `SIMD4` for both *XYZW* and *RGBA* spaces.

Dont write `let rrr = SIMD3(someSIMD3value.x, someSIMD3value.x, someSIMD3value.x)` anymore ! Write `let rrr = someSIMD3value.rrr` today with **SwizzleIMD** !  

## Installation

Add `.package(url: "https://github.com/Pyroh/SwizzleIMD", .upToNextMajor(from: "1.0.0")),` to your *package.swift* file's dependencies.

## License

See LICENSE.
