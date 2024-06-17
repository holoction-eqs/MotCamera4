.class public final Landroidx/media3/extractor/ogg/OpusReader;
.super Landroidx/media3/extractor/ogg/StreamReader;
.source "SourceFile"


# static fields
.field public static final OPUS_COMMENT_HEADER_SIGNATURE:[B

.field public static final OPUS_ID_HEADER_SIGNATURE:[B


# instance fields
.field public firstCommentHeaderSeen:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public static peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z
    .locals 4

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    array-length v2, p1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    return v3

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    array-length v2, p1

    invoke-virtual {p0, v3, v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final preparePayload(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 4

    iget-object p1, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-byte v0, p1, v3

    :cond_0
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getPacketDurationUs(BB)J

    move-result-wide v0

    iget p0, p0, Landroidx/media3/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long p0, p0

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public final readHeaders(Landroidx/media3/common/util/ParsableByteArray;JLcom/motorola/camera/CameraKpi;)Z
    .locals 1

    sget-object p2, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    invoke-static {p1, p2}, Landroidx/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    iget-object p0, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget p1, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/16 p1, 0x9

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p0}, Landroidx/room/util/DBUtil;->buildInitializationData([B)Ljava/util/ArrayList;

    move-result-object p0

    iget-object p2, p4, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/common/Format;

    if-eqz p2, :cond_0

    return p3

    :cond_0
    new-instance p2, Landroidx/media3/common/Format$Builder;

    invoke-direct {p2}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v0, "audio/opus"

    iput-object v0, p2, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput p1, p2, Landroidx/media3/common/Format$Builder;->channelCount:I

    const p1, 0xbb80

    iput p1, p2, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput-object p0, p2, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, p2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    goto :goto_1

    :cond_1
    sget-object p2, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    invoke-static {p1, p2}, Landroidx/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p4, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/common/Format;

    invoke-static {p2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-boolean p2, p0, Landroidx/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    if-eqz p2, :cond_2

    return p3

    :cond_2
    iput-boolean p3, p0, Landroidx/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p1, v0, v0}, Lcom/adobe/xmp/XMPUtils;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Lcom/adobe/xmp/impl/ByteBuffer;

    move-result-object p0

    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object p0

    if-nez p0, :cond_3

    return p3

    :cond_3
    iget-object p1, p4, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/media3/common/Format$Builder;

    invoke-direct {p2, p1}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    iget-object p1, p4, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p1, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    invoke-virtual {p0, p1}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object p0

    :goto_0
    iput-object p0, p2, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, p2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    :goto_1
    iput-object p0, p4, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    return p3

    :cond_5
    iget-object p0, p4, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Format;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    return v0
.end method

.method public final reset(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    :cond_0
    return-void
.end method
