//
//  SIMD4Extension.swift
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

/* XYZW */
public extension SIMD4 {
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
    @inlinable var xw: SIMD2<Scalar> {
        get { .init(self[0], self[3]) }
        set { self[0] = newValue[0]; self[3] = newValue[1] }
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
    @inlinable var yw: SIMD2<Scalar> {
        get { .init(self[1], self[3]) }
        set { self[1] = newValue[0]; self[3] = newValue[1] }
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
    @inlinable var zw: SIMD2<Scalar> {
        get { .init(self[2], self[3]) }
        set { self[2] = newValue[0]; self[3] = newValue[1] }
    }
    @inlinable var wx: SIMD2<Scalar> {
        get { .init(self[3], self[0]) }
        set { self[3] = newValue[0]; self[0] = newValue[1] }
    }
    @inlinable var wy: SIMD2<Scalar> {
        get { .init(self[3], self[1]) }
        set { self[3] = newValue[0]; self[1] = newValue[1] }
    }
    @inlinable var wz: SIMD2<Scalar> {
        get { .init(self[3], self[2]) }
        set { self[3] = newValue[0]; self[2] = newValue[1] }
    }
    @inlinable var ww: SIMD2<Scalar> {
        get { .init(self[3], self[3]) }
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
    @inlinable var xxw: SIMD3<Scalar> {
        get { .init(self[0], self[0], self[3]) }
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
    @inlinable var xyw: SIMD3<Scalar> {
        get { .init(self[0], self[1], self[3]) }
        set { self[0] = newValue[0]; self[1] = newValue[1]; self[3] = newValue[2] }
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
    @inlinable var xzw: SIMD3<Scalar> {
        get { .init(self[0], self[2], self[3]) }
        set { self[0] = newValue[0]; self[2] = newValue[1]; self[3] = newValue[2] }
    }
    @inlinable var xwx: SIMD3<Scalar> {
        get { .init(self[0], self[3], self[0]) }
    }
    @inlinable var xwy: SIMD3<Scalar> {
        get { .init(self[0], self[3], self[1]) }
        set { self[0] = newValue[0]; self[3] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var xwz: SIMD3<Scalar> {
        get { .init(self[0], self[3], self[2]) }
        set { self[0] = newValue[0]; self[3] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var xww: SIMD3<Scalar> {
        get { .init(self[0], self[3], self[3]) }
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
    @inlinable var yxw: SIMD3<Scalar> {
        get { .init(self[1], self[0], self[3]) }
        set { self[1] = newValue[0]; self[0] = newValue[1]; self[3] = newValue[2] }
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
    @inlinable var yyw: SIMD3<Scalar> {
        get { .init(self[1], self[1], self[3]) }
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
    @inlinable var yzw: SIMD3<Scalar> {
        get { .init(self[1], self[2], self[3]) }
        set { self[1] = newValue[0]; self[2] = newValue[1]; self[3] = newValue[2] }
    }
    @inlinable var ywx: SIMD3<Scalar> {
        get { .init(self[1], self[3], self[0]) }
        set { self[1] = newValue[0]; self[3] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var ywy: SIMD3<Scalar> {
        get { .init(self[1], self[3], self[1]) }
    }
    @inlinable var ywz: SIMD3<Scalar> {
        get { .init(self[1], self[3], self[2]) }
        set { self[1] = newValue[0]; self[3] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var yww: SIMD3<Scalar> {
        get { .init(self[1], self[3], self[3]) }
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
    @inlinable var zxw: SIMD3<Scalar> {
        get { .init(self[2], self[0], self[3]) }
        set { self[2] = newValue[0]; self[0] = newValue[1]; self[3] = newValue[2] }
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
    @inlinable var zyw: SIMD3<Scalar> {
        get { .init(self[2], self[1], self[3]) }
        set { self[2] = newValue[0]; self[1] = newValue[1]; self[3] = newValue[2] }
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
    @inlinable var zzw: SIMD3<Scalar> {
        get { .init(self[2], self[2], self[3]) }
    }
    @inlinable var zwx: SIMD3<Scalar> {
        get { .init(self[2], self[3], self[0]) }
        set { self[2] = newValue[0]; self[3] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var zwy: SIMD3<Scalar> {
        get { .init(self[2], self[3], self[1]) }
        set { self[2] = newValue[0]; self[3] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var zwz: SIMD3<Scalar> {
        get { .init(self[2], self[3], self[2]) }
    }
    @inlinable var zww: SIMD3<Scalar> {
        get { .init(self[2], self[3], self[3]) }
    }
    @inlinable var wxx: SIMD3<Scalar> {
        get { .init(self[3], self[0], self[0]) }
    }
    @inlinable var wxy: SIMD3<Scalar> {
        get { .init(self[3], self[0], self[1]) }
        set { self[3] = newValue[0]; self[0] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var wxz: SIMD3<Scalar> {
        get { .init(self[3], self[0], self[2]) }
        set { self[3] = newValue[0]; self[0] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var wxw: SIMD3<Scalar> {
        get { .init(self[3], self[0], self[3]) }
    }
    @inlinable var wyx: SIMD3<Scalar> {
        get { .init(self[3], self[1], self[0]) }
        set { self[3] = newValue[0]; self[1] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var wyy: SIMD3<Scalar> {
        get { .init(self[3], self[1], self[1]) }
    }
    @inlinable var wyz: SIMD3<Scalar> {
        get { .init(self[3], self[1], self[2]) }
        set { self[3] = newValue[0]; self[1] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var wyw: SIMD3<Scalar> {
        get { .init(self[3], self[1], self[3]) }
    }
    @inlinable var wzx: SIMD3<Scalar> {
        get { .init(self[3], self[2], self[0]) }
        set { self[3] = newValue[0]; self[2] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var wzy: SIMD3<Scalar> {
        get { .init(self[3], self[2], self[1]) }
        set { self[3] = newValue[0]; self[2] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var wzz: SIMD3<Scalar> {
        get { .init(self[3], self[2], self[2]) }
    }
    @inlinable var wzw: SIMD3<Scalar> {
        get { .init(self[3], self[2], self[3]) }
    }
    @inlinable var wwx: SIMD3<Scalar> {
        get { .init(self[3], self[3], self[0]) }
    }
    @inlinable var wwy: SIMD3<Scalar> {
        get { .init(self[3], self[3], self[1]) }
    }
    @inlinable var wwz: SIMD3<Scalar> {
        get { .init(self[3], self[3], self[2]) }
    }
    @inlinable var www: SIMD3<Scalar> {
        get { .init(self[3], self[3], self[3]) }
    }
    /* FOUR COMPONENTS*/
    @inlinable var xxxx: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[0], self[0]) }
    }
    @inlinable var xxxy: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[0], self[1]) }
    }
    @inlinable var xxxz: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[0], self[2]) }
    }
    @inlinable var xxxw: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[0], self[3]) }
    }
    @inlinable var xxyx: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[1], self[0]) }
    }
    @inlinable var xxyy: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[1], self[1]) }
    }
    @inlinable var xxyz: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[1], self[2]) }
    }
    @inlinable var xxyw: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[1], self[3]) }
    }
    @inlinable var xxzx: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[2], self[0]) }
    }
    @inlinable var xxzy: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[2], self[1]) }
    }
    @inlinable var xxzz: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[2], self[2]) }
    }
    @inlinable var xxzw: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[2], self[3]) }
    }
    @inlinable var xxwx: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[3], self[0]) }
    }
    @inlinable var xxwy: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[3], self[1]) }
    }
    @inlinable var xxwz: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[3], self[2]) }
    }
    @inlinable var xxww: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[3], self[3]) }
    }
    @inlinable var xyxx: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[0], self[0]) }
    }
    @inlinable var xyxy: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[0], self[1]) }
    }
    @inlinable var xyxz: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[0], self[2]) }
    }
    @inlinable var xyxw: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[0], self[3]) }
    }
    @inlinable var xyyx: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[1], self[0]) }
    }
    @inlinable var xyyy: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[1], self[1]) }
    }
    @inlinable var xyyz: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[1], self[2]) }
    }
    @inlinable var xyyw: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[1], self[3]) }
    }
    @inlinable var xyzx: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[2], self[0]) }
    }
    @inlinable var xyzy: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[2], self[1]) }
    }
    @inlinable var xyzz: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[2], self[2]) }
    }
    @inlinable var xyzw: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[2], self[3]) }
        set { self[0] = newValue[0]; self[1] = newValue[1]; self[2] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var xywx: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[3], self[0]) }
    }
    @inlinable var xywy: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[3], self[1]) }
    }
    @inlinable var xywz: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[3], self[2]) }
        set { self[0] = newValue[0]; self[1] = newValue[1]; self[3] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var xyww: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[3], self[3]) }
    }
    @inlinable var xzxx: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[0], self[0]) }
    }
    @inlinable var xzxy: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[0], self[1]) }
    }
    @inlinable var xzxz: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[0], self[2]) }
    }
    @inlinable var xzxw: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[0], self[3]) }
    }
    @inlinable var xzyx: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[1], self[0]) }
    }
    @inlinable var xzyy: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[1], self[1]) }
    }
    @inlinable var xzyz: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[1], self[2]) }
    }
    @inlinable var xzyw: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[1], self[3]) }
        set { self[0] = newValue[0]; self[2] = newValue[1]; self[1] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var xzzx: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[2], self[0]) }
    }
    @inlinable var xzzy: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[2], self[1]) }
    }
    @inlinable var xzzz: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[2], self[2]) }
    }
    @inlinable var xzzw: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[2], self[3]) }
    }
    @inlinable var xzwx: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[3], self[0]) }
    }
    @inlinable var xzwy: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[3], self[1]) }
        set { self[0] = newValue[0]; self[2] = newValue[1]; self[3] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var xzwz: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[3], self[2]) }
    }
    @inlinable var xzww: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[3], self[3]) }
    }
    @inlinable var xwxx: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[0], self[0]) }
    }
    @inlinable var xwxy: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[0], self[1]) }
    }
    @inlinable var xwxz: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[0], self[2]) }
    }
    @inlinable var xwxw: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[0], self[3]) }
    }
    @inlinable var xwyx: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[1], self[0]) }
    }
    @inlinable var xwyy: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[1], self[1]) }
    }
    @inlinable var xwyz: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[1], self[2]) }
        set { self[0] = newValue[0]; self[3] = newValue[1]; self[1] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var xwyw: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[1], self[3]) }
    }
    @inlinable var xwzx: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[2], self[0]) }
    }
    @inlinable var xwzy: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[2], self[1]) }
        set { self[0] = newValue[0]; self[3] = newValue[1]; self[2] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var xwzz: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[2], self[2]) }
    }
    @inlinable var xwzw: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[2], self[3]) }
    }
    @inlinable var xwwx: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[3], self[0]) }
    }
    @inlinable var xwwy: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[3], self[1]) }
    }
    @inlinable var xwwz: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[3], self[2]) }
    }
    @inlinable var xwww: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[3], self[3]) }
    }
    @inlinable var yxxx: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[0], self[0]) }
    }
    @inlinable var yxxy: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[0], self[1]) }
    }
    @inlinable var yxxz: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[0], self[2]) }
    }
    @inlinable var yxxw: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[0], self[3]) }
    }
    @inlinable var yxyx: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[1], self[0]) }
    }
    @inlinable var yxyy: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[1], self[1]) }
    }
    @inlinable var yxyz: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[1], self[2]) }
    }
    @inlinable var yxyw: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[1], self[3]) }
    }
    @inlinable var yxzx: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[2], self[0]) }
    }
    @inlinable var yxzy: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[2], self[1]) }
    }
    @inlinable var yxzz: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[2], self[2]) }
    }
    @inlinable var yxzw: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[2], self[3]) }
        set { self[1] = newValue[0]; self[0] = newValue[1]; self[2] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var yxwx: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[3], self[0]) }
    }
    @inlinable var yxwy: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[3], self[1]) }
    }
    @inlinable var yxwz: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[3], self[2]) }
        set { self[1] = newValue[0]; self[0] = newValue[1]; self[3] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var yxww: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[3], self[3]) }
    }
    @inlinable var yyxx: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[0], self[0]) }
    }
    @inlinable var yyxy: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[0], self[1]) }
    }
    @inlinable var yyxz: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[0], self[2]) }
    }
    @inlinable var yyxw: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[0], self[3]) }
    }
    @inlinable var yyyx: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[1], self[0]) }
    }
    @inlinable var yyyy: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[1], self[1]) }
    }
    @inlinable var yyyz: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[1], self[2]) }
    }
    @inlinable var yyyw: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[1], self[3]) }
    }
    @inlinable var yyzx: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[2], self[0]) }
    }
    @inlinable var yyzy: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[2], self[1]) }
    }
    @inlinable var yyzz: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[2], self[2]) }
    }
    @inlinable var yyzw: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[2], self[3]) }
    }
    @inlinable var yywx: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[3], self[0]) }
    }
    @inlinable var yywy: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[3], self[1]) }
    }
    @inlinable var yywz: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[3], self[2]) }
    }
    @inlinable var yyww: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[3], self[3]) }
    }
    @inlinable var yzxx: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[0], self[0]) }
    }
    @inlinable var yzxy: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[0], self[1]) }
    }
    @inlinable var yzxz: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[0], self[2]) }
    }
    @inlinable var yzxw: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[0], self[3]) }
        set { self[1] = newValue[0]; self[2] = newValue[1]; self[0] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var yzyx: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[1], self[0]) }
    }
    @inlinable var yzyy: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[1], self[1]) }
    }
    @inlinable var yzyz: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[1], self[2]) }
    }
    @inlinable var yzyw: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[1], self[3]) }
    }
    @inlinable var yzzx: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[2], self[0]) }
    }
    @inlinable var yzzy: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[2], self[1]) }
    }
    @inlinable var yzzz: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[2], self[2]) }
    }
    @inlinable var yzzw: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[2], self[3]) }
    }
    @inlinable var yzwx: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[3], self[0]) }
        set { self[1] = newValue[0]; self[2] = newValue[1]; self[3] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var yzwy: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[3], self[1]) }
    }
    @inlinable var yzwz: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[3], self[2]) }
    }
    @inlinable var yzww: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[3], self[3]) }
    }
    @inlinable var ywxx: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[0], self[0]) }
    }
    @inlinable var ywxy: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[0], self[1]) }
    }
    @inlinable var ywxz: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[0], self[2]) }
        set { self[1] = newValue[0]; self[3] = newValue[1]; self[0] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var ywxw: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[0], self[3]) }
    }
    @inlinable var ywyx: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[1], self[0]) }
    }
    @inlinable var ywyy: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[1], self[1]) }
    }
    @inlinable var ywyz: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[1], self[2]) }
    }
    @inlinable var ywyw: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[1], self[3]) }
    }
    @inlinable var ywzx: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[2], self[0]) }
        set { self[1] = newValue[0]; self[3] = newValue[1]; self[2] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var ywzy: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[2], self[1]) }
    }
    @inlinable var ywzz: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[2], self[2]) }
    }
    @inlinable var ywzw: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[2], self[3]) }
    }
    @inlinable var ywwx: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[3], self[0]) }
    }
    @inlinable var ywwy: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[3], self[1]) }
    }
    @inlinable var ywwz: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[3], self[2]) }
    }
    @inlinable var ywww: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[3], self[3]) }
    }
    @inlinable var zxxx: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[0], self[0]) }
    }
    @inlinable var zxxy: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[0], self[1]) }
    }
    @inlinable var zxxz: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[0], self[2]) }
    }
    @inlinable var zxxw: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[0], self[3]) }
    }
    @inlinable var zxyx: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[1], self[0]) }
    }
    @inlinable var zxyy: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[1], self[1]) }
    }
    @inlinable var zxyz: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[1], self[2]) }
    }
    @inlinable var zxyw: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[1], self[3]) }
        set { self[2] = newValue[0]; self[0] = newValue[1]; self[1] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var zxzx: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[2], self[0]) }
    }
    @inlinable var zxzy: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[2], self[1]) }
    }
    @inlinable var zxzz: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[2], self[2]) }
    }
    @inlinable var zxzw: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[2], self[3]) }
    }
    @inlinable var zxwx: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[3], self[0]) }
    }
    @inlinable var zxwy: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[3], self[1]) }
        set { self[2] = newValue[0]; self[0] = newValue[1]; self[3] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var zxwz: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[3], self[2]) }
    }
    @inlinable var zxww: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[3], self[3]) }
    }
    @inlinable var zyxx: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[0], self[0]) }
    }
    @inlinable var zyxy: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[0], self[1]) }
    }
    @inlinable var zyxz: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[0], self[2]) }
    }
    @inlinable var zyxw: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[0], self[3]) }
        set { self[2] = newValue[0]; self[1] = newValue[1]; self[0] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var zyyx: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[1], self[0]) }
    }
    @inlinable var zyyy: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[1], self[1]) }
    }
    @inlinable var zyyz: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[1], self[2]) }
    }
    @inlinable var zyyw: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[1], self[3]) }
    }
    @inlinable var zyzx: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[2], self[0]) }
    }
    @inlinable var zyzy: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[2], self[1]) }
    }
    @inlinable var zyzz: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[2], self[2]) }
    }
    @inlinable var zyzw: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[2], self[3]) }
    }
    @inlinable var zywx: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[3], self[0]) }
        set { self[2] = newValue[0]; self[1] = newValue[1]; self[3] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var zywy: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[3], self[1]) }
    }
    @inlinable var zywz: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[3], self[2]) }
    }
    @inlinable var zyww: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[3], self[3]) }
    }
    @inlinable var zzxx: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[0], self[0]) }
    }
    @inlinable var zzxy: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[0], self[1]) }
    }
    @inlinable var zzxz: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[0], self[2]) }
    }
    @inlinable var zzxw: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[0], self[3]) }
    }
    @inlinable var zzyx: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[1], self[0]) }
    }
    @inlinable var zzyy: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[1], self[1]) }
    }
    @inlinable var zzyz: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[1], self[2]) }
    }
    @inlinable var zzyw: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[1], self[3]) }
    }
    @inlinable var zzzx: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[2], self[0]) }
    }
    @inlinable var zzzy: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[2], self[1]) }
    }
    @inlinable var zzzz: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[2], self[2]) }
    }
    @inlinable var zzzw: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[2], self[3]) }
    }
    @inlinable var zzwx: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[3], self[0]) }
    }
    @inlinable var zzwy: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[3], self[1]) }
    }
    @inlinable var zzwz: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[3], self[2]) }
    }
    @inlinable var zzww: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[3], self[3]) }
    }
    @inlinable var zwxx: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[0], self[0]) }
    }
    @inlinable var zwxy: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[0], self[1]) }
        set { self[2] = newValue[0]; self[3] = newValue[1]; self[0] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var zwxz: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[0], self[2]) }
    }
    @inlinable var zwxw: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[0], self[3]) }
    }
    @inlinable var zwyx: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[1], self[0]) }
        set { self[2] = newValue[0]; self[3] = newValue[1]; self[1] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var zwyy: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[1], self[1]) }
    }
    @inlinable var zwyz: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[1], self[2]) }
    }
    @inlinable var zwyw: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[1], self[3]) }
    }
    @inlinable var zwzx: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[2], self[0]) }
    }
    @inlinable var zwzy: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[2], self[1]) }
    }
    @inlinable var zwzz: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[2], self[2]) }
    }
    @inlinable var zwzw: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[2], self[3]) }
    }
    @inlinable var zwwx: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[3], self[0]) }
    }
    @inlinable var zwwy: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[3], self[1]) }
    }
    @inlinable var zwwz: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[3], self[2]) }
    }
    @inlinable var zwww: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[3], self[3]) }
    }
    @inlinable var wxxx: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[0], self[0]) }
    }
    @inlinable var wxxy: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[0], self[1]) }
    }
    @inlinable var wxxz: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[0], self[2]) }
    }
    @inlinable var wxxw: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[0], self[3]) }
    }
    @inlinable var wxyx: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[1], self[0]) }
    }
    @inlinable var wxyy: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[1], self[1]) }
    }
    @inlinable var wxyz: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[1], self[2]) }
        set { self[3] = newValue[0]; self[0] = newValue[1]; self[1] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var wxyw: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[1], self[3]) }
    }
    @inlinable var wxzx: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[2], self[0]) }
    }
    @inlinable var wxzy: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[2], self[1]) }
        set { self[3] = newValue[0]; self[0] = newValue[1]; self[2] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var wxzz: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[2], self[2]) }
    }
    @inlinable var wxzw: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[2], self[3]) }
    }
    @inlinable var wxwx: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[3], self[0]) }
    }
    @inlinable var wxwy: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[3], self[1]) }
    }
    @inlinable var wxwz: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[3], self[2]) }
    }
    @inlinable var wxww: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[3], self[3]) }
    }
    @inlinable var wyxx: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[0], self[0]) }
    }
    @inlinable var wyxy: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[0], self[1]) }
    }
    @inlinable var wyxz: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[0], self[2]) }
        set { self[3] = newValue[0]; self[1] = newValue[1]; self[0] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var wyxw: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[0], self[3]) }
    }
    @inlinable var wyyx: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[1], self[0]) }
    }
    @inlinable var wyyy: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[1], self[1]) }
    }
    @inlinable var wyyz: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[1], self[2]) }
    }
    @inlinable var wyyw: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[1], self[3]) }
    }
    @inlinable var wyzx: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[2], self[0]) }
        set { self[3] = newValue[0]; self[1] = newValue[1]; self[2] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var wyzy: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[2], self[1]) }
    }
    @inlinable var wyzz: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[2], self[2]) }
    }
    @inlinable var wyzw: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[2], self[3]) }
    }
    @inlinable var wywx: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[3], self[0]) }
    }
    @inlinable var wywy: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[3], self[1]) }
    }
    @inlinable var wywz: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[3], self[2]) }
    }
    @inlinable var wyww: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[3], self[3]) }
    }
    @inlinable var wzxx: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[0], self[0]) }
    }
    @inlinable var wzxy: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[0], self[1]) }
        set { self[3] = newValue[0]; self[2] = newValue[1]; self[0] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var wzxz: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[0], self[2]) }
    }
    @inlinable var wzxw: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[0], self[3]) }
    }
    @inlinable var wzyx: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[1], self[0]) }
        set { self[3] = newValue[0]; self[2] = newValue[1]; self[1] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var wzyy: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[1], self[1]) }
    }
    @inlinable var wzyz: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[1], self[2]) }
    }
    @inlinable var wzyw: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[1], self[3]) }
    }
    @inlinable var wzzx: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[2], self[0]) }
    }
    @inlinable var wzzy: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[2], self[1]) }
    }
    @inlinable var wzzz: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[2], self[2]) }
    }
    @inlinable var wzzw: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[2], self[3]) }
    }
    @inlinable var wzwx: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[3], self[0]) }
    }
    @inlinable var wzwy: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[3], self[1]) }
    }
    @inlinable var wzwz: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[3], self[2]) }
    }
    @inlinable var wzww: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[3], self[3]) }
    }
    @inlinable var wwxx: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[0], self[0]) }
    }
    @inlinable var wwxy: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[0], self[1]) }
    }
    @inlinable var wwxz: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[0], self[2]) }
    }
    @inlinable var wwxw: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[0], self[3]) }
    }
    @inlinable var wwyx: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[1], self[0]) }
    }
    @inlinable var wwyy: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[1], self[1]) }
    }
    @inlinable var wwyz: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[1], self[2]) }
    }
    @inlinable var wwyw: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[1], self[3]) }
    }
    @inlinable var wwzx: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[2], self[0]) }
    }
    @inlinable var wwzy: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[2], self[1]) }
    }
    @inlinable var wwzz: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[2], self[2]) }
    }
    @inlinable var wwzw: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[2], self[3]) }
    }
    @inlinable var wwwx: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[3], self[0]) }
    }
    @inlinable var wwwy: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[3], self[1]) }
    }
    @inlinable var wwwz: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[3], self[2]) }
    }
    @inlinable var wwww: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[3], self[3]) }
    }

}

/* RGBA */
public extension SIMD4 {
    /* SOLO CONPONENT */
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
    @inlinable var a: Scalar {
        get { w }
        set { w = newValue }
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
    @inlinable var ra: SIMD2<Scalar> {
        get { .init(self[0], self[3]) }
        set { self[0] = newValue[0]; self[3] = newValue[1] }
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
    @inlinable var ga: SIMD2<Scalar> {
        get { .init(self[1], self[3]) }
        set { self[1] = newValue[0]; self[3] = newValue[1] }
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
    @inlinable var ba: SIMD2<Scalar> {
        get { .init(self[2], self[3]) }
        set { self[2] = newValue[0]; self[3] = newValue[1] }
    }
    @inlinable var ar: SIMD2<Scalar> {
        get { .init(self[3], self[0]) }
        set { self[3] = newValue[0]; self[0] = newValue[1] }
    }
    @inlinable var ag: SIMD2<Scalar> {
        get { .init(self[3], self[1]) }
        set { self[3] = newValue[0]; self[1] = newValue[1] }
    }
    @inlinable var ab: SIMD2<Scalar> {
        get { .init(self[3], self[2]) }
        set { self[3] = newValue[0]; self[2] = newValue[1] }
    }
    @inlinable var aa: SIMD2<Scalar> {
        get { .init(self[3], self[3]) }
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
    @inlinable var rra: SIMD3<Scalar> {
        get { .init(self[0], self[0], self[3]) }
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
    @inlinable var rga: SIMD3<Scalar> {
        get { .init(self[0], self[1], self[3]) }
        set { self[0] = newValue[0]; self[1] = newValue[1]; self[3] = newValue[2] }
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
    @inlinable var rba: SIMD3<Scalar> {
        get { .init(self[0], self[2], self[3]) }
        set { self[0] = newValue[0]; self[2] = newValue[1]; self[3] = newValue[2] }
    }
    @inlinable var rar: SIMD3<Scalar> {
        get { .init(self[0], self[3], self[0]) }
    }
    @inlinable var rag: SIMD3<Scalar> {
        get { .init(self[0], self[3], self[1]) }
        set { self[0] = newValue[0]; self[3] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var rab: SIMD3<Scalar> {
        get { .init(self[0], self[3], self[2]) }
        set { self[0] = newValue[0]; self[3] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var raa: SIMD3<Scalar> {
        get { .init(self[0], self[3], self[3]) }
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
    @inlinable var gra: SIMD3<Scalar> {
        get { .init(self[1], self[0], self[3]) }
        set { self[1] = newValue[0]; self[0] = newValue[1]; self[3] = newValue[2] }
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
    @inlinable var gga: SIMD3<Scalar> {
        get { .init(self[1], self[1], self[3]) }
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
    @inlinable var gba: SIMD3<Scalar> {
        get { .init(self[1], self[2], self[3]) }
        set { self[1] = newValue[0]; self[2] = newValue[1]; self[3] = newValue[2] }
    }
    @inlinable var gar: SIMD3<Scalar> {
        get { .init(self[1], self[3], self[0]) }
        set { self[1] = newValue[0]; self[3] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var gag: SIMD3<Scalar> {
        get { .init(self[1], self[3], self[1]) }
    }
    @inlinable var gab: SIMD3<Scalar> {
        get { .init(self[1], self[3], self[2]) }
        set { self[1] = newValue[0]; self[3] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var gaa: SIMD3<Scalar> {
        get { .init(self[1], self[3], self[3]) }
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
    @inlinable var bra: SIMD3<Scalar> {
        get { .init(self[2], self[0], self[3]) }
        set { self[2] = newValue[0]; self[0] = newValue[1]; self[3] = newValue[2] }
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
    @inlinable var bga: SIMD3<Scalar> {
        get { .init(self[2], self[1], self[3]) }
        set { self[2] = newValue[0]; self[1] = newValue[1]; self[3] = newValue[2] }
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
    @inlinable var bba: SIMD3<Scalar> {
        get { .init(self[2], self[2], self[3]) }
    }
    @inlinable var bar: SIMD3<Scalar> {
        get { .init(self[2], self[3], self[0]) }
        set { self[2] = newValue[0]; self[3] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var bag: SIMD3<Scalar> {
        get { .init(self[2], self[3], self[1]) }
        set { self[2] = newValue[0]; self[3] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var bab: SIMD3<Scalar> {
        get { .init(self[2], self[3], self[2]) }
    }
    @inlinable var baa: SIMD3<Scalar> {
        get { .init(self[2], self[3], self[3]) }
    }
    @inlinable var arr: SIMD3<Scalar> {
        get { .init(self[3], self[0], self[0]) }
    }
    @inlinable var arg: SIMD3<Scalar> {
        get { .init(self[3], self[0], self[1]) }
        set { self[3] = newValue[0]; self[0] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var arb: SIMD3<Scalar> {
        get { .init(self[3], self[0], self[2]) }
        set { self[3] = newValue[0]; self[0] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var ara: SIMD3<Scalar> {
        get { .init(self[3], self[0], self[3]) }
    }
    @inlinable var agr: SIMD3<Scalar> {
        get { .init(self[3], self[1], self[0]) }
        set { self[3] = newValue[0]; self[1] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var agg: SIMD3<Scalar> {
        get { .init(self[3], self[1], self[1]) }
    }
    @inlinable var agb: SIMD3<Scalar> {
        get { .init(self[3], self[1], self[2]) }
        set { self[3] = newValue[0]; self[1] = newValue[1]; self[2] = newValue[2] }
    }
    @inlinable var aga: SIMD3<Scalar> {
        get { .init(self[3], self[1], self[3]) }
    }
    @inlinable var abr: SIMD3<Scalar> {
        get { .init(self[3], self[2], self[0]) }
        set { self[3] = newValue[0]; self[2] = newValue[1]; self[0] = newValue[2] }
    }
    @inlinable var abg: SIMD3<Scalar> {
        get { .init(self[3], self[2], self[1]) }
        set { self[3] = newValue[0]; self[2] = newValue[1]; self[1] = newValue[2] }
    }
    @inlinable var abb: SIMD3<Scalar> {
        get { .init(self[3], self[2], self[2]) }
    }
    @inlinable var aba: SIMD3<Scalar> {
        get { .init(self[3], self[2], self[3]) }
    }
    @inlinable var aar: SIMD3<Scalar> {
        get { .init(self[3], self[3], self[0]) }
    }
    @inlinable var aag: SIMD3<Scalar> {
        get { .init(self[3], self[3], self[1]) }
    }
    @inlinable var aab: SIMD3<Scalar> {
        get { .init(self[3], self[3], self[2]) }
    }
    @inlinable var aaa: SIMD3<Scalar> {
        get { .init(self[3], self[3], self[3]) }
    }
    /* FOUR COMPONENTS */
    @inlinable var rrrr: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[0], self[0]) }
    }
    @inlinable var rrrg: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[0], self[1]) }
    }
    @inlinable var rrrb: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[0], self[2]) }
    }
    @inlinable var rrra: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[0], self[3]) }
    }
    @inlinable var rrgr: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[1], self[0]) }
    }
    @inlinable var rrgg: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[1], self[1]) }
    }
    @inlinable var rrgb: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[1], self[2]) }
    }
    @inlinable var rrga: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[1], self[3]) }
    }
    @inlinable var rrbr: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[2], self[0]) }
    }
    @inlinable var rrbg: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[2], self[1]) }
    }
    @inlinable var rrbb: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[2], self[2]) }
    }
    @inlinable var rrba: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[2], self[3]) }
    }
    @inlinable var rrar: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[3], self[0]) }
    }
    @inlinable var rrag: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[3], self[1]) }
    }
    @inlinable var rrab: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[3], self[2]) }
    }
    @inlinable var rraa: SIMD4<Scalar> {
        get { .init(self[0], self[0], self[3], self[3]) }
    }
    @inlinable var rgrr: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[0], self[0]) }
    }
    @inlinable var rgrg: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[0], self[1]) }
    }
    @inlinable var rgrb: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[0], self[2]) }
    }
    @inlinable var rgra: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[0], self[3]) }
    }
    @inlinable var rggr: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[1], self[0]) }
    }
    @inlinable var rggg: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[1], self[1]) }
    }
    @inlinable var rggb: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[1], self[2]) }
    }
    @inlinable var rgga: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[1], self[3]) }
    }
    @inlinable var rgbr: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[2], self[0]) }
    }
    @inlinable var rgbg: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[2], self[1]) }
    }
    @inlinable var rgbb: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[2], self[2]) }
    }
    @inlinable var rgba: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[2], self[3]) }
        set { self[0] = newValue[0]; self[1] = newValue[1]; self[2] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var rgar: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[3], self[0]) }
    }
    @inlinable var rgag: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[3], self[1]) }
    }
    @inlinable var rgab: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[3], self[2]) }
        set { self[0] = newValue[0]; self[1] = newValue[1]; self[3] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var rgaa: SIMD4<Scalar> {
        get { .init(self[0], self[1], self[3], self[3]) }
    }
    @inlinable var rbrr: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[0], self[0]) }
    }
    @inlinable var rbrg: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[0], self[1]) }
    }
    @inlinable var rbrb: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[0], self[2]) }
    }
    @inlinable var rbra: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[0], self[3]) }
    }
    @inlinable var rbgr: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[1], self[0]) }
    }
    @inlinable var rbgg: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[1], self[1]) }
    }
    @inlinable var rbgb: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[1], self[2]) }
    }
    @inlinable var rbga: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[1], self[3]) }
        set { self[0] = newValue[0]; self[2] = newValue[1]; self[1] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var rbbr: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[2], self[0]) }
    }
    @inlinable var rbbg: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[2], self[1]) }
    }
    @inlinable var rbbb: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[2], self[2]) }
    }
    @inlinable var rbba: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[2], self[3]) }
    }
    @inlinable var rbar: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[3], self[0]) }
    }
    @inlinable var rbag: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[3], self[1]) }
        set { self[0] = newValue[0]; self[2] = newValue[1]; self[3] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var rbab: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[3], self[2]) }
    }
    @inlinable var rbaa: SIMD4<Scalar> {
        get { .init(self[0], self[2], self[3], self[3]) }
    }
    @inlinable var rarr: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[0], self[0]) }
    }
    @inlinable var rarg: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[0], self[1]) }
    }
    @inlinable var rarb: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[0], self[2]) }
    }
    @inlinable var rara: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[0], self[3]) }
    }
    @inlinable var ragr: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[1], self[0]) }
    }
    @inlinable var ragg: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[1], self[1]) }
    }
    @inlinable var ragb: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[1], self[2]) }
        set { self[0] = newValue[0]; self[3] = newValue[1]; self[1] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var raga: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[1], self[3]) }
    }
    @inlinable var rabr: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[2], self[0]) }
    }
    @inlinable var rabg: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[2], self[1]) }
        set { self[0] = newValue[0]; self[3] = newValue[1]; self[2] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var rabb: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[2], self[2]) }
    }
    @inlinable var raba: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[2], self[3]) }
    }
    @inlinable var raar: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[3], self[0]) }
    }
    @inlinable var raag: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[3], self[1]) }
    }
    @inlinable var raab: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[3], self[2]) }
    }
    @inlinable var raaa: SIMD4<Scalar> {
        get { .init(self[0], self[3], self[3], self[3]) }
    }
    @inlinable var grrr: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[0], self[0]) }
    }
    @inlinable var grrg: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[0], self[1]) }
    }
    @inlinable var grrb: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[0], self[2]) }
    }
    @inlinable var grra: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[0], self[3]) }
    }
    @inlinable var grgr: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[1], self[0]) }
    }
    @inlinable var grgg: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[1], self[1]) }
    }
    @inlinable var grgb: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[1], self[2]) }
    }
    @inlinable var grga: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[1], self[3]) }
    }
    @inlinable var grbr: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[2], self[0]) }
    }
    @inlinable var grbg: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[2], self[1]) }
    }
    @inlinable var grbb: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[2], self[2]) }
    }
    @inlinable var grba: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[2], self[3]) }
        set { self[1] = newValue[0]; self[0] = newValue[1]; self[2] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var grar: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[3], self[0]) }
    }
    @inlinable var grag: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[3], self[1]) }
    }
    @inlinable var grab: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[3], self[2]) }
        set { self[1] = newValue[0]; self[0] = newValue[1]; self[3] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var graa: SIMD4<Scalar> {
        get { .init(self[1], self[0], self[3], self[3]) }
    }
    @inlinable var ggrr: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[0], self[0]) }
    }
    @inlinable var ggrg: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[0], self[1]) }
    }
    @inlinable var ggrb: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[0], self[2]) }
    }
    @inlinable var ggra: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[0], self[3]) }
    }
    @inlinable var gggr: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[1], self[0]) }
    }
    @inlinable var gggg: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[1], self[1]) }
    }
    @inlinable var gggb: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[1], self[2]) }
    }
    @inlinable var ggga: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[1], self[3]) }
    }
    @inlinable var ggbr: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[2], self[0]) }
    }
    @inlinable var ggbg: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[2], self[1]) }
    }
    @inlinable var ggbb: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[2], self[2]) }
    }
    @inlinable var ggba: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[2], self[3]) }
    }
    @inlinable var ggar: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[3], self[0]) }
    }
    @inlinable var ggag: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[3], self[1]) }
    }
    @inlinable var ggab: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[3], self[2]) }
    }
    @inlinable var ggaa: SIMD4<Scalar> {
        get { .init(self[1], self[1], self[3], self[3]) }
    }
    @inlinable var gbrr: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[0], self[0]) }
    }
    @inlinable var gbrg: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[0], self[1]) }
    }
    @inlinable var gbrb: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[0], self[2]) }
    }
    @inlinable var gbra: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[0], self[3]) }
        set { self[1] = newValue[0]; self[2] = newValue[1]; self[0] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var gbgr: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[1], self[0]) }
    }
    @inlinable var gbgg: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[1], self[1]) }
    }
    @inlinable var gbgb: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[1], self[2]) }
    }
    @inlinable var gbga: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[1], self[3]) }
    }
    @inlinable var gbbr: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[2], self[0]) }
    }
    @inlinable var gbbg: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[2], self[1]) }
    }
    @inlinable var gbbb: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[2], self[2]) }
    }
    @inlinable var gbba: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[2], self[3]) }
    }
    @inlinable var gbar: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[3], self[0]) }
        set { self[1] = newValue[0]; self[2] = newValue[1]; self[3] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var gbag: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[3], self[1]) }
    }
    @inlinable var gbab: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[3], self[2]) }
    }
    @inlinable var gbaa: SIMD4<Scalar> {
        get { .init(self[1], self[2], self[3], self[3]) }
    }
    @inlinable var garr: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[0], self[0]) }
    }
    @inlinable var garg: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[0], self[1]) }
    }
    @inlinable var garb: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[0], self[2]) }
        set { self[1] = newValue[0]; self[3] = newValue[1]; self[0] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var gara: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[0], self[3]) }
    }
    @inlinable var gagr: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[1], self[0]) }
    }
    @inlinable var gagg: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[1], self[1]) }
    }
    @inlinable var gagb: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[1], self[2]) }
    }
    @inlinable var gaga: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[1], self[3]) }
    }
    @inlinable var gabr: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[2], self[0]) }
        set { self[1] = newValue[0]; self[3] = newValue[1]; self[2] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var gabg: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[2], self[1]) }
    }
    @inlinable var gabb: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[2], self[2]) }
    }
    @inlinable var gaba: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[2], self[3]) }
    }
    @inlinable var gaar: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[3], self[0]) }
    }
    @inlinable var gaag: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[3], self[1]) }
    }
    @inlinable var gaab: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[3], self[2]) }
    }
    @inlinable var gaaa: SIMD4<Scalar> {
        get { .init(self[1], self[3], self[3], self[3]) }
    }
    @inlinable var brrr: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[0], self[0]) }
    }
    @inlinable var brrg: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[0], self[1]) }
    }
    @inlinable var brrb: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[0], self[2]) }
    }
    @inlinable var brra: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[0], self[3]) }
    }
    @inlinable var brgr: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[1], self[0]) }
    }
    @inlinable var brgg: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[1], self[1]) }
    }
    @inlinable var brgb: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[1], self[2]) }
    }
    @inlinable var brga: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[1], self[3]) }
        set { self[2] = newValue[0]; self[0] = newValue[1]; self[1] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var brbr: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[2], self[0]) }
    }
    @inlinable var brbg: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[2], self[1]) }
    }
    @inlinable var brbb: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[2], self[2]) }
    }
    @inlinable var brba: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[2], self[3]) }
    }
    @inlinable var brar: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[3], self[0]) }
    }
    @inlinable var brag: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[3], self[1]) }
        set { self[2] = newValue[0]; self[0] = newValue[1]; self[3] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var brab: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[3], self[2]) }
    }
    @inlinable var braa: SIMD4<Scalar> {
        get { .init(self[2], self[0], self[3], self[3]) }
    }
    @inlinable var bgrr: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[0], self[0]) }
    }
    @inlinable var bgrg: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[0], self[1]) }
    }
    @inlinable var bgrb: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[0], self[2]) }
    }
    @inlinable var bgra: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[0], self[3]) }
        set { self[2] = newValue[0]; self[1] = newValue[1]; self[0] = newValue[2]; self[3] = newValue[3] }
    }
    @inlinable var bggr: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[1], self[0]) }
    }
    @inlinable var bggg: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[1], self[1]) }
    }
    @inlinable var bggb: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[1], self[2]) }
    }
    @inlinable var bgga: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[1], self[3]) }
    }
    @inlinable var bgbr: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[2], self[0]) }
    }
    @inlinable var bgbg: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[2], self[1]) }
    }
    @inlinable var bgbb: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[2], self[2]) }
    }
    @inlinable var bgba: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[2], self[3]) }
    }
    @inlinable var bgar: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[3], self[0]) }
        set { self[2] = newValue[0]; self[1] = newValue[1]; self[3] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var bgag: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[3], self[1]) }
    }
    @inlinable var bgab: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[3], self[2]) }
    }
    @inlinable var bgaa: SIMD4<Scalar> {
        get { .init(self[2], self[1], self[3], self[3]) }
    }
    @inlinable var bbrr: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[0], self[0]) }
    }
    @inlinable var bbrg: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[0], self[1]) }
    }
    @inlinable var bbrb: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[0], self[2]) }
    }
    @inlinable var bbra: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[0], self[3]) }
    }
    @inlinable var bbgr: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[1], self[0]) }
    }
    @inlinable var bbgg: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[1], self[1]) }
    }
    @inlinable var bbgb: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[1], self[2]) }
    }
    @inlinable var bbga: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[1], self[3]) }
    }
    @inlinable var bbbr: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[2], self[0]) }
    }
    @inlinable var bbbg: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[2], self[1]) }
    }
    @inlinable var bbbb: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[2], self[2]) }
    }
    @inlinable var bbba: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[2], self[3]) }
    }
    @inlinable var bbar: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[3], self[0]) }
    }
    @inlinable var bbag: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[3], self[1]) }
    }
    @inlinable var bbab: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[3], self[2]) }
    }
    @inlinable var bbaa: SIMD4<Scalar> {
        get { .init(self[2], self[2], self[3], self[3]) }
    }
    @inlinable var barr: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[0], self[0]) }
    }
    @inlinable var barg: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[0], self[1]) }
        set { self[2] = newValue[0]; self[3] = newValue[1]; self[0] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var barb: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[0], self[2]) }
    }
    @inlinable var bara: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[0], self[3]) }
    }
    @inlinable var bagr: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[1], self[0]) }
        set { self[2] = newValue[0]; self[3] = newValue[1]; self[1] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var bagg: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[1], self[1]) }
    }
    @inlinable var bagb: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[1], self[2]) }
    }
    @inlinable var baga: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[1], self[3]) }
    }
    @inlinable var babr: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[2], self[0]) }
    }
    @inlinable var babg: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[2], self[1]) }
    }
    @inlinable var babb: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[2], self[2]) }
    }
    @inlinable var baba: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[2], self[3]) }
    }
    @inlinable var baar: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[3], self[0]) }
    }
    @inlinable var baag: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[3], self[1]) }
    }
    @inlinable var baab: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[3], self[2]) }
    }
    @inlinable var baaa: SIMD4<Scalar> {
        get { .init(self[2], self[3], self[3], self[3]) }
    }
    @inlinable var arrr: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[0], self[0]) }
    }
    @inlinable var arrg: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[0], self[1]) }
    }
    @inlinable var arrb: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[0], self[2]) }
    }
    @inlinable var arra: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[0], self[3]) }
    }
    @inlinable var argr: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[1], self[0]) }
    }
    @inlinable var argg: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[1], self[1]) }
    }
    @inlinable var argb: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[1], self[2]) }
        set { self[3] = newValue[0]; self[0] = newValue[1]; self[1] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var arga: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[1], self[3]) }
    }
    @inlinable var arbr: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[2], self[0]) }
    }
    @inlinable var arbg: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[2], self[1]) }
        set { self[3] = newValue[0]; self[0] = newValue[1]; self[2] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var arbb: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[2], self[2]) }
    }
    @inlinable var arba: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[2], self[3]) }
    }
    @inlinable var arar: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[3], self[0]) }
    }
    @inlinable var arag: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[3], self[1]) }
    }
    @inlinable var arab: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[3], self[2]) }
    }
    @inlinable var araa: SIMD4<Scalar> {
        get { .init(self[3], self[0], self[3], self[3]) }
    }
    @inlinable var agrr: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[0], self[0]) }
    }
    @inlinable var agrg: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[0], self[1]) }
    }
    @inlinable var agrb: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[0], self[2]) }
        set { self[3] = newValue[0]; self[1] = newValue[1]; self[0] = newValue[2]; self[2] = newValue[3] }
    }
    @inlinable var agra: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[0], self[3]) }
    }
    @inlinable var aggr: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[1], self[0]) }
    }
    @inlinable var aggg: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[1], self[1]) }
    }
    @inlinable var aggb: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[1], self[2]) }
    }
    @inlinable var agga: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[1], self[3]) }
    }
    @inlinable var agbr: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[2], self[0]) }
        set { self[3] = newValue[0]; self[1] = newValue[1]; self[2] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var agbg: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[2], self[1]) }
    }
    @inlinable var agbb: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[2], self[2]) }
    }
    @inlinable var agba: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[2], self[3]) }
    }
    @inlinable var agar: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[3], self[0]) }
    }
    @inlinable var agag: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[3], self[1]) }
    }
    @inlinable var agab: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[3], self[2]) }
    }
    @inlinable var agaa: SIMD4<Scalar> {
        get { .init(self[3], self[1], self[3], self[3]) }
    }
    @inlinable var abrr: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[0], self[0]) }
    }
    @inlinable var abrg: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[0], self[1]) }
        set { self[3] = newValue[0]; self[2] = newValue[1]; self[0] = newValue[2]; self[1] = newValue[3] }
    }
    @inlinable var abrb: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[0], self[2]) }
    }
    @inlinable var abra: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[0], self[3]) }
    }
    @inlinable var abgr: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[1], self[0]) }
        set { self[3] = newValue[0]; self[2] = newValue[1]; self[1] = newValue[2]; self[0] = newValue[3] }
    }
    @inlinable var abgg: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[1], self[1]) }
    }
    @inlinable var abgb: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[1], self[2]) }
    }
    @inlinable var abga: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[1], self[3]) }
    }
    @inlinable var abbr: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[2], self[0]) }
    }
    @inlinable var abbg: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[2], self[1]) }
    }
    @inlinable var abbb: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[2], self[2]) }
    }
    @inlinable var abba: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[2], self[3]) }
    }
    @inlinable var abar: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[3], self[0]) }
    }
    @inlinable var abag: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[3], self[1]) }
    }
    @inlinable var abab: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[3], self[2]) }
    }
    @inlinable var abaa: SIMD4<Scalar> {
        get { .init(self[3], self[2], self[3], self[3]) }
    }
    @inlinable var aarr: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[0], self[0]) }
    }
    @inlinable var aarg: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[0], self[1]) }
    }
    @inlinable var aarb: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[0], self[2]) }
    }
    @inlinable var aara: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[0], self[3]) }
    }
    @inlinable var aagr: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[1], self[0]) }
    }
    @inlinable var aagg: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[1], self[1]) }
    }
    @inlinable var aagb: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[1], self[2]) }
    }
    @inlinable var aaga: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[1], self[3]) }
    }
    @inlinable var aabr: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[2], self[0]) }
    }
    @inlinable var aabg: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[2], self[1]) }
    }
    @inlinable var aabb: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[2], self[2]) }
    }
    @inlinable var aaba: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[2], self[3]) }
    }
    @inlinable var aaar: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[3], self[0]) }
    }
    @inlinable var aaag: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[3], self[1]) }
    }
    @inlinable var aaab: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[3], self[2]) }
    }
    @inlinable var aaaa: SIMD4<Scalar> {
        get { .init(self[3], self[3], self[3], self[3]) }
    }
}
