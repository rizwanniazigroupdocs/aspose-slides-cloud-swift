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


/** Presentation slide. */
public class Slide: ResourceBase {

    /** Gets or sets the width. */
    public var width: Double?
    /** Gets or sets the height. */
    public var height: Double?
    /** Specifies if shapes of the master slide should be shown on the slide. True by default. */
    public var showMasterShapes: Bool?
    /** Gets or sets the  link to the layout slide. */
    public var layoutSlide: ResourceUri?
    /** Gets or sets the  link to list of top-level shapes. */
    public var shapes: ResourceUri?
    /** Gets or sets the link to theme. */
    public var theme: ResourceUri?
    /** Gets or sets the  link to placeholders. */
    public var placeholders: ResourceUri?
    /** Gets or sets the link to images. */
    public var images: ResourceUri?
    /** Gets or sets the link to comments. */
    public var comments: ResourceUri?
    /** Get or sets the link to slide&#39;s background */
    public var background: ResourceUri?
    /** Get or sets the link to notes slide. */
    public var notesSlide: ResourceUri?

    private enum CodingKeys: String, CodingKey {
        case width
        case height
        case showMasterShapes
        case layoutSlide
        case shapes
        case theme
        case placeholders
        case images
        case comments
        case background
        case notesSlide
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, width: Double? = nil, height: Double? = nil, showMasterShapes: Bool? = nil, layoutSlide: ResourceUri? = nil, shapes: ResourceUri? = nil, theme: ResourceUri? = nil, placeholders: ResourceUri? = nil, images: ResourceUri? = nil, comments: ResourceUri? = nil, background: ResourceUri? = nil, notesSlide: ResourceUri? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.width = width
        self.height = height
        self.showMasterShapes = showMasterShapes
        self.layoutSlide = layoutSlide
        self.shapes = shapes
        self.theme = theme
        self.placeholders = placeholders
        self.images = images
        self.comments = comments
        self.background = background
        self.notesSlide = notesSlide
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        width = try values.decode(Double?.self, forKey: .width)
        height = try values.decode(Double?.self, forKey: .height)
        showMasterShapes = try values.decode(Bool?.self, forKey: .showMasterShapes)
        layoutSlide = try values.decode(ResourceUri?.self, forKey: .layoutSlide)
        shapes = try values.decode(ResourceUri?.self, forKey: .shapes)
        theme = try values.decode(ResourceUri?.self, forKey: .theme)
        placeholders = try values.decode(ResourceUri?.self, forKey: .placeholders)
        images = try values.decode(ResourceUri?.self, forKey: .images)
        comments = try values.decode(ResourceUri?.self, forKey: .comments)
        background = try values.decode(ResourceUri?.self, forKey: .background)
        notesSlide = try values.decode(ResourceUri?.self, forKey: .notesSlide)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(width, forKey: .width)
        try container.encode(height, forKey: .height)
        try container.encode(showMasterShapes, forKey: .showMasterShapes)
        try container.encode(layoutSlide, forKey: .layoutSlide)
        try container.encode(shapes, forKey: .shapes)
        try container.encode(theme, forKey: .theme)
        try container.encode(placeholders, forKey: .placeholders)
        try container.encode(images, forKey: .images)
        try container.encode(comments, forKey: .comments)
        try container.encode(background, forKey: .background)
        try container.encode(notesSlide, forKey: .notesSlide)
    }


}

