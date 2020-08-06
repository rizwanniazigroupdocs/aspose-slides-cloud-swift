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


/** Save slide task. */

public struct Save: Codable {

    public enum Format: String, Codable { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case fodp = "Fodp"
    }
    /** Format. */
    public var format: Format?
    /** Output file. */
    public var output: OutputFile?
    /** Save options. */
    public var options: ExportOptions?

    public init(format: Format?, output: OutputFile?, options: ExportOptions?) {
        self.format = format
        self.output = output
        self.options = options
    }


}

