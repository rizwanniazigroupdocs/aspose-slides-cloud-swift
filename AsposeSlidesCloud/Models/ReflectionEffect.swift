/*
 * --------------------------------------------------------------------------------------------------------------------
 * <copyright company="Aspose">
 *   Copyright (c) 2020 Aspose.Slides for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------------------------------------------
 */


import Foundation


/** Represents reflection effect  */

public struct ReflectionEffect: Codable {

    public enum RectangleAlign: String, Codable { 
        case topLeft = "TopLeft"
        case top = "Top"
        case topRight = "TopRight"
        case _left = "Left"
        case center = "Center"
        case _right = "Right"
        case bottomLeft = "BottomLeft"
        case bottom = "Bottom"
        case bottomRight = "BottomRight"
        case notDefined = "NotDefined"
    }
    /** direction */
    public var direction: Double?
    /** fade direction */
    public var fadeDirection: Double?
    /** distance */
    public var distance: Double?
    /** blur radius */
    public var blurRadius: Double?
    /** scale horizontal */
    public var scaleHorizontal: Double?
    /** scale vertical */
    public var scaleVertical: Double?
    /** skew horizontal */
    public var skewHorizontal: Double?
    /** skew vertical */
    public var skewVertical: Double?
    /** start pos alpha */
    public var startPosAlpha: Double?
    /** end pos alpha */
    public var endPosAlpha: Double?
    /** start reflection opacity */
    public var startReflectionOpacity: Double?
    /** end reflection opacity */
    public var endReflectionOpacity: Double?
    /** rectangle alignment */
    public var rectangleAlign: RectangleAlign?
    /** true if the reflection should rotate with the shape when the shape is rotated */
    public var rotateShadowWithShape: Bool?

    public init(direction: Double?, fadeDirection: Double?, distance: Double?, blurRadius: Double?, scaleHorizontal: Double?, scaleVertical: Double?, skewHorizontal: Double?, skewVertical: Double?, startPosAlpha: Double?, endPosAlpha: Double?, startReflectionOpacity: Double?, endReflectionOpacity: Double?, rectangleAlign: RectangleAlign?, rotateShadowWithShape: Bool?) {
        self.direction = direction
        self.fadeDirection = fadeDirection
        self.distance = distance
        self.blurRadius = blurRadius
        self.scaleHorizontal = scaleHorizontal
        self.scaleVertical = scaleVertical
        self.skewHorizontal = skewHorizontal
        self.skewVertical = skewVertical
        self.startPosAlpha = startPosAlpha
        self.endPosAlpha = endPosAlpha
        self.startReflectionOpacity = startReflectionOpacity
        self.endReflectionOpacity = endReflectionOpacity
        self.rectangleAlign = rectangleAlign
        self.rotateShadowWithShape = rotateShadowWithShape
    }


}

