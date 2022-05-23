//
//  SIMD3Extension.swift
//
//  SwizzleIMD
//
//  MIT License
//
//  Copyright (c) 2022 Pierre Tacchi
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

/* Initializers */
public extension SIMD3 {
    @inlinable init(_ x: Scalar, _ yz: SIMD2<Scalar>) {
        self.init(x, yz[0], yz[1])
    }
}

/* XYZ */
public extension SIMD3 {
    /* TWO COMPONENTS */
    @inlinable var xx: SIMD2<Scalar> {
        get { .init(self[0], self[0]) }
    }
    @inlinable var xy: SIMD2<Scalar> {
        get { .init(self[0], self[1]) }
        set { self[0] = newValue[0]; self[1] = newValue[1] }
    }
    @inlinable var xz: SIMD2<Scalar> {
        get { .init(self[0], self[2]) }
        set { self[0] = newValue[0]; self[2] = newValue[1] }
    }
    @inlinable var yx: SIMD2<Scalar> {
        get { .init(self[1], self[0]) }
        set { self[1] = newValue[0]; self[0] = newValue[1] }
    }
    @inlinable var yy: SIMD2<Scalar> {
        get { .init(self[1], self[1]) }
    }
    @inlinable var yz: SIMD2<Scalar> {
        get { .init(self[1], self[2]) }
        set { self[1] = newValue[0]; self[2] = newValue[1] }
    }
    @inlinable var zx: SIMD2<Scalar> {
        get { .init(self[2], self[0]) }
        set { self[2] = newValue[0]; self[0] = newValue[1] }
    }
    @inlinable var zy: SIMD2<Scalar> {
        get { .init(self[2], self[1]) }
        set { self[2] = newValue[0]; self[1] = newValue[1] }
    }
    @inlinable var zz: SIMD2<Scalar> {
        get { .init(self[2], self[2]) }
    }
    /* THREE COMPONENTS */
    @inlinable var xxx: SIMD3<Scalar> {
        get { .init(self[0], self[0], self[0]) }
    }
    @inlinable var xxy: SIMD3<Scalar> {
        get { .init(self[0], self[0], self[1]) }
    }
    @inlinable var xxz: SIMD3<Scalar> {
        get { .init(self[0], self[0], self[2]) }
    }
    @inlinable var xyx: SIMD3<Scalar> {
        get { .init(self[0], self[1], self[0]) }
    }
    @inlinable var xyy: SIMD3<Scalar> {
        get { .init(self[0], self[1], self[1]) }
    }
    @inlinable var xyz: SIMD3<Scalar> {
        get { .init(self[0], self[1], self[2]) }
        set { self[0] = newValue[0]; self[1] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var xzx: SIMD3<Scalar> {
        get { .init(self[0], self[2], self[0]) }
    }
    @inlinable var xzy: SIMD3<Scalar> {
        get { .init(self[0], self[2], self[1]) }
        set { self[0] = newValue[0]; self[2] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var xzz: SIMD3<Scalar> {
        get { .init(self[0], self[2], self[2]) }
    }
    @inlinable var yxx: SIMD3<Scalar> {
        get { .init(self[1], self[0], self[0]) }
    }
    @inlinable var yxy: SIMD3<Scalar> {
        get { .init(self[1], self[0], self[1]) }
    }
    @inlinable var yxz: SIMD3<Scalar> {
        get { .init(self[1], self[0], self[2]) }
        set { self[1] = newValue[0]; self[0] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var yyx: SIMD3<Scalar> {
        get { .init(self[1], self[1], self[0]) }
    }
    @inlinable var yyy: SIMD3<Scalar> {
        get { .init(self[1], self[1], self[1]) }
    }
    @inlinable var yyz: SIMD3<Scalar> {
        get { .init(self[1], self[1], self[2]) }
    }
    @inlinable var yzx: SIMD3<Scalar> {
        get { .init(self[1], self[2], self[0]) }
        set { self[1] = newValue[0]; self[2] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var yzy: SIMD3<Scalar> {
        get { .init(self[1], self[2], self[1]) }
    }
    @inlinable var yzz: SIMD3<Scalar> {
        get { .init(self[1], self[2], self[2]) }
    }
    @inlinable var zxx: SIMD3<Scalar> {
        get { .init(self[2], self[0], self[0]) }
    }
    @inlinable var zxy: SIMD3<Scalar> {
        get { .init(self[2], self[0], self[1]) }
        set { self[2] = newValue[0]; self[0] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var zxz: SIMD3<Scalar> {
        get { .init(self[2], self[0], self[2]) }
    }
    @inlinable var zyx: SIMD3<Scalar> {
        get { .init(self[2], self[1], self[0]) }
        set { self[2] = newValue[0]; self[1] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var zyy: SIMD3<Scalar> {
        get { .init(self[2], self[1], self[1]) }
    }
    @inlinable var zyz: SIMD3<Scalar> {
        get { .init(self[2], self[1], self[2]) }
    }
    @inlinable var zzx: SIMD3<Scalar> {
        get { .init(self[2], self[2], self[0]) }
    }
    @inlinable var zzy: SIMD3<Scalar> {
        get { .init(self[2], self[2], self[1]) }
    }
    @inlinable var zzz: SIMD3<Scalar> {
        get { .init(self[2], self[2], self[2]) }
    }
}

/* RGB */
public extension SIMD3 {
    /* SOLO COMPONENT */
    @inlinable var r: Scalar {
        get { x }
        set { x = newValue }
    }
    @inlinable var g: Scalar {
        get { y }
        set { y = newValue }
    }
    @inlinable var b: Scalar {
        get { z }
        set { z = newValue }
    }
    
    /* TWO COMPONENTS */
    @inlinable var rr: SIMD2<Scalar> {
        get { .init(self[0], self[0]) }
    }
    @inlinable var rg: SIMD2<Scalar> {
        get { .init(self[0], self[1]) }
        set { self[0] = newValue[0]; self[1] = newValue[1] }
    }
    @inlinable var rb: SIMD2<Scalar> {
        get { .init(self[0], self[2]) }
        set { self[0] = newValue[0]; self[2] = newValue[1] }
    }
    @inlinable var gr: SIMD2<Scalar> {
        get { .init(self[1], self[0]) }
        set { self[1] = newValue[0]; self[0] = newValue[1] }
    }
    @inlinable var gg: SIMD2<Scalar> {
        get { .init(self[1], self[1]) }
    }
    @inlinable var gb: SIMD2<Scalar> {
        get { .init(self[1], self[2]) }
        set { self[1] = newValue[0]; self[2] = newValue[1] }
    }
    @inlinable var br: SIMD2<Scalar> {
        get { .init(self[2], self[0]) }
        set { self[2] = newValue[0]; self[0] = newValue[1] }
    }
    @inlinable var bg: SIMD2<Scalar> {
        get { .init(self[2], self[1]) }
        set { self[2] = newValue[0]; self[1] = newValue[1] }
    }
    @inlinable var bb: SIMD2<Scalar> {
        get { .init(self[2], self[2]) }
    }
    /* THREE COMPONENTS */
    @inlinable var rrr: SIMD3<Scalar> {
        get { .init(self[0], self[0], self[0]) }
    }
    @inlinable var rrg: SIMD3<Scalar> {
        get { .init(self[0], self[0], self[1]) }
    }
    @inlinable var rrb: SIMD3<Scalar> {
        get { .init(self[0], self[0], self[2]) }
    }
    @inlinable var rgr: SIMD3<Scalar> {
        get { .init(self[0], self[1], self[0]) }
    }
    @inlinable var rgg: SIMD3<Scalar> {
        get { .init(self[0], self[1], self[1]) }
    }
    @inlinable var rgb: SIMD3<Scalar> {
        get { .init(self[0], self[1], self[2]) }
        set { self[0] = newValue[0]; self[1] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var rbr: SIMD3<Scalar> {
        get { .init(self[0], self[2], self[0]) }
    }
    @inlinable var rbg: SIMD3<Scalar> {
        get { .init(self[0], self[2], self[1]) }
        set { self[0] = newValue[0]; self[2] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var rbb: SIMD3<Scalar> {
        get { .init(self[0], self[2], self[2]) }
    }
    @inlinable var grr: SIMD3<Scalar> {
        get { .init(self[1], self[0], self[0]) }
    }
    @inlinable var grg: SIMD3<Scalar> {
        get { .init(self[1], self[0], self[1]) }
    }
    @inlinable var grb: SIMD3<Scalar> {
        get { .init(self[1], self[0], self[2]) }
        set { self[1] = newValue[0]; self[0] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var ggr: SIMD3<Scalar> {
        get { .init(self[1], self[1], self[0]) }
    }
    @inlinable var ggg: SIMD3<Scalar> {
        get { .init(self[1], self[1], self[1]) }
    }
    @inlinable var ggb: SIMD3<Scalar> {
        get { .init(self[1], self[1], self[2]) }
    }
    @inlinable var gbr: SIMD3<Scalar> {
        get { .init(self[1], self[2], self[0]) }
        set { self[1] = newValue[0]; self[2] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var gbg: SIMD3<Scalar> {
        get { .init(self[1], self[2], self[1]) }
    }
    @inlinable var gbb: SIMD3<Scalar> {
        get { .init(self[1], self[2], self[2]) }
    }
    @inlinable var brr: SIMD3<Scalar> {
        get { .init(self[2], self[0], self[0]) }
    }
    @inlinable var brg: SIMD3<Scalar> {
        get { .init(self[2], self[0], self[1]) }
        set { self[2] = newValue[0]; self[0] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var brb: SIMD3<Scalar> {
        get { .init(self[2], self[0], self[2]) }
    }
    @inlinable var bgr: SIMD3<Scalar> {
        get { .init(self[2], self[1], self[0]) }
        set { self[2] = newValue[0]; self[1] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var bgg: SIMD3<Scalar> {
        get { .init(self[2], self[1], self[1]) }
    }
    @inlinable var bgb: SIMD3<Scalar> {
        get { .init(self[2], self[1], self[2]) }
    }
    @inlinable var bbr: SIMD3<Scalar> {
        get { .init(self[2], self[2], self[0]) }
    }
    @inlinable var bbg: SIMD3<Scalar> {
        get { .init(self[2], self[2], self[1]) }
    }
    @inlinable var bbb: SIMD3<Scalar> {
        get { .init(self[2], self[2], self[2]) }
    }
}

