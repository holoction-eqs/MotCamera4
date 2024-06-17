.class public final synthetic Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 7

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    check-cast p1, Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->deviceIsTV:Z

    if-nez v1, :cond_7

    iget v1, p1, Landroidx/media3/common/Format;->channelCount:I

    const/4 v3, 0x2

    if-le v1, v3, :cond_7

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v3, v6

    goto :goto_1

    :sswitch_0
    const-string v3, "audio/eac3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "audio/ac4"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :sswitch_2
    const-string v3, "audio/ac3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :sswitch_3
    const-string v3, "audio/eac3-joc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    :cond_4
    :goto_1
    packed-switch v3, :pswitch_data_0

    :goto_2
    move v1, v4

    goto :goto_3

    :pswitch_0
    move v1, v2

    :goto_3
    const/16 v3, 0x20

    if-eqz v1, :cond_5

    :try_start_1
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v1, v3, :cond_7

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lcom/motorola/camera/JsonConfig$CameraMapping;

    if-eqz v1, :cond_7

    iget-boolean v1, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    if-eqz v1, :cond_7

    :cond_5
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v1, v3, :cond_6

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lcom/motorola/camera/JsonConfig$CameraMapping;

    if-eqz v1, :cond_6

    iget-boolean v3, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    if-eqz v3, :cond_6

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    check-cast v1, Landroid/media/Spatializer;

    invoke-static {v1}, Landroidx/media3/common/AudioAttributes$Api32$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/Spatializer;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lcom/motorola/camera/JsonConfig$CameraMapping;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    check-cast v1, Landroid/media/Spatializer;

    invoke-static {v1}, Landroidx/media3/common/AudioAttributes$Api32$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Spatializer;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lcom/motorola/camera/JsonConfig$CameraMapping;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v1, p0, p1}, Lcom/motorola/camera/JsonConfig$CameraMapping;->canBeSpatialized(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v4

    :cond_7
    :goto_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
