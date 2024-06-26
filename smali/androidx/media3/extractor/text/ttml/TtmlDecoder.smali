.class public final Landroidx/media3/extractor/text/ttml/TtmlDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SourceFile"


# static fields
.field public static final CELL_RESOLUTION:Ljava/util/regex/Pattern;

.field public static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CELL_RESOLUTION:Lcom/google/zxing/qrcode/decoder/Version$ECB;

.field public static final DEFAULT_FRAME_AND_TICK_RATE:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

.field public static final FONT_SIZE:Ljava/util/regex/Pattern;

.field public static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field public static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field public static final PIXEL_COORDINATES:Ljava/util/regex/Pattern;

.field public static final SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;


# instance fields
.field public final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    new-instance v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v2}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;-><init>(IFI)V

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-direct {p0}, Landroidx/media3/extractor/text/ttml/TtmlStyle;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static isSupportedTag(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 2

    invoke-static {p0}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/zxing/qrcode/decoder/Version$ECB;)Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .locals 5

    const-string v0, "Invalid cell resolution "

    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    const-string v2, "cellResolution"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    sget-object v1, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    return-object v0

    :cond_2
    new-instance v3, Landroidx/media3/extractor/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    const-string v0, "Ignoring malformed cell resolution: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TtmlDecoder"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static parseFontSize(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;)V
    .locals 7

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const-string v0, "\\s+"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    sget-object v2, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-ne v1, v3, :cond_5

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "TtmlDecoder"

    const-string v2, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_4

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string p1, "Invalid unit for fontSize: \'"

    invoke-static {p1, v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iput v4, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    goto :goto_2

    :pswitch_1
    iput v3, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    goto :goto_2

    :pswitch_2
    iput p0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    iput p0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontSize:F

    return-void

    :cond_4
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v0, "Invalid expression for fontSize: \'"

    invoke-static {v0, p0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid number of entries for fontSize: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    const-string v1, "."

    invoke-static {p1, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;
    .locals 6

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "frameRate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    const-string v2, "frameRateMultiplier"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v3, -0x1

    const-string v4, " "

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    goto :goto_1

    :cond_1
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    sget-object v2, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget v4, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    const-string v5, "subFrameRate"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_3
    iget v2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    const-string v5, "tickRate"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_4
    new-instance p0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    int-to-float v0, v1

    mul-float/2addr v0, v3

    invoke-direct {p0, v4, v0, v2}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;-><init>(IFI)V

    return-object p0
.end method

.method public static parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Lcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "style"

    invoke-static {v0, v3}, Lcom/adobe/xmp/XMPUtils;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-static {v0, v3}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-direct {v4}, Landroidx/media3/extractor/text/ttml/TtmlStyle;-><init>()V

    invoke-static {v0, v4}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v4

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    new-array v3, v6, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    const-string v7, "\\s+"

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    :goto_0
    array-length v5, v3

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-virtual {v4, v7}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->chain(Landroidx/media3/extractor/text/ttml/TtmlStyle;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, v4, Landroidx/media3/extractor/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object/from16 v6, p4

    goto/16 :goto_f

    :cond_4
    const-string v3, "region"

    invoke-static {v0, v3}, Lcom/adobe/xmp/XMPUtils;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "id"

    if-eqz v3, :cond_15

    invoke-static {v0, v4}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    goto/16 :goto_c

    :cond_5
    const-string v3, "origin"

    invoke-static {v0, v3}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    sget-object v4, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    sget-object v9, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/high16 v14, 0x42c80000    # 100.0f

    if-eqz v11, :cond_6

    :try_start_0
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    div-float/2addr v10, v14

    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    div-float/2addr v7, v14

    goto :goto_2

    :cond_6
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_13

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    :try_start_1
    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v7, v7

    iget v11, v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    int-to-float v11, v11

    div-float/2addr v7, v11

    int-to-float v10, v10

    iget v11, v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    int-to-float v11, v11

    div-float/2addr v10, v11

    move/from16 v19, v10

    move v10, v7

    move/from16 v7, v19

    :goto_2
    const-string v11, "extent"

    invoke-static {v0, v11}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v4, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v9, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_8

    :try_start_2
    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    div-float/2addr v9, v14

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    div-float/2addr v3, v14

    move v14, v3

    move v4, v9

    goto :goto_4

    :cond_8
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_11

    if-nez v2, :cond_9

    :goto_3
    const-string v4, "Ignoring region with missing tts:extent: "

    goto/16 :goto_a

    :cond_9
    :try_start_3
    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v4, v4

    iget v11, v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    int-to-float v11, v11

    div-float/2addr v4, v11

    int-to-float v9, v9

    iget v3, v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    int-to-float v3, v3

    div-float/2addr v9, v3

    move v14, v9

    :goto_4
    const-string v3, "displayAlign"

    invoke-static {v0, v3}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {v3}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "center"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "after"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    add-float/2addr v7, v14

    move-object/from16 v11, p2

    move v3, v7

    move v15, v12

    goto :goto_6

    :cond_b
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v14, v3

    add-float/2addr v3, v7

    move-object/from16 v11, p2

    move v15, v13

    goto :goto_6

    :cond_c
    :goto_5
    move-object/from16 v11, p2

    move v15, v6

    move v3, v7

    :goto_6
    iget v7, v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v16, v9, v7

    const-string v7, "writingMode"

    invoke-static {v0, v7}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-static {v7}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    const-string v6, "tbrl"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_7

    :cond_d
    move v5, v12

    goto :goto_7

    :sswitch_1
    const-string v6, "tblr"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_7

    :cond_e
    move v5, v13

    goto :goto_7

    :sswitch_2
    const-string v9, "tb"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_7

    :cond_f
    move v5, v6

    :goto_7
    packed-switch v5, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    move/from16 v17, v13

    goto :goto_9

    :pswitch_1
    move/from16 v17, v12

    goto :goto_9

    :cond_10
    :goto_8
    const/high16 v5, -0x80000000

    move/from16 v17, v5

    :goto_9
    new-instance v5, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    const/4 v6, 0x0

    const/16 v18, 0x1

    move-object v7, v5

    move v9, v10

    move v10, v3

    move v11, v6

    move v12, v15

    move v13, v4

    move/from16 v15, v18

    invoke-direct/range {v7 .. v17}, Landroidx/media3/extractor/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFFIFI)V

    goto :goto_d

    :catch_0
    const-string v4, "Ignoring region with malformed extent: "

    goto :goto_a

    :cond_11
    const-string v4, "Ignoring region with unsupported extent: "

    goto :goto_a

    :cond_12
    const-string v3, "Ignoring region without an extent"

    goto :goto_b

    :catch_1
    const-string v4, "Ignoring region with malformed origin: "

    goto :goto_a

    :cond_13
    const-string v4, "Ignoring region with unsupported origin: "

    :goto_a
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_14
    const-string v3, "Ignoring region without an origin"

    :goto_b
    const-string v4, "TtmlDecoder"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_3

    iget-object v3, v5, Landroidx/media3/extractor/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    move-object/from16 v6, p4

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_15
    move-object/from16 v6, p4

    const-string v3, "metadata"

    invoke-static {v0, v3}, Lcom/adobe/xmp/XMPUtils;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_16
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "image"

    invoke-static {v0, v5}, Lcom/adobe/xmp/XMPUtils;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v0, v4}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p5

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_17
    move-object/from16 v8, p5

    :goto_e
    invoke-static {v0, v3}, Lcom/adobe/xmp/XMPUtils;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_10

    :cond_18
    :goto_f
    move-object/from16 v8, p5

    :goto_10
    const-string v3, "head"

    invoke-static {v0, v3}, Lcom/adobe/xmp/XMPUtils;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :sswitch_data_0
    .sparse-switch
        0xe6e -> :sswitch_2
        0x363874 -> :sswitch_1
        0x363928 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseNode(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/HashMap;Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;)Landroidx/media3/extractor/text/ttml/TtmlNode;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p3

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v7

    const-string v4, ""

    move-object v10, v3

    move-object v13, v10

    move-object v12, v4

    const/4 v3, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    if-ge v3, v2, :cond_10

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v20

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v20, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "backgroundImage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_1
    const-string v5, "style"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    const-string v5, "begin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_3
    const-string v5, "end"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v8

    goto :goto_2

    :sswitch_4
    const-string v5, "dur"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v9

    goto :goto_2

    :sswitch_5
    const-string v5, "region"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eqz v4, :cond_e

    if-eq v4, v9, :cond_c

    if-eq v4, v8, :cond_b

    const/4 v5, 0x3

    if-eq v4, v5, :cond_a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_8

    const/4 v5, 0x5

    if-eq v4, v5, :cond_6

    goto :goto_3

    :cond_6
    const-string v4, "#"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :cond_7
    :goto_3
    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    const-string v6, "\\s+"

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    :goto_4
    array-length v6, v4

    if-lez v6, :cond_d

    move-object v10, v4

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    invoke-static {v6, v1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;)J

    move-result-wide v8

    move-wide v14, v8

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    invoke-static {v6, v1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;)J

    move-result-wide v8

    move-wide/from16 v16, v8

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    invoke-static {v6, v1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;)J

    move-result-wide v8

    move-wide/from16 v18, v8

    :cond_d
    :goto_5
    move-object/from16 v4, p2

    goto :goto_6

    :cond_e
    move-object/from16 v4, p2

    const/4 v5, 0x0

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    move-object v12, v6

    :cond_f
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_10
    if-eqz v11, :cond_12

    iget-wide v1, v11, Landroidx/media3/extractor/text/ttml/TtmlNode;->startTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_13

    cmp-long v5, v14, v3

    if-eqz v5, :cond_11

    add-long/2addr v14, v1

    :cond_11
    cmp-long v5, v16, v3

    if-eqz v5, :cond_13

    add-long v16, v16, v1

    goto :goto_7

    :cond_12
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :cond_13
    :goto_7
    cmp-long v1, v16, v3

    if-nez v1, :cond_15

    cmp-long v1, v18, v3

    if-eqz v1, :cond_14

    add-long v18, v14, v18

    move-wide/from16 v5, v18

    goto :goto_8

    :cond_14
    if-eqz v11, :cond_15

    iget-wide v1, v11, Landroidx/media3/extractor/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_15

    move-wide v5, v1

    goto :goto_8

    :cond_15
    move-wide/from16 v5, v16

    :goto_8
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v16, Landroidx/media3/extractor/text/ttml/TtmlNode;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-wide v3, v14

    move-object v8, v10

    move-object v9, v12

    move-object v10, v13

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlNode;)V

    return-object v16

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .locals 16

    move-object/from16 v1, p0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3c

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x2

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "multiRowAlign"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v6, 0xe

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "backgroundColor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v6, 0xd

    goto/16 :goto_2

    :sswitch_2
    const-string v7, "rubyPosition"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v6, 0xc

    goto/16 :goto_2

    :sswitch_3
    const-string v7, "textEmphasis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v6, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string v7, "fontSize"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v6, 0xa

    goto/16 :goto_2

    :sswitch_5
    const-string v7, "textCombine"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_6
    const-string v7, "shear"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v6, 0x8

    goto/16 :goto_2

    :sswitch_7
    const-string v7, "color"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string v7, "ruby"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x6

    goto :goto_2

    :sswitch_9
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    const/4 v6, 0x5

    goto :goto_2

    :sswitch_a
    const-string v7, "fontWeight"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_1

    :cond_a
    move v6, v9

    goto :goto_2

    :sswitch_b
    const-string v7, "textDecoration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_1

    :cond_b
    move v6, v10

    goto :goto_2

    :sswitch_c
    const-string v7, "textAlign"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_1

    :cond_c
    move v6, v13

    goto :goto_2

    :sswitch_d
    const-string v7, "fontFamily"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_1

    :cond_d
    move v6, v12

    goto :goto_2

    :sswitch_e
    const-string v7, "fontStyle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_1

    :cond_e
    move v6, v3

    goto :goto_2

    :goto_1
    move v6, v11

    :goto_2
    const-string v7, "after"

    const-string v14, "before"

    const-string v15, "none"

    const-string v8, "TtmlDecoder"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1b

    :pswitch_0
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    invoke-static {v5}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    goto/16 :goto_1b

    :pswitch_1
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    :try_start_0
    invoke-static {v5, v3}, Landroidx/media3/common/util/ColorParser;->parseColorInternal(Ljava/lang/String;Z)I

    move-result v6

    iput v6, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->backgroundColor:I

    iput-boolean v12, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->hasBackgroundColor:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1b

    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed parsing background value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_16

    :pswitch_2
    invoke-static {v5}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_1b

    :cond_f
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput v13, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    goto/16 :goto_1b

    :cond_10
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput v12, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    goto/16 :goto_1b

    :pswitch_3
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    sget-object v6, Landroidx/media3/extractor/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    if-nez v5, :cond_11

    goto :goto_3

    :cond_11
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    :goto_3
    const/4 v5, 0x0

    goto/16 :goto_13

    :cond_12
    sget-object v6, Landroidx/media3/extractor/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-eqz v6, :cond_14

    if-eq v6, v12, :cond_13

    array-length v6, v5

    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v6, v5}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    goto :goto_4

    :cond_13
    aget-object v5, v5, v3

    new-instance v6, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v6, v5}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    move-object v5, v6

    goto :goto_4

    :cond_14
    sget-object v5, Lcom/google/common/collect/RegularImmutableSet;->EMPTY:Lcom/google/common/collect/RegularImmutableSet;

    :goto_4
    sget-object v6, Landroidx/media3/extractor/text/ttml/TextEmphasis;->POSITION_VALUES:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v6, v5}, Lkotlin/jvm/JvmClassMappingKt;->intersection(Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/Sets$2;

    move-result-object v6

    new-instance v8, Lcom/google/common/collect/Sets$2$1;

    invoke-direct {v8, v6}, Lcom/google/common/collect/Sets$2$1;-><init>(Lcom/google/common/collect/Sets$2;)V

    invoke-virtual {v8}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v6

    const-string v9, "outside"

    if-eqz v6, :cond_15

    invoke-virtual {v8}, Lcom/google/common/collect/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    :cond_15
    move-object v6, v9

    :goto_5
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v13, -0x5305c081

    if-eq v8, v13, :cond_18

    const v13, -0x41ecca5b

    if-eq v8, v13, :cond_17

    const v9, 0x58705dc

    if-eq v8, v9, :cond_16

    goto :goto_6

    :cond_16
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    move v6, v3

    goto :goto_7

    :cond_17
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    move v6, v12

    goto :goto_7

    :cond_18
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    const/4 v6, 0x2

    goto :goto_7

    :cond_19
    :goto_6
    move v6, v11

    :goto_7
    if-eqz v6, :cond_1b

    if-eq v6, v12, :cond_1a

    move v6, v12

    goto :goto_8

    :cond_1a
    const/4 v6, -0x2

    goto :goto_8

    :cond_1b
    const/4 v6, 0x2

    :goto_8
    sget-object v7, Landroidx/media3/extractor/text/ttml/TextEmphasis;->SINGLE_STYLE_VALUES:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v7, v5}, Lkotlin/jvm/JvmClassMappingKt;->intersection(Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/Sets$2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/collect/Sets$2;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_20

    new-instance v5, Lcom/google/common/collect/Sets$2$1;

    invoke-direct {v5, v7}, Lcom/google/common/collect/Sets$2$1;-><init>(Lcom/google/common/collect/Sets$2;)V

    invoke-virtual {v5}, Lcom/google/common/collect/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x2dddaf

    if-eq v7, v8, :cond_1d

    const v8, 0x33af38

    if-eq v7, v8, :cond_1c

    goto :goto_9

    :cond_1c
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v12, v3

    goto :goto_a

    :cond_1d
    const-string v7, "auto"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_a

    :cond_1e
    :goto_9
    move v12, v11

    :goto_a
    if-eqz v12, :cond_1f

    goto :goto_b

    :cond_1f
    move v11, v3

    :goto_b
    new-instance v5, Landroidx/media3/extractor/text/ttml/TextEmphasis;

    invoke-direct {v5, v11, v3, v6}, Landroidx/media3/extractor/text/ttml/TextEmphasis;-><init>(III)V

    goto/16 :goto_13

    :cond_20
    sget-object v7, Landroidx/media3/extractor/text/ttml/TextEmphasis;->MARK_FILL_VALUES:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v7, v5}, Lkotlin/jvm/JvmClassMappingKt;->intersection(Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/Sets$2;

    move-result-object v7

    sget-object v8, Landroidx/media3/extractor/text/ttml/TextEmphasis;->MARK_SHAPE_VALUES:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v8, v5}, Lkotlin/jvm/JvmClassMappingKt;->intersection(Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/Sets$2;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/common/collect/Sets$2;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-virtual {v5}, Lcom/google/common/collect/Sets$2;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_21

    new-instance v5, Landroidx/media3/extractor/text/ttml/TextEmphasis;

    invoke-direct {v5, v11, v3, v6}, Landroidx/media3/extractor/text/ttml/TextEmphasis;-><init>(III)V

    goto/16 :goto_13

    :cond_21
    new-instance v8, Lcom/google/common/collect/Sets$2$1;

    invoke-direct {v8, v7}, Lcom/google/common/collect/Sets$2$1;-><init>(Lcom/google/common/collect/Sets$2;)V

    invoke-virtual {v8}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v7

    const-string v9, "filled"

    if-eqz v7, :cond_22

    invoke-virtual {v8}, Lcom/google/common/collect/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v7

    goto :goto_c

    :cond_22
    move-object v7, v9

    :goto_c
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v13, -0x4bf7529e

    if-eq v8, v13, :cond_24

    const v9, 0x34264a

    if-eq v8, v9, :cond_23

    goto :goto_d

    :cond_23
    const-string v8, "open"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    move v7, v3

    goto :goto_e

    :cond_24
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    move v7, v12

    goto :goto_e

    :cond_25
    :goto_d
    move v7, v11

    :goto_e
    if-eqz v7, :cond_26

    move v7, v12

    goto :goto_f

    :cond_26
    const/4 v7, 0x2

    :goto_f
    new-instance v8, Lcom/google/common/collect/Sets$2$1;

    invoke-direct {v8, v5}, Lcom/google/common/collect/Sets$2$1;-><init>(Lcom/google/common/collect/Sets$2;)V

    invoke-virtual {v8}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v5

    const-string v9, "circle"

    if-eqz v5, :cond_27

    invoke-virtual {v8}, Lcom/google/common/collect/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v5

    goto :goto_10

    :cond_27
    move-object v5, v9

    :goto_10
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v13, -0x51134330

    if-eq v8, v13, :cond_2a

    const v9, -0x35fdaa48    # -2135406.0f

    if-eq v8, v9, :cond_29

    const v9, 0x18549

    if-eq v8, v9, :cond_28

    goto :goto_11

    :cond_28
    const-string v8, "dot"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    move v11, v3

    goto :goto_11

    :cond_29
    const-string v8, "sesame"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    move v11, v12

    goto :goto_11

    :cond_2a
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v11, 0x2

    :cond_2b
    :goto_11
    if-eqz v11, :cond_2c

    if-eq v11, v12, :cond_2d

    move v10, v12

    goto :goto_12

    :cond_2c
    const/4 v10, 0x2

    :cond_2d
    :goto_12
    new-instance v5, Landroidx/media3/extractor/text/ttml/TextEmphasis;

    invoke-direct {v5, v10, v7, v6}, Landroidx/media3/extractor/text/ttml/TextEmphasis;-><init>(III)V

    :goto_13
    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textEmphasis:Landroidx/media3/extractor/text/ttml/TextEmphasis;

    goto/16 :goto_1b

    :pswitch_4
    :try_start_1
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseFontSize(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;)V
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1b

    :catch_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed parsing fontSize value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_16

    :pswitch_5
    invoke-static {v5}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto/16 :goto_1b

    :cond_2e
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput v3, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    goto/16 :goto_1b

    :cond_2f
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput v12, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    goto/16 :goto_1b

    :pswitch_6
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v6

    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Invalid value for shear: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_30
    :try_start_2
    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v7, -0x3d380000    # -100.0f

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_15

    :catch_2
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Failed to parse shear: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_15
    iput v0, v6, Landroidx/media3/extractor/text/ttml/TtmlStyle;->shearPercentage:F

    move-object v0, v6

    goto/16 :goto_1b

    :pswitch_7
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    :try_start_3
    invoke-static {v5, v3}, Landroidx/media3/common/util/ColorParser;->parseColorInternal(Ljava/lang/String;Z)I

    move-result v6

    iput v6, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontColor:I

    iput-boolean v12, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->hasFontColor:Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1b

    :catch_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed parsing color value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_8
    invoke-static {v5}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :goto_17
    move v8, v11

    goto :goto_18

    :sswitch_f
    const-string v6, "text"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    goto :goto_17

    :cond_31
    const/4 v8, 0x5

    goto :goto_18

    :sswitch_10
    const-string v6, "base"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    goto :goto_17

    :cond_32
    move v8, v9

    goto :goto_18

    :sswitch_11
    const-string v6, "textContainer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_17

    :cond_33
    move v8, v10

    goto :goto_18

    :sswitch_12
    const-string v6, "delimiter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    goto :goto_17

    :cond_34
    const/4 v8, 0x2

    goto :goto_18

    :sswitch_13
    const-string v6, "container"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_17

    :cond_35
    move v8, v12

    goto :goto_18

    :sswitch_14
    const-string v6, "baseContainer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_17

    :cond_36
    move v8, v3

    :goto_18
    packed-switch v8, :pswitch_data_1

    goto/16 :goto_1b

    :pswitch_9
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput v10, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    goto/16 :goto_1b

    :pswitch_a
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput v9, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    goto/16 :goto_1b

    :pswitch_b
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput v12, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    goto/16 :goto_1b

    :pswitch_c
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    const/4 v6, 0x2

    iput v6, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    goto/16 :goto_1b

    :pswitch_d
    const-string v6, "style"

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    goto/16 :goto_1b

    :pswitch_e
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    const-string v6, "bold"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->bold:I

    goto/16 :goto_1b

    :pswitch_f
    move v6, v13

    invoke-static {v5}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_2

    :goto_19
    move v10, v11

    goto :goto_1a

    :sswitch_15
    const-string v6, "linethrough"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_19

    :sswitch_16
    const-string v7, "nolinethrough"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_19

    :cond_37
    move v10, v6

    goto :goto_1a

    :sswitch_17
    const-string v6, "underline"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_19

    :cond_38
    move v10, v12

    goto :goto_1a

    :sswitch_18
    const-string v6, "nounderline"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_19

    :cond_39
    move v10, v3

    :cond_3a
    :goto_1a
    packed-switch v10, :pswitch_data_2

    goto :goto_1b

    :pswitch_10
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput v12, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    goto :goto_1b

    :pswitch_11
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput v3, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    goto :goto_1b

    :pswitch_12
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput v12, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->underline:I

    goto :goto_1b

    :pswitch_13
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput v3, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->underline:I

    goto :goto_1b

    :pswitch_14
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    invoke-static {v5}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    goto :goto_1b

    :pswitch_15
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    goto :goto_1b

    :pswitch_16
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    const-string v6, "italic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->italic:I

    :cond_3b
    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3c
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_e
        -0x48ff636d -> :sswitch_d
        -0x3f826a28 -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x24de7f50 -> :sswitch_14
        -0x187eb37f -> :sswitch_13
        -0xeee99f9 -> :sswitch_12
        -0x81c562c -> :sswitch_11
        0x2e06d1 -> :sswitch_10
        0x36452d -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_9
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_18
        -0x3d363934 -> :sswitch_17
        0x36723ff0 -> :sswitch_16
        0x641ec051 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public static parseTimeExpression(Ljava/lang/String;Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;)J
    .locals 13

    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0xe10

    mul-long/2addr v7, v9

    long-to-double v7, v7

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    long-to-double v9, v9

    add-double/2addr v7, v9

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-double v5, v5

    add-double/2addr v7, v5

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v9, v4

    :goto_0
    add-double/2addr v7, v9

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    div-float/2addr p0, v1

    float-to-double v9, p0

    goto :goto_1

    :cond_1
    move-wide v9, v4

    :goto_1
    add-double/2addr v7, v9

    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    int-to-double v4, p0

    div-double/2addr v0, v4

    iget p0, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    float-to-double p0, p0

    div-double v4, v0, p0

    :cond_2
    add-double/2addr v7, v4

    mul-double/2addr v7, v2

    double-to-long p0, v7

    return-wide p0

    :cond_3
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_1
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_2
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_4
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    goto :goto_4

    :pswitch_1
    iget p0, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    int-to-double p0, p0

    goto :goto_4

    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    goto :goto_3

    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    :goto_3
    mul-double/2addr v4, p0

    goto :goto_5

    :pswitch_4
    iget p0, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    float-to-double p0, p0

    :goto_4
    div-double/2addr v4, p0

    :goto_5
    mul-double/2addr v4, v2

    double-to-long p0, v4

    return-wide p0

    :cond_9
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v0, "Malformed time expression: "

    invoke-static {v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .locals 4

    const-string v0, "extent"

    invoke-static {p0, v0}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "Ignoring non-pixel tts extent: "

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v3, v2, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    const-string v1, "Ignoring malformed tts extent: "

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "TtmlDecoder"

    invoke-static {v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final decode(IZ[B)Landroidx/media3/extractor/text/Subtitle;
    .locals 22

    move-object/from16 v0, p0

    :try_start_0
    iget-object v0, v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v0, ""

    new-instance v1, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    const-string v12, ""

    const v13, -0x800001

    const v14, -0x800001

    const/high16 v15, -0x80000000

    const/high16 v16, -0x80000000

    const v17, -0x800001

    const v18, -0x800001

    const/high16 v19, -0x80000000

    const v20, -0x800001

    const/high16 v21, -0x80000000

    move-object v11, v1

    invoke-direct/range {v11 .. v21}, Landroidx/media3/extractor/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFFIFI)V

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v3, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v2, 0x0

    invoke-interface {v7, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayDeque;

    invoke-direct {v11}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    sget-object v3, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v12, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move v13, v1

    move-object v14, v2

    move-object v1, v12

    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_c

    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/text/ttml/TtmlNode;

    const/4 v6, 0x2

    if-nez v13, :cond_9

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "tt"

    if-ne v0, v6, :cond_5

    :try_start_2
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v7}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    move-result-object v3

    invoke-static {v7, v12}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/zxing/qrcode/decoder/Version$ECB;)Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    invoke-static {v7}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v2

    :cond_0
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object v6, v3

    invoke-static {v15}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->isSupportedTag(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v1, "TtmlDecoder"

    if-nez v0, :cond_1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unsupported tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    move-object v15, v6

    goto :goto_3

    :cond_1
    const-string v0, "head"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object v5, v9

    move-object v15, v6

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Lcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :cond_2
    move-object v15, v6

    :try_start_4
    invoke-static {v7, v4, v9, v15}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/HashMap;Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v4, :cond_4

    iget-object v2, v4, Landroidx/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Landroidx/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/ArrayList;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, v4, Landroidx/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :goto_2
    :try_start_5
    const-string v2, "Suppressing parser error"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v13, v13, 0x1

    :cond_4
    :goto_3
    move-object v3, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_4

    :cond_5
    const/4 v6, 0x4

    if-ne v0, v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    move-result-object v0

    iget-object v5, v4, Landroidx/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroidx/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/ArrayList;

    :cond_6
    iget-object v4, v4, Landroidx/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const/4 v4, 0x3

    if-ne v0, v4, :cond_b

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v14, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlNode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v14, v0, v8, v9, v10}, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;-><init>(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_4

    :cond_9
    if-ne v0, v6, :cond_a

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x3

    if-ne v0, v4, :cond_b

    add-int/lit8 v13, v13, -0x1

    :cond_b
    :goto_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    goto/16 :goto_0

    :cond_c
    if-eqz v14, :cond_d

    return-object v14

    :cond_d
    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v1, "No TTML subtitles found"

    invoke-direct {v0, v1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error when reading input."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v2, "Unable to decode source"

    invoke-direct {v1, v2, v0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
