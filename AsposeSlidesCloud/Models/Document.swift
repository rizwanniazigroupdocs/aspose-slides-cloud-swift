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


/** Represents document DTO. */
public class Document: ResourceBase {

    /** Link to Document properties. */
    public var documentProperties: ResourceUri?
    /** Link to Document properties. */
    public var viewProperties: ResourceUri?
    /** Link to slides collection. */
    public var slides: ResourceUri?
    /** Link to images collection. */
    public var images: ResourceUri?
    /** Link to layout slides collection. */
    public var layoutSlides: ResourceUri?
    /** Link to master slides collection. */
    public var masterSlides: ResourceUri?

    private enum CodingKeys: String, CodingKey {
        case documentProperties
        case viewProperties
        case slides
        case images
        case layoutSlides
        case masterSlides
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, documentProperties: ResourceUri? = nil, viewProperties: ResourceUri? = nil, slides: ResourceUri? = nil, images: ResourceUri? = nil, layoutSlides: ResourceUri? = nil, masterSlides: ResourceUri? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.documentProperties = documentProperties
        self.viewProperties = viewProperties
        self.slides = slides
        self.images = images
        self.layoutSlides = layoutSlides
        self.masterSlides = masterSlides
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        documentProperties = try values.decode(ResourceUri?.self, forKey: .documentProperties)
        viewProperties = try values.decode(ResourceUri?.self, forKey: .viewProperties)
        slides = try values.decode(ResourceUri?.self, forKey: .slides)
        images = try values.decode(ResourceUri?.self, forKey: .images)
        layoutSlides = try values.decode(ResourceUri?.self, forKey: .layoutSlides)
        masterSlides = try values.decode(ResourceUri?.self, forKey: .masterSlides)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(documentProperties, forKey: .documentProperties)
        try container.encode(viewProperties, forKey: .viewProperties)
        try container.encode(slides, forKey: .slides)
        try container.encode(images, forKey: .images)
        try container.encode(layoutSlides, forKey: .layoutSlides)
        try container.encode(masterSlides, forKey: .masterSlides)
    }


}

