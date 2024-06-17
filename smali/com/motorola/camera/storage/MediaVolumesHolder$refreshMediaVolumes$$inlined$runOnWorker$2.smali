.class public final Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $mediaVolume$inlined:Lcom/motorola/camera/storage/MediaVolume;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/storage/MediaVolume;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;->$mediaVolume$inlined:Lcom/motorola/camera/storage/MediaVolume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;->$mediaVolume$inlined:Lcom/motorola/camera/storage/MediaVolume;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->access$updateFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)V

    return-void

    :goto_0
    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->freeBytesUpdatedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".onFreeBytesUpdated("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v4, 0x11

    invoke-direct {v3, v4, v1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    throw p0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
