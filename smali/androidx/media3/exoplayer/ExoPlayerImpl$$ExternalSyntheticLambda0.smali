.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/media3/exoplayer/PlaybackInfo;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILandroidx/media3/exoplayer/PlaybackInfo;)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/PlaybackInfo;

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/PlaybackInfo;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-interface {p1, v1}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(I)V

    return-void

    :goto_0
    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    invoke-interface {p1, v1, p0}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
