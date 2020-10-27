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


/** Layout slide. */
public class LayoutSlide: ResourceBase {

    public enum ModelType: String, Codable { 
        case title = "Title"
        case text = "Text"
        case twoColumnText = "TwoColumnText"
        case table = "Table"
        case textAndChart = "TextAndChart"
        case chartAndText = "ChartAndText"
        case diagram = "Diagram"
        case chart = "Chart"
        case textAndClipArt = "TextAndClipArt"
        case clipArtAndText = "ClipArtAndText"
        case titleOnly = "TitleOnly"
        case blank = "Blank"
        case textAndObject = "TextAndObject"
        case objectAndText = "ObjectAndText"
        case object = "Object"
        case titleAndObject = "TitleAndObject"
        case textAndMedia = "TextAndMedia"
        case mediaAndText = "MediaAndText"
        case objectOverText = "ObjectOverText"
        case textOverObject = "TextOverObject"
        case textAndTwoObjects = "TextAndTwoObjects"
        case twoObjectsAndText = "TwoObjectsAndText"
        case twoObjectsOverText = "TwoObjectsOverText"
        case fourObjects = "FourObjects"
        case verticalText = "VerticalText"
        case clipArtAndVerticalText = "ClipArtAndVerticalText"
        case verticalTitleAndText = "VerticalTitleAndText"
        case verticalTitleAndTextOverChart = "VerticalTitleAndTextOverChart"
        case twoObjects = "TwoObjects"
        case objectAndTwoObject = "ObjectAndTwoObject"
        case twoObjectsAndObject = "TwoObjectsAndObject"
        case sectionHeader = "SectionHeader"
        case twoTextAndTwoObjects = "TwoTextAndTwoObjects"
        case titleObjectAndCaption = "TitleObjectAndCaption"
        case pictureAndCaption = "PictureAndCaption"
        case custom = "Custom"
    }
    /** Name. */
    public var name: String?
    /** Layout slide type. */
    public var type: ModelType?
    /** Master slide link. */
    public var masterSlide: ResourceUri?
    /** List of depending slides. */
    public var dependingSlides: [ResourceUri]?

    private enum CodingKeys: String, CodingKey {
        case name
        case type
        case masterSlide
        case dependingSlides
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, type: ModelType? = nil, masterSlide: ResourceUri? = nil, dependingSlides: [ResourceUri]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.name = name
        self.type = type
        self.masterSlide = masterSlide
        self.dependingSlides = dependingSlides
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String?.self, forKey: .name)
        type = try values.decode(ModelType?.self, forKey: .type)
        masterSlide = try values.decode(ResourceUri?.self, forKey: .masterSlide)
        dependingSlides = try values.decode([ResourceUri]?.self, forKey: .dependingSlides)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encode(masterSlide, forKey: .masterSlide)
        try container.encode(dependingSlides, forKey: .dependingSlides)
    }


}

