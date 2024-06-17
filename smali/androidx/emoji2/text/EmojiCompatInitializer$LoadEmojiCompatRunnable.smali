.class public final Landroidx/emoji2/text/EmojiCompatInitializer$LoadEmojiCompatRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/emoji2/text/EmojiCompatInitializer$LoadEmojiCompatRunnable;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget p0, p0, Landroidx/emoji2/text/EmojiCompatInitializer$LoadEmojiCompatRunnable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    return-void

    :pswitch_1
    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->access$refreshMediaVolumes(Lcom/motorola/camera/storage/MediaVolumesHolder;)V

    return-void

    :pswitch_2
    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->access$refreshMediaVolumes(Lcom/motorola/camera/storage/MediaVolumesHolder;)V

    return-void

    :pswitch_3
    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumesChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".onMediaVolumesChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0}, Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;->onMediaVolumesChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    throw p0

    :cond_0
    return-void

    :pswitch_4
    :try_start_1
    const-string p0, "EmojiCompat.EmojiCompatInitializer.run"

    invoke-static {p0}, Landroidx/core/os/TraceCompat$Api18Impl;->beginSection(Ljava/lang/String;)V

    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    throw p0

    :goto_1
    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    const-string v0, "mediaVolumes"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/storage/MediaVolume;

    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    const-string v1, "mediaVolume"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->access$updateFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)V

    goto :goto_2

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
