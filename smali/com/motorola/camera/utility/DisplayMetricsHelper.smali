.class public abstract Lcom/motorola/camera/utility/DisplayMetricsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mMainDisplaySize:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget p1, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v1

    :goto_1
    const/4 p0, 0x1

    if-eq v1, p0, :cond_2

    const/4 p0, 0x3

    if-ne v1, p0, :cond_3

    :cond_2
    new-instance p0, Landroid/graphics/Point;

    iget p1, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, p0

    :cond_3
    return-object v0
.end method

.method public static getMainDisplayRealSize()Landroid/graphics/Point;
    .locals 2

    sget-object v0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "DisplayMetricsHelper"

    const-string v1, "Main display size not initialized yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method public static getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isInMultiWindowModeForSystemApp"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "DisplayMetricsHelper"

    const-string v5, "Unable to invoke method isInMultiWindowModeForSystemApp"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p1, v1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr p0, v0

    sub-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, v1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    if-nez p1, :cond_1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p0, :cond_1

    iget p0, v1, Landroid/graphics/Point;->x:I

    iget p1, v1, Landroid/graphics/Point;->y:I

    if-le p0, p1, :cond_1

    new-instance p0, Landroid/graphics/Point;

    iget p1, v1, Landroid/graphics/Point;->y:I

    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, p0

    :cond_1
    :goto_1
    return-object v1
.end method
