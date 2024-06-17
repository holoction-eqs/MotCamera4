.class public final synthetic Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/device/CameraService;

.field public final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/CameraService;Landroid/util/Pair;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/device/CameraService;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$1:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$1:Landroid/util/Pair;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/device/CameraService;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
