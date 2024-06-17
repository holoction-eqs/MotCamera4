.class public abstract Lcom/motorola/camera/ActivityBase;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field public mMainHandler:Landroid/os/Handler;

.field public final mOnResumeTasks:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

.field public mSkippedFirstOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ActivityBase;->mSkippedFirstOnResume:Z

    new-instance v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/ActivityBase;->mOnResumeTasks:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static getDisplayId(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "ActivityBase"

    const-string v1, "Unable to find display. Called too soon?"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ActivityBase;->configureBaseContextOverride(Landroid/content/Context;Landroid/content/res/Configuration;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public configureBaseContextOverride(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p1, p0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3f99999a    # 1.2f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    :goto_0
    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-static {p1}, Lmotorola/wrap/android/view/WindowManager_wrap;->getInitialDisplayDensity(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDefaultDisplayDensity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityBase"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1a4

    :goto_1
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v0, p0

    div-int/2addr v0, p1

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    return-void
.end method

.method public final finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/ActivityBase;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ActivityBase;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ActivityBase;->mOnResumeTasks:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ActivityBase;->mSkippedFirstOnResume:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->onPauseTasks()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPauseTasks()V
    .locals 0

    return-void
.end method

.method public final onPostResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ActivityBase;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ActivityBase;->mOnResumeTasks:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ActivityBase;->mSkippedFirstOnResume:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ActivityBase;->mSkippedFirstOnResume:Z

    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1e

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0xf

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ActivityBase;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ActivityBase;->mSkippedFirstOnResume:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->onResumeTasks()V

    :goto_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onResumeTasks()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
