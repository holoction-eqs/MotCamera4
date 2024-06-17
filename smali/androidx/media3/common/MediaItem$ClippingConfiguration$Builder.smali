.class public final Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public endPositionMs:J

.field public relativeToDefaultPosition:Z

.field public relativeToLiveWindow:Z

.field public startPositionMs:J

.field public startsAtKeyFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem$ClippingProperties;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->startPositionMs:J

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    iget-boolean v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    iget-boolean v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    iget-boolean p1, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iput-boolean p1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    return-void
.end method
