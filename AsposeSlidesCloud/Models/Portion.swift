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


/** Represents portion resource */

public struct Portion: Codable {

    public enum FontBold: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum FontItalic: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum FontUnderline: String, Codable { 
        case _none = "None"
        case words = "Words"
        case single = "Single"
        case double = "Double"
        case heavy = "Heavy"
        case dotted = "Dotted"
        case heavyDotted = "HeavyDotted"
        case dashed = "Dashed"
        case heavyDashed = "HeavyDashed"
        case longDashed = "LongDashed"
        case heavyLongDashed = "HeavyLongDashed"
        case dotDash = "DotDash"
        case heavyDotDash = "HeavyDotDash"
        case dotDotDash = "DotDotDash"
        case heavyDotDotDash = "HeavyDotDotDash"
        case wavy = "Wavy"
        case heavyWavy = "HeavyWavy"
        case doubleWavy = "DoubleWavy"
        case notDefined = "NotDefined"
    }
    public enum StrikethroughType: String, Codable { 
        case _none = "None"
        case single = "Single"
        case double = "Double"
        case notDefined = "NotDefined"
    }
    public enum TextCapType: String, Codable { 
        case _none = "None"
        case small = "Small"
        case all = "All"
        case notDefined = "NotDefined"
    }
    public enum NormaliseHeight: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum ProofDisabled: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum Kumimoji: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum IsHardUnderlineFill: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    public enum IsHardUnderlineLine: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    /** Gets or sets the link to this resource. */
    public var selfUri: ResourceUri?
    /** List of alternate links. */
    public var alternateLinks: [ResourceUri]?
    /** Text. */
    public var text: String?
    /** True for bold font. */
    public var fontBold: FontBold?
    /** True for italic font. */
    public var fontItalic: FontItalic?
    /** Text underline type. */
    public var fontUnderline: FontUnderline?
    /** Text strikethrough type. */
    public var strikethroughType: StrikethroughType?
    /** Text capitalization type. */
    public var textCapType: TextCapType?
    /** Superscript or subscript of the text. */
    public var escapement: Double?
    /** Intercharacter spacing increment. */
    public var spacing: Double?
    /** Font color. */
    public var fontColor: String?
    /** Highlight color. */
    public var highlightColor: String?
    /** Font height. */
    public var fontHeight: Double?
    /** True to normalize the text. */
    public var normaliseHeight: NormaliseHeight?
    /** True if the text proof should be disabled. */
    public var proofDisabled: ProofDisabled?
    /** True if smart tag should be cleaned. */
    public var smartTagClean: Bool?
    /** Minimal font size for kerning. */
    public var kerningMinimalSize: Double?
    /** True if numbers should ignore East-Asian specific vertical text layout. */
    public var kumimoji: Kumimoji?
    /** Proving language ID. */
    public var languageId: String?
    /** Alternative proving language ID. */
    public var alternativeLanguageId: String?
    /** True if underline style has own FillFormat properties. */
    public var isHardUnderlineFill: IsHardUnderlineFill?
    /** True if underline style has own LineFormat properties. */
    public var isHardUnderlineLine: IsHardUnderlineLine?
    /** Fill format. */
    public var fillFormat: FillFormat?
    /** Effect format. */
    public var effectFormat: EffectFormat?
    /** Line format. */
    public var lineFormat: LineFormat?
    /** Underline fill format. */
    public var underlineFillFormat: FillFormat?
    /** Underline line format. */
    public var underlineLineFormat: LineFormat?

    public init(selfUri: ResourceUri?, alternateLinks: [ResourceUri]?, text: String?, fontBold: FontBold?, fontItalic: FontItalic?, fontUnderline: FontUnderline?, strikethroughType: StrikethroughType?, textCapType: TextCapType?, escapement: Double?, spacing: Double?, fontColor: String?, highlightColor: String?, fontHeight: Double?, normaliseHeight: NormaliseHeight?, proofDisabled: ProofDisabled?, smartTagClean: Bool?, kerningMinimalSize: Double?, kumimoji: Kumimoji?, languageId: String?, alternativeLanguageId: String?, isHardUnderlineFill: IsHardUnderlineFill?, isHardUnderlineLine: IsHardUnderlineLine?, fillFormat: FillFormat?, effectFormat: EffectFormat?, lineFormat: LineFormat?, underlineFillFormat: FillFormat?, underlineLineFormat: LineFormat?) {
        self.selfUri = selfUri
        self.alternateLinks = alternateLinks
        self.text = text
        self.fontBold = fontBold
        self.fontItalic = fontItalic
        self.fontUnderline = fontUnderline
        self.strikethroughType = strikethroughType
        self.textCapType = textCapType
        self.escapement = escapement
        self.spacing = spacing
        self.fontColor = fontColor
        self.highlightColor = highlightColor
        self.fontHeight = fontHeight
        self.normaliseHeight = normaliseHeight
        self.proofDisabled = proofDisabled
        self.smartTagClean = smartTagClean
        self.kerningMinimalSize = kerningMinimalSize
        self.kumimoji = kumimoji
        self.languageId = languageId
        self.alternativeLanguageId = alternativeLanguageId
        self.isHardUnderlineFill = isHardUnderlineFill
        self.isHardUnderlineLine = isHardUnderlineLine
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.lineFormat = lineFormat
        self.underlineFillFormat = underlineFillFormat
        self.underlineLineFormat = underlineLineFormat
    }


}

