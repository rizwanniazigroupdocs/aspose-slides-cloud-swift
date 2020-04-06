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


/** Picture fill. */

public struct PictureFill: Codable {

    public enum PictureFillMode: String, Codable { 
        case tile = "Tile"
        case stretch = "Stretch"
    }
    /** Percentage of image height that is cropped from the bottom. */
    public var cropBottom: Double?
    /** Percentage of image height that is cropped from the left. */
    public var cropLeft: Double?
    /** Percentage of image height that is cropped from the right. */
    public var cropRight: Double?
    /** Percentage of image height that is cropped from the top. */
    public var cropTop: Double?
    /** Picture resolution. */
    public var dpi: Int?
    /** Internal image link. */
    public var image: ResourceUriElement?
    /** Base 64 image data. */
    public var base64Data: String?
    /** SVG image data. */
    public var svgData: String?
    /** Fill mode. */
    public var pictureFillMode: PictureFillMode?

    public init(cropBottom: Double?, cropLeft: Double?, cropRight: Double?, cropTop: Double?, dpi: Int?, image: ResourceUriElement?, base64Data: String?, svgData: String?, pictureFillMode: PictureFillMode?) {
        self.cropBottom = cropBottom
        self.cropLeft = cropLeft
        self.cropRight = cropRight
        self.cropTop = cropTop
        self.dpi = dpi
        self.image = image
        self.base64Data = base64Data
        self.svgData = svgData
        self.pictureFillMode = pictureFillMode
    }


}

