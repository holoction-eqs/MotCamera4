.class public final Lcom/motorola/camera/utility/ColdStartHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/GetCharacteristicsListener;


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

.field public static final characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

.field public static cliDisplay:Z

.field public static realSize:Landroid/graphics/Point;

.field public static triggered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/utility/ColdStartHelper;

    invoke-direct {v0}, Lcom/motorola/camera/utility/ColdStartHelper;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/ColdStartHelper;->INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static final declared-synchronized onActivityCreate(Z)V
    .locals 3

    const-class v0, Lcom/motorola/camera/utility/ColdStartHelper;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/motorola/camera/utility/ColdStartHelper;->cliDisplay:Z

    sget-boolean p0, Lcom/motorola/camera/utility/ColdStartHelper;->triggered:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/utility/ColdStartHelper;->triggered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/Map;

    const/4 p0, 0x0

    sget-boolean v0, Lcom/motorola/camera/utility/ColdStartHelper;->cliDisplay:Z

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->realSize:Landroid/graphics/Point;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-boolean v1, Lcom/motorola/camera/utility/ColdStartHelper;->cliDisplay:Z

    invoke-static {p1, p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->processCharacteristics(Ljava/util/Map;Landroid/graphics/Point;Z)V

    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->processCharacteristicsStage2()V

    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object p0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/motorola/camera/CameraApp;->checkPendingMediaUri(Landroid/net/Uri;)Z

    return-void

    :cond_0
    const-string p0, "realSize"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 0

    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
