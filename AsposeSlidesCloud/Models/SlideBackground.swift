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


/** Represents background of slide */
public class SlideBackground: ResourceBase {

    public enum ModelType: String, Codable { 
        case noFill = "NoFill"
        case solid = "Solid"
        case gradient = "Gradient"
        case pattern = "Pattern"
        case picture = "Picture"
        case notDefined = "NotDefined"
    }
    /** Fill type. */
    public var type: ModelType?
    /** Fill format. */
    public var fillFormat: FillFormat?
    /** Effect format. */
    public var effectFormat: EffectFormat?

    private enum CodingKeys: String, CodingKey {
        case type
        case fillFormat
        case effectFormat
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, type: ModelType? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.type = type
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decode(ModelType?.self, forKey: .type)
        fillFormat = try values.decode(FillFormat?.self, forKey: .fillFormat)
        effectFormat = try values.decode(EffectFormat?.self, forKey: .effectFormat)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(fillFormat, forKey: .fillFormat)
        try container.encode(effectFormat, forKey: .effectFormat)
    }


}

