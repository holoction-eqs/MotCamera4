.class public final Lcom/motorola/camera/CameraApp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/CameraApp;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraApp;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-static {p0, p2}, Lcom/motorola/camera/CameraApp;->-$$Nest$misObservedActivity(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mLatestWindow:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-static {p0, v0}, Lcom/motorola/camera/CameraApp;->-$$Nest$misObservedActivity(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mLatestWindow:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-static {p0, p1}, Lcom/motorola/camera/CameraApp;->-$$Nest$misObservedActivity(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    iput v0, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    :cond_0
    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mIsColdStart:Z

    :cond_1
    return-void
.end method

.method public final onActivityPreStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mUserMonkey:Ljava/lang/Boolean;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-static {p0, v0}, Lcom/motorola/camera/CameraApp;->-$$Nest$misObservedActivity(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->refreshFeatureList(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mLatestWindow:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-static {p0, p1}, Lcom/motorola/camera/CameraApp;->-$$Nest$misObservedActivity(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-static {p0, p1}, Lcom/motorola/camera/CameraApp;->-$$Nest$misObservedActivity(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    iput v1, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_STOP_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x5

    if-lt p1, v2, :cond_1

    move v1, v0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    if-gt p1, v2, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-ne p1, v2, :cond_3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.motorola.actions"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.motorola.actions.qc.FDN"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method
