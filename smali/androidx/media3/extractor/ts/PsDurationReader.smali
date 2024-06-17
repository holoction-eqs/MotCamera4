.class public final Landroidx/media3/extractor/ts/PsDurationReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public durationUs:J

.field public firstScrValue:J

.field public isDurationRead:Z

.field public isFirstScrValueRead:Z

.field public isLastScrValueRead:Z

.field public lastScrValue:J

.field public final packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public final scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method

.method public static peekIntAtPosition([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    sub-int/2addr v2, v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v5, 0x9

    if-ge v2, v5, :cond_0

    return-wide v3

    :cond_0
    new-array v2, v5, [B

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    aget-byte v0, v2, v6

    and-int/lit16 v1, v0, 0xc4

    const/16 v5, 0x44

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eq v1, v5, :cond_1

    goto :goto_0

    :cond_1
    aget-byte v1, v2, v11

    and-int/2addr v1, v10

    if-eq v1, v10, :cond_2

    goto :goto_0

    :cond_2
    aget-byte v1, v2, v10

    and-int/2addr v1, v10

    if-eq v1, v10, :cond_3

    goto :goto_0

    :cond_3
    aget-byte v1, v2, v9

    and-int/2addr v1, v8

    if-eq v1, v8, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    aget-byte v1, v2, v1

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_5

    move v6, v8

    :cond_5
    :goto_0
    if-nez v6, :cond_6

    return-wide v3

    :cond_6
    int-to-long v0, v0

    const-wide/16 v3, 0x38

    and-long/2addr v3, v0

    shr-long/2addr v3, v7

    const/16 v5, 0x1e

    shl-long/2addr v3, v5

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    const/16 v12, 0x1c

    shl-long/2addr v0, v12

    or-long/2addr v0, v3

    aget-byte v3, v2, v8

    int-to-long v3, v3

    const-wide/16 v12, 0xff

    and-long/2addr v3, v12

    const/16 v8, 0x14

    shl-long/2addr v3, v8

    or-long/2addr v0, v3

    aget-byte v3, v2, v11

    int-to-long v3, v3

    const-wide/16 v14, 0xf8

    and-long v16, v3, v14

    shr-long v16, v16, v7

    const/16 v8, 0xf

    shl-long v16, v16, v8

    or-long v0, v0, v16

    and-long/2addr v3, v5

    const/16 v5, 0xd

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    aget-byte v3, v2, v7

    int-to-long v3, v3

    and-long/2addr v3, v12

    shl-long/2addr v3, v9

    or-long/2addr v0, v3

    aget-byte v2, v2, v10

    int-to-long v2, v2

    and-long/2addr v2, v14

    shr-long/2addr v2, v7

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3

    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iget-object v1, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isDurationRead:Z

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method
