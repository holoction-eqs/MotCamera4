.class public final Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final timeline:Landroidx/media3/common/Timeline;

.field public final windowIndex:I

.field public final windowPositionUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->timeline:Landroidx/media3/common/Timeline;

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    return-void
.end method
