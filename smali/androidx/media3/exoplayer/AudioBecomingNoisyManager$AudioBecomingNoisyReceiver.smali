.class public final Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final eventHandler:Landroid/os/Handler;

.field public final listener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field public final synthetic this$0:Lcom/google/android/gms/tasks/zzr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzr;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/gms/tasks/zzr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/gms/tasks/zzr;

    iget-boolean v0, v0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(IIZ)V

    :cond_0
    return-void
.end method
