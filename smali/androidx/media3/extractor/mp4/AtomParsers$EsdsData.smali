.class public final Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bitrate:J

.field public initializationData:Ljava/lang/Object;

.field public mimeType:Ljava/lang/Object;

.field public peakBitrate:J


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/upstream/Allocation;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    iput-wide p5, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    return-void
.end method
