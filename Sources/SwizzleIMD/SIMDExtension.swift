//
//  SIMDExtension.swift
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

import Foundation

public struct SIMDElementSequence<Base: SIMD>: Sequence, IteratorProtocol {
    @usableFromInline var index: Int
    @usableFromInline var base: Base
    
    @inlinable init(base: Base) {
        self.base = base
        self.index = base.indices.startIndex
    }
    
    @inlinable mutating public func next() -> Base.Scalar? {
        guard index < base.indices.endIndex else { return nil }
        defer { index += 1 }
        return base[index]
    }
    
    public func withContiguousStorageIfAvailable<R>(_ body: (UnsafeBufferPointer<Base.Scalar>) throws -> R) rethrows -> R? {
        try withUnsafePointer(to: base) { basePtr in
            try basePtr.withMemoryRebound(to: Base.Scalar.self, capacity: base.scalarCount) { scalarPtr in
                try body(.init(start: scalarPtr, count: base.scalarCount))
            }
        }
    }
}

public extension SIMD {
    @inlinable var elements: SIMDElementSequence<Self> { .init(base: self) }
}
