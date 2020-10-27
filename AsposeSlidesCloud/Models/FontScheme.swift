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


/** Represents font scheme */
public class FontScheme: ResourceBase {

    /** Gets or sets fonts collection for a \&quot;heading\&quot; part of the slide. */
    public var major: FontSet?
    /** Gets or sets  the fonts collection for a \&quot;body\&quot; part of the slide. */
    public var minor: FontSet?
    /** Gets or sets the name. */
    public var name: String?

    private enum CodingKeys: String, CodingKey {
        case major
        case minor
        case name
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, major: FontSet? = nil, minor: FontSet? = nil, name: String? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.major = major
        self.minor = minor
        self.name = name
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        major = try values.decode(FontSet?.self, forKey: .major)
        minor = try values.decode(FontSet?.self, forKey: .minor)
        name = try values.decode(String?.self, forKey: .name)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(major, forKey: .major)
        try container.encode(minor, forKey: .minor)
        try container.encode(name, forKey: .name)
    }


}

