//
//  PrereleaseIdentifier+ExpressibleByLiteral.swift
//  SwiftVersionCompare
//
//  Created by Marius Hötten-Löns on 12.03.21.
//

extension PrereleaseIdentifier: LosslessStringConvertible {
    public init?(_ string: String) {
        self.init(private: string)
    }

    public var description: String { value }
}

extension PrereleaseIdentifier: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        let absoluteInteger = abs(value)
        let unsignedInteger = UInt(absoluteInteger)
        self = .numeric(unsignedInteger)
    }
}