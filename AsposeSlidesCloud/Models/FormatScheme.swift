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


/** Represents Format Scheme for slide&#39;s theme */
public class FormatScheme: ResourceBase {

    /** Background style links. */
    public var backgroundStyles: [ResourceUri]?
    /** Effect style links. */
    public var effectStyles: [ResourceUri]?
    /** Fill style links. */
    public var fillStyles: [ResourceUri]?
    /** Line style links. */
    public var lineStyles: [ResourceUri]?

    private enum CodingKeys: String, CodingKey {
        case backgroundStyles
        case effectStyles
        case fillStyles
        case lineStyles
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, backgroundStyles: [ResourceUri]? = nil, effectStyles: [ResourceUri]? = nil, fillStyles: [ResourceUri]? = nil, lineStyles: [ResourceUri]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.backgroundStyles = backgroundStyles
        self.effectStyles = effectStyles
        self.fillStyles = fillStyles
        self.lineStyles = lineStyles
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        backgroundStyles = try values.decode([ResourceUri]?.self, forKey: .backgroundStyles)
        effectStyles = try values.decode([ResourceUri]?.self, forKey: .effectStyles)
        fillStyles = try values.decode([ResourceUri]?.self, forKey: .fillStyles)
        lineStyles = try values.decode([ResourceUri]?.self, forKey: .lineStyles)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(backgroundStyles, forKey: .backgroundStyles)
        try container.encode(effectStyles, forKey: .effectStyles)
        try container.encode(fillStyles, forKey: .fillStyles)
        try container.encode(lineStyles, forKey: .lineStyles)
    }


}

