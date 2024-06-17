.class public final Lcom/motorola/camera/voice/CameraVoiceActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/voice/CameraVoiceActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "Companion",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget v1, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sget-object v1, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    if-ne p0, v1, :cond_1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v4, "DisplayMetricsHelper"

    const-string v5, "updateMainDisplaySize, wrong context being used."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-static {p0, v3}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    invoke-static {v0}, Lcom/motorola/camera/utility/ColdStartHelper;->onActivityCreate(Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    const-class v1, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    const-class v4, Lcom/motorola/camera/Camera;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/CaptureIntent;->INTENT_INLINE:Landroid/content/Intent;

    const-string v6, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x1ba9c1af

    if-eq v5, v6, :cond_b

    const v6, 0x1cf71807

    if-eq v5, v6, :cond_7

    const v0, 0x43680478

    if-eq v5, v0, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_7
    const-string v5, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_a

    :cond_9
    const-string v0, "motorola.camera.intent.action.VIDEO_CAPTURE"

    goto :goto_4

    :cond_a
    const-string v0, "motorola.camera.intent.action.IMAGE_CAPTURE_SECURE"

    goto :goto_4

    :cond_b
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "motorola.camera.intent.action.IMAGE_CAPTURE"

    goto :goto_4

    :cond_c
    :goto_3
    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_e

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p1, :cond_d

    const-string v2, "com.motorola.camera.LaunchActionCli"

    goto :goto_5

    :cond_d
    const-string v2, "com.motorola.camera.LaunchAction"

    :goto_5
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/voice/CameraVoiceActivity;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_7

    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p1, :cond_f

    goto :goto_6

    :cond_f
    move-object v1, v4

    :goto_6
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/voice/CameraVoiceActivity;->startActivity(Landroid/content/Intent;Z)V

    :goto_7
    invoke-virtual {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object p0

    new-instance p1, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    invoke-direct {p1, v3, v3}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_9

    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p1, :cond_11

    goto :goto_8

    :cond_11
    move-object v1, v4

    :goto_8
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/voice/CameraVoiceActivity;->startActivity(Landroid/content/Intent;Z)V

    :goto_9
    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;Z)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz p2, :cond_0

    sget p2, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    :cond_0
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
