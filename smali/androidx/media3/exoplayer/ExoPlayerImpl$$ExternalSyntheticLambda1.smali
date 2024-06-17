.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroidx/media3/common/Bundleable;


# direct methods
.method public synthetic constructor <init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$2:Landroidx/media3/common/Bundleable;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$2:Landroidx/media3/common/Bundleable;

    iput p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Player$PositionInfo;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$2:Landroidx/media3/common/Bundleable;

    check-cast v1, Landroidx/media3/common/Player$PositionInfo;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$0:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(I)V

    invoke-interface {p1, p0, v0, v1}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    return-void

    :goto_0
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
