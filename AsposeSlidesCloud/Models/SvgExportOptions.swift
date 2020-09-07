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


/** Provides options that control how a presentation is saved in SVG format. */

public struct SvgExportOptions: Codable {

    public enum PicturesCompression: String, Codable { 
        case dpi330 = "Dpi330"
        case dpi220 = "Dpi220"
        case dpi150 = "Dpi150"
        case dpi96 = "Dpi96"
        case dpi72 = "Dpi72"
        case documentResolution = "DocumentResolution"
    }
    public enum ExternalFontsHandling: String, Codable { 
        case addLinksToFontFiles = "AddLinksToFontFiles"
        case embed = "Embed"
        case vectorize = "Vectorize"
    }
    /** Setting user password to protect the PDF document.  */
    public var defaultRegularFont: String?
    /** Export format. */
    public var format: String?
    /** Determines whether the text on a slide will be saved as graphics. */
    public var vectorizeText: Bool?
    /** Returns or sets the lower resolution limit for metafile rasterization. */
    public var metafileRasterizationDpi: Int?
    /** Determines whether the 3D text is disabled in SVG. */
    public var disable3DText: Bool?
    /** Disables splitting FromCornerX and FromCenter gradients. */
    public var disableGradientSplit: Bool?
    /** SVG 1.1 lacks ability to define insets for markers. Aspose.Slides SVG writing engine has workaround for that problem: it crops end of line with arrow, so, line doesn&#39;t overlap markers. This option switches off such behavior. */
    public var disableLineEndCropping: Bool?
    /** Determines JPEG encoding quality. */
    public var jpegQuality: Int?
    /** Represents the pictures compression level */
    public var picturesCompression: PicturesCompression?
    /** A boolean flag indicates if the cropped parts remain as part of the document. If true the cropped  parts will removed, if false they will be serialized in the document (which can possible lead to a  larger file) */
    public var deletePicturesCroppedAreas: Bool?
    /** Determines a way of handling externally loaded fonts. */
    public var externalFontsHandling: ExternalFontsHandling?

    public init(defaultRegularFont: String?, format: String?, vectorizeText: Bool?, metafileRasterizationDpi: Int?, disable3DText: Bool?, disableGradientSplit: Bool?, disableLineEndCropping: Bool?, jpegQuality: Int?, picturesCompression: PicturesCompression?, deletePicturesCroppedAreas: Bool?, externalFontsHandling: ExternalFontsHandling?) {
        self.defaultRegularFont = defaultRegularFont
        self.format = format
        self.vectorizeText = vectorizeText
        self.metafileRasterizationDpi = metafileRasterizationDpi
        self.disable3DText = disable3DText
        self.disableGradientSplit = disableGradientSplit
        self.disableLineEndCropping = disableLineEndCropping
        self.jpegQuality = jpegQuality
        self.picturesCompression = picturesCompression
        self.deletePicturesCroppedAreas = deletePicturesCroppedAreas
        self.externalFontsHandling = externalFontsHandling
    }


}

