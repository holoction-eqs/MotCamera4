.class public final Landroidx/media3/exoplayer/StreamVolumeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final applicationContext:Ljava/lang/Object;

.field public final audioManager:Ljava/lang/Object;

.field public final eventHandler:Ljava/lang/Object;

.field public final listener:Ljava/lang/Object;

.field public muted:Z

.field public receiver:Ljava/lang/Object;

.field public streamType:I

.field public volume:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->applicationContext:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    iput p3, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    iget p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->eventHandler:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->listener:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Ljava/lang/Object;

    return-void
.end method

.method public static getVolumeFromManager(Landroid/media/AudioManager;I)I
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final setPressed(Z)V
    .locals 2

    iput-boolean p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->muted:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x101009e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->muted:Z

    if-eqz v0, :cond_0

    const v0, 0x10100a7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->applicationContext:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->eventHandler:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    return-void
.end method

.method public final updateVolumeAndNotifyIfChanged()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager;

    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/StreamVolumeManager;->getVolumeFromManager(Landroid/media/AudioManager;I)I

    move-result v1

    iget v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/StreamVolumeManager;->getVolumeFromManager(Landroid/media/AudioManager;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    if-ne v2, v1, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->muted:Z

    if-eq v2, v0, :cond_3

    :cond_2
    iput v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->muted:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->listener:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;-><init>(IZ)V

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_3
    return-void
.end method
