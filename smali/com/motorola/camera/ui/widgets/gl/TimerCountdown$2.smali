.class public final Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;
.super Lkotlin/ULong$Companion;
.source "SourceFile"


# instance fields
.field public mRemaining:I

.field public final mTotal:I

.field public final playTone:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    const/16 p1, 0x18

    invoke-direct {p0, p1}, Lkotlin/ULong$Companion;-><init>(I)V

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->mRemaining:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->mTotal:I

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->playTone:Z

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mCounterText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onAnimationRepeat()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->mRemaining:I

    div-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mCounterText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->playBeep()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onAnimationStart()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->mRemaining:I

    div-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mCounterText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mCounterText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->playBeep()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final playBeep()V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->playTone:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->mRemaining:I

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->mTotal:I

    const/16 v1, 0x1388

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->BEEP_TWICE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->BEEP_ONCE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/ui/SettingSoundPlayer;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->mRemaining:I

    add-int/lit16 v0, v0, -0x3e8

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;->mRemaining:I

    return-void
.end method
