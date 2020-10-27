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


/** Save shape task. */
public class SaveShape: Task {

    public enum Format: String, Codable { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }
    /** Format. */
    public var format: Format?
    /** Shape path. */
    public var shapePath: String?
    /** Output file. */
    public var output: OutputFile?
    /** Save options. */
    public var options: IShapeExportOptions?

    private enum CodingKeys: String, CodingKey {
        case format
        case shapePath
        case output
        case options
    }

    public init(type: ModelType? = nil, format: Format? = nil, shapePath: String? = nil, output: OutputFile? = nil, options: IShapeExportOptions? = nil) {
        super.init(type: type)
        self.format = format
        self.shapePath = shapePath
        self.output = output
        self.options = options
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        format = try values.decode(Format?.self, forKey: .format)
        shapePath = try values.decode(String?.self, forKey: .shapePath)
        output = try values.decode(OutputFile?.self, forKey: .output)
        options = try values.decode(IShapeExportOptions?.self, forKey: .options)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(format, forKey: .format)
        try container.encode(shapePath, forKey: .shapePath)
        try container.encode(output, forKey: .output)
        try container.encode(options, forKey: .options)
    }


}

