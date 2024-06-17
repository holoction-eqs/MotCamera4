.class public final Landroidx/media3/exoplayer/AudioFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public audioFocusRequest:Landroid/media/AudioFocusRequest;

.field public audioFocusState:I

.field public final audioManager:Landroid/media/AudioManager;

.field public focusGainToRequest:I

.field public final focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

.field public playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

.field public volumeMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    new-instance p1, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;-><init>(Landroidx/media3/exoplayer/AudioFocusManager;Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    return-void
.end method


# virtual methods
.method public final abandonAudioFocusIfHeld()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    iget-object v2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return-void
.end method

.method public final executePlayerCommand(I)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    if-eqz p0, :cond_1

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(IIZ)V

    :cond_1
    return-void
.end method

.method public final setAudioAttributes()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    :cond_0
    return-void
.end method

.method public final setAudioFocusState(I)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    if-eqz p0, :cond_3

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    iget v0, v0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(Ljava/lang/Object;II)V

    :cond_3
    return-void
.end method

.method public final updateAudioFocus(IZ)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    iget p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    const/4 v2, -0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :cond_3
    if-eqz p2, :cond_c

    iget p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    if-ne p1, v1, :cond_4

    goto/16 :goto_8

    :cond_4
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x1a

    iget-object v3, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    iget-object v4, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    if-lt p1, p2, :cond_9

    iget-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    if-nez p1, :cond_6

    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    iget p2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    invoke-direct {p1, p2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_3

    :cond_6
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    iget-object p2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-direct {p1, p2}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    :goto_3
    iget-object p2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    if-eqz p2, :cond_7

    iget v5, p2, Landroidx/media3/common/AudioAttributes;->contentType:I

    if-ne v5, v1, :cond_7

    move v5, v1

    goto :goto_4

    :cond_7
    move v5, v0

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p2, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Lcom/adobe/xmp/impl/xpath/XMPPath;

    if-nez v6, :cond_8

    new-instance v6, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {v6, p2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(Landroidx/media3/common/AudioAttributes;I)V

    iput-object v6, p2, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Lcom/adobe/xmp/impl/xpath/XMPPath;

    :cond_8
    iget-object p2, p2, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Lcom/adobe/xmp/impl/xpath/XMPPath;

    iget-object p2, p2, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast p2, Landroid/media/AudioAttributes;

    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    :goto_5
    iget-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    goto :goto_7

    :cond_9
    iget-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0xd

    iget p1, p1, Landroidx/media3/common/AudioAttributes;->usage:I

    if-eq p1, p2, :cond_a

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x3

    goto :goto_6

    :pswitch_0
    const/4 p1, 0x2

    goto :goto_6

    :pswitch_1
    const/4 p1, 0x5

    goto :goto_6

    :pswitch_2
    const/4 p1, 0x4

    goto :goto_6

    :pswitch_3
    const/16 p1, 0x8

    goto :goto_6

    :pswitch_4
    move p1, v0

    goto :goto_6

    :cond_a
    move p1, v1

    :goto_6
    iget p2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    invoke-virtual {v4, v3, p1, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    :goto_7
    if-ne p1, v1, :cond_b

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    goto :goto_8

    :cond_b
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    move v1, v2

    :goto_8
    move v2, v1

    :cond_c
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
