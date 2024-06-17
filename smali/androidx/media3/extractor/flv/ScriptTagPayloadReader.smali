.class public final Landroidx/media3/extractor/flv/ScriptTagPayloadReader;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public durationUs:J

.field public keyFrameTagPositions:[J

.field public keyFrameTimesUs:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroidx/media3/extractor/DummyTrackOutput;

    invoke-direct {v0}, Landroidx/media3/extractor/DummyTrackOutput;-><init>()V

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    return-void
.end method

.method public static readAmfData(ILandroidx/media3/common/util/ParsableByteArray;)Ljava/io/Serializable;
    .locals 3

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v2, 0x3

    if-eq p0, v2, :cond_5

    const/16 v2, 0x8

    if-eq p0, v2, :cond_4

    const/16 v2, 0xa

    if-eq p0, v2, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-static {v2, p1}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfData(ILandroidx/media3/common/util/ParsableByteArray;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    invoke-static {p1}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_6
    :goto_1
    invoke-static {p1}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_7

    return-object p0

    :cond_7
    invoke-static {v1, p1}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfData(ILandroidx/media3/common/util/ParsableByteArray;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-static {p1}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    if-ne p0, v0, :cond_a

    goto :goto_2

    :cond_a
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static readAmfEcmaArray(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    invoke-static {v4, p0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfData(ILandroidx/media3/common/util/ParsableByteArray;)Ljava/io/Serializable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static readAmfString(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method


# virtual methods
.method public final parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final parsePayload(JLandroidx/media3/common/util/ParsableByteArray;)Z
    .locals 9

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    return v0

    :cond_0
    invoke-static {p3}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onMetaData"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget p1, p3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget p2, p3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr p1, p2

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_3

    return v0

    :cond_3
    invoke-static {p3}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Double;

    const-wide v1, 0x412e848000000000L    # 1000000.0

    if-eqz p3, :cond_4

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    const-wide/16 v3, 0x0

    cmpl-double v3, p2, v3

    if-lez v3, :cond_4

    mul-double/2addr p2, v1

    double-to-long p2, p2

    iput-wide p2, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    :cond_4
    const-string p2, "keyframes"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_6

    check-cast p1, Ljava/util/Map;

    const-string p2, "filepositions"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "times"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p2, Ljava/util/List;

    if-eqz p3, :cond_6

    instance-of p3, p1, Ljava/util/List;

    if-eqz p3, :cond_6

    check-cast p2, Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    new-array v3, p3, [J

    iput-object v3, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    new-array v3, p3, [J

    iput-object v3, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_5

    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    mul-double/2addr v7, v1

    double-to-long v7, v7

    aput-wide v7, v6, v3

    iget-object v5, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-array p1, v0, [J

    iput-object p1, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    new-array p1, v0, [J

    iput-object p1, p0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    :cond_6
    return v0
.end method
