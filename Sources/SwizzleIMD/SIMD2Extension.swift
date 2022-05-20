//
//  SIMD2Extension.swift
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

public extension SIMD2 {
    @inlinable var xx: SIMD2<Scalar> {
        get { .init(self[0], self[0]) }
    }
    @inlinable var xy: SIMD2<Scalar> {
        get { .init(self[0], self[1]) }
        set { self[0] = newValue[0]; self[1] = newValue[1] }
    }
    @inlinable var yx: SIMD2<Scalar> {
        get { .init(self[1], self[0]) }
        set { self[0] = newValue[1]; self[1] = newValue[0] }
    }
    @inlinable var yy: SIMD2<Scalar> {
        get { .init(self[1], self[1]) }
    }
}
