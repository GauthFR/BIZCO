/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Helper functions and convenience extensions for system types.
*/

import ARKit
import RealityKit

extension simd_float4x4 {
    var position: SIMD3<Float> {
        return SIMD3<Float>(columns.3.x, columns.3.y, columns.3.z)
    }
}

extension Transform {
    static func * (left: Transform, right: Transform) -> Transform {
        return Transform(matrix: simd_mul(left.matrix, right.matrix))
    }
}

