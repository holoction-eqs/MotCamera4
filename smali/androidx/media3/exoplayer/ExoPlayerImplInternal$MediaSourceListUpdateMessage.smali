.class public final Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mediaSourceHolders:Ljava/util/List;

.field public final positionUs:J

.field public final shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iput p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    iput-wide p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J

    return-void
.end method
