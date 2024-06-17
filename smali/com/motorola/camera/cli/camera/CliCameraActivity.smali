.class public Lcom/motorola/camera/cli/camera/CliCameraActivity;
.super Lcom/motorola/camera/SecureCamera;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/cli/camera/CliCameraActivity;",
        "Lcom/motorola/camera/SecureCamera;",
        "<init>",
        "()V",
        "_COROUTINE/ArtificialStackFrames",
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
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/SecureCamera;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/camera/SecureCamera;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x21

    invoke-static {p1}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lmotorola/core_services/cli/CLIManager;->getInstance(Landroid/content/Context;)Lmotorola/core_services/cli/CLIManager;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmotorola/core_services/cli/CLIManager;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/motorola/camera/SecureCamera;->onDestroy()V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    if-ne v2, v3, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    :cond_1
    return-void
.end method

.method public final onLaunchStarted()Z
    .locals 1

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/motorola/camera/Camera;->onStart()V

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->Companion:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;->getInstance$com$motorola$camera$utility$SingletonHolder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/cli/util/WakeLockHelper;

    iget-object v0, v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->mMainWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowOnLockScreen(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_2
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/Camera;->onStop()V

    sget-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->Companion:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;->getInstance$com$motorola$camera$utility$SingletonHolder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cli/util/WakeLockHelper;

    iget-object p0, p0, Lcom/motorola/camera/cli/util/WakeLockHelper;->mMainWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method
