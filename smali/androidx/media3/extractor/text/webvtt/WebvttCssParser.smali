.class public final Landroidx/media3/extractor/text/webvtt/WebvttCssParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FONT_SIZE_PATTERN:Ljava/util/regex/Pattern;

.field public static final VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final stringBuilder:Ljava/lang/StringBuilder;

.field public final styleInput:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->FONT_SIZE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static parseIdentifier(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    iget-object v3, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Landroidx/media3/common/util/ParsableByteArray;)V

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseIdentifier(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static skipWhitespaceAndComments(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 8

    const/4 v0, 0x1

    :cond_0
    :goto_0
    move v1, v0

    :goto_1
    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_6

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v3

    int-to-char v1, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move v1, v0

    :goto_2
    if-nez v1, :cond_0

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v5, v1, 0x2

    if-gt v5, v2, :cond_4

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v4, v1

    const/16 v6, 0x2f

    if-ne v1, v6, :cond_4

    add-int/lit8 v1, v5, 0x1

    aget-byte v5, v4, v5

    const/16 v7, 0x2a

    if-ne v5, v7, :cond_4

    :goto_3
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_3

    aget-byte v1, v4, v1

    int-to-char v1, v1

    if-ne v1, v7, :cond_2

    aget-byte v1, v4, v5

    int-to-char v1, v1

    if-ne v1, v6, :cond_2

    add-int/lit8 v2, v5, 0x1

    move v1, v2

    goto :goto_3

    :cond_2
    move v1, v5

    goto :goto_3

    :cond_3
    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    return-void
.end method
