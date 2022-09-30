//
//  SIMDVectorArithmeticExtension.swift
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

#if canImport(SwiftUI)

import SwiftUI
import simd

extension SIMD2: AdditiveArithmetic where Scalar == Double {
    @inlinable public static var zero: SIMD2<Double> { .init(0, 0) }
}

extension SIMD2: VectorArithmetic where Scalar == Double {
    @inlinable public var magnitudeSquared: Double { dot(self, self) }
    
    @inlinable public mutating func scale(by rhs: Double) {
        self *= rhs
    }
}

extension SIMD3: AdditiveArithmetic where Scalar == Double {
    @inlinable public static var zero: SIMD3<Double> { .init(0, 0, 0) }
}

extension SIMD3: VectorArithmetic where Scalar == Double {
    @inlinable public var magnitudeSquared: Double { dot(self, self) }
    
    @inlinable public mutating func scale(by rhs: Double) {
        self *= rhs
    }
}

extension SIMD4: AdditiveArithmetic where Scalar == Double {
    @inlinable public static var zero: SIMD4<Double> { .init(0, 0, 0, 0) }
}

extension SIMD4: VectorArithmetic where Scalar == Double {
    @inlinable public var magnitudeSquared: Double { dot(self, self) }
    
    @inlinable public mutating func scale(by rhs: Double) {
        self *= rhs
    }
}

#endif
