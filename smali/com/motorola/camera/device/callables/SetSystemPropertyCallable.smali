.class public final Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mKey:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CAMERA_SWITCH_MODE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v1}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mKey:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    iput-object p1, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mValue:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mKey:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    iget-object p0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSystemProperty:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "set"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SystemSetting"

    const-string v1, "setString error "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0, v2}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SetSystemPropertyCallable"

    return-object p0
.end method
