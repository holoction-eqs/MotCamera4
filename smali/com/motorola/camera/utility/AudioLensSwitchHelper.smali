.class public final Lcom/motorola/camera/utility/AudioLensSwitchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAudioLensStateCallback:Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mAudioRadarManager:Ljava/lang/Class;

.field public mAudioRadarMangerInstance:Ljava/lang/Object;

.field public mProxy:Ljava/lang/Object;

.field public mRegisterCallback:Ljava/lang/reflect/Method;

.field public munRegisterCallback:Ljava/lang/reflect/Method;


# virtual methods
.method public final initAudioLensSwitch(Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;)Z
    .locals 7

    const-string v0, "com.motorola.audio.radar.AudioRadarManager"

    invoke-static {v0}, Lkotlin/io/ExceptionsKt;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    const-string v1, "AudioLensSwitchHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Can\'t find AudioRadarManager class"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v0, "com.motorola.audio.radar.AudioRadarManager$AudioRadarFWCallback"

    invoke-static {v0}, Lkotlin/io/ExceptionsKt;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Can\'t find AudioRadarFWCallback interface"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;

    new-instance p1, Lcom/motorola/camera/utility/AudioLensSwitchHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/utility/AudioLensSwitchHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    invoke-static {v3, v5, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    const-string v3, "registerCallback"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    aput-object v6, v5, v2

    invoke-virtual {p1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    const-string v3, "unregisterCallback"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "audio_radar=1"

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    return v4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public final stopAudioLensSwitch()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->onStatus(I)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;

    iget-object v2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "audio_radar=0"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AudioLensSwitchHelper"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method
