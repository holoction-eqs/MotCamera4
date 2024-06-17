.class public final synthetic Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/MediaSourceList;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/MediaSourceList;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Landroidx/media3/exoplayer/source/BaseMediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceListInfoListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 p1, 0x16

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method
