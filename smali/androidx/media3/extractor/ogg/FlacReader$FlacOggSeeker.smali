.class public final Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ogg/OggSeeker;


# instance fields
.field public firstFrameOffset:J

.field public pendingSeekGranule:J

.field public final seekTable:Lcom/airbnb/lottie/model/MutablePair;

.field public final streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;Lcom/airbnb/lottie/model/MutablePair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iput-object p2, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->seekTable:Lcom/airbnb/lottie/model/MutablePair;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-void
.end method


# virtual methods
.method public final createSeekMap()Landroidx/media3/extractor/SeekMap;
    .locals 5

    iget-wide v0, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    new-instance v0, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-object v2, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-wide v3, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    invoke-direct {v0, v2, v1, v3, v4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(Ljava/lang/Object;IJ)V

    return-object v0
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final startSeek(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->seekTable:Lcom/airbnb/lottie/model/MutablePair;

    iget-object v0, v0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-void
.end method
