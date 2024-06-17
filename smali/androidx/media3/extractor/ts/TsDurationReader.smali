.class public final Landroidx/media3/extractor/ts/TsDurationReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public durationUs:J

.field public firstPcrValue:J

.field public isDurationRead:Z

.field public isFirstPcrValueRead:Z

.field public isLastPcrValueRead:Z

.field public lastPcrValue:J

.field public final packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public final pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

.field public final timestampSearchBytes:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b8a0

    iput v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->firstPcrValue:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3

    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iget-object v1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isDurationRead:Z

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method
