.class public Lcom/motorola/camera/SecureCamera;
.super Lcom/motorola/camera/Camera;
.source "SourceFile"


# instance fields
.field public final mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/Camera;-><init>()V

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/SecureCamera$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/SecureCamera;->mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/motorola/camera/Camera;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_4

    :cond_1
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.motorola.bodyguard.ENTER_ALERT_MODE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/motorola/camera/SecureCamera;->mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {p0, v0, p1}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/Camera;->onDestroy()V

    iget-object v0, p0, Lcom/motorola/camera/SecureCamera;->mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {p0, v0}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/Controller;->windowHasFocus()V

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    :cond_1
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/motorola/camera/CameraApp;->mSecure:Z

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_2
    return-void
.end method
