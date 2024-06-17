.class public final Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;

    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;-><init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget p1, Lcom/motorola/camera/service/CameraForegroundProcessingService;->$r8$clinit:I

    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "CameraForegroundProcessingService"

    const-string v0, "initializeJni, Initializing JNI interface"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object v4

    if-eqz v4, :cond_a

    new-instance v5, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6}, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;-><init>(Ljava/lang/Object;I)V

    iput-object v5, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jniClient:Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    new-instance v5, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-direct {v5, p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v5, v2, v4}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->initialize(Ljava/lang/String;[B)I

    iget-object v2, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    const/4 v4, 0x0

    const-string v5, "postProcJni"

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cacheDir.absolutePath"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setCacheDir(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "filesDir.absolutePath"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setFilesDir(Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getBgServiceMlModels()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamite/zzo;->createModelResourcesList(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v6, :cond_7

    invoke-virtual {v6, v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setMlModelsList(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jniClient:Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    if-eqz v6, :cond_5

    invoke-virtual {v2, v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->addClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v10, :cond_4

    const-string v11, "logDd"

    invoke-static {v2, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setLogDDFlag(I)I

    if-eqz v6, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setLogADFlag(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz p0, :cond_3

    const-string v2, "mask0"

    invoke-static {v7, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "mask1"

    invoke-static {v8, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "mask2"

    invoke-static {v9, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setDebugDumpFlags(IIII)I

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "initializeJni, Jni Initialized: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_5
    const-string p0, "jniClient"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_7
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_8
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_9
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to initialize post processing for "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
