.class public final Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final eventHandler:Landroid/os/Handler;

.field public final synthetic this$0:Landroidx/media3/exoplayer/AudioFocusManager;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/AudioFocusManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;->eventHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;->eventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
