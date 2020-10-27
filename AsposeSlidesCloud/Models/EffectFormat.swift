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


/** Effect format */
public class EffectFormat: Codable {

    /** blur effect */
    public var blur: BlurEffect?
    /** glow effect */
    public var glow: GlowEffect?
    /** inner shadow effect */
    public var innerShadow: InnerShadowEffect?
    /** outer shadow effect */
    public var outerShadow: OuterShadowEffect?
    /** preset shadow effect */
    public var presetShadow: PresetShadowEffect?
    /** soft edge effect */
    public var softEdge: SoftEdgeEffect?
    /** reflection effect */
    public var reflection: ReflectionEffect?
    /** fill overlay effect */
    public var fillOverlay: FillOverlayEffect?

    private enum CodingKeys: String, CodingKey {
        case blur
        case glow
        case innerShadow
        case outerShadow
        case presetShadow
        case softEdge
        case reflection
        case fillOverlay
    }

    public init(blur: BlurEffect? = nil, glow: GlowEffect? = nil, innerShadow: InnerShadowEffect? = nil, outerShadow: OuterShadowEffect? = nil, presetShadow: PresetShadowEffect? = nil, softEdge: SoftEdgeEffect? = nil, reflection: ReflectionEffect? = nil, fillOverlay: FillOverlayEffect? = nil) {
        self.blur = blur
        self.glow = glow
        self.innerShadow = innerShadow
        self.outerShadow = outerShadow
        self.presetShadow = presetShadow
        self.softEdge = softEdge
        self.reflection = reflection
        self.fillOverlay = fillOverlay
    }


}

