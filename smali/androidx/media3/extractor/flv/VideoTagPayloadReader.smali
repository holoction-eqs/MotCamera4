.class public final Landroidx/media3/extractor/flv/VideoTagPayloadReader;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public frameType:I

.field public hasOutputFormat:Z

.field public hasOutputKeyframe:Z

.field public final nalLength:Landroidx/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field public nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iput v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    const-string v0, "Video format not supported: "

    invoke-static {v0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final parsePayload(JLandroidx/media3/common/util/ParsableByteArray;)Z
    .locals 11

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iget-object v1, p3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, p3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    add-long v4, v1, p1

    const/4 p1, 0x1

    iget-object p2, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v2, :cond_0

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget v2, p3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, p3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v3, p3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v4, p3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v3, v4

    invoke-virtual {p3, v1, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v0}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object p3

    iget v0, p3, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v2, "video/avc"

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget-object v2, p3, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget v2, p3, Landroidx/media3/extractor/AvcConfig;->width:I

    iput v2, v0, Landroidx/media3/common/Format$Builder;->width:I

    iget v2, p3, Landroidx/media3/extractor/AvcConfig;->height:I

    iput v2, v0, Landroidx/media3/common/Format$Builder;->height:I

    iget v2, p3, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    iput v2, v0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    iget-object p3, p3, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    iput-object p3, v0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance p3, Landroidx/media3/common/Format;

    invoke-direct {p3, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    check-cast p2, Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p2, p3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iput-boolean p1, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    return v1

    :cond_0
    if-ne v0, p1, :cond_4

    iget-boolean v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->frameType:I

    if-ne v0, p1, :cond_1

    move v6, p1

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    iget-boolean v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aput-byte v1, v2, v1

    aput-byte v1, v2, p1

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    iget v2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const/4 v3, 0x4

    rsub-int/lit8 v2, v2, 0x4

    move v7, v1

    :goto_1
    iget v8, p3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v9, p3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v8, v9

    if-lez v8, :cond_3

    iget-object v8, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v9, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {p3, v2, v9, v8}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    iget-object v9, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v9, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move-object v10, p2

    check-cast v10, Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v10, v3, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    add-int/lit8 v7, v7, 0x4

    invoke-interface {v10, v8, p3}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    add-int/2addr v7, v8

    goto :goto_1

    :cond_3
    move-object v3, p2

    check-cast v3, Landroidx/media3/extractor/TrackOutput;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput-boolean p1, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    return p1

    :cond_4
    return v1
.end method
