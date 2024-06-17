.class public final Lcom/motorola/camera/device/CameraService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceEventListener;
.implements Landroidx/media3/exoplayer/drm/DrmSessionEventListener;
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;
.implements Landroidx/work/multiprocess/RemoteDispatcher;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public mCameraStateManager:Ljava/lang/Object;

.field public mServiceHandler:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/motorola/camera/device/CameraHandlerThread;

    invoke-direct {p1}, Lcom/motorola/camera/device/CameraHandlerThread;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    new-instance p1, Lcom/motorola/camera/device/CameraStateManager;

    invoke-direct {p1}, Lcom/motorola/camera/device/CameraStateManager;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    new-instance p1, Ljava/io/DataOutputStream;

    iget-object v0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {v0}, Landroidx/recyclerview/widget/OpReorderer;-><init>()V

    const-string v1, "mlkit:vision"

    .line 4
    iput-object v1, v0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    .line 5
    new-instance v1, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    iget-object v0, v0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/google/android/gms/common/internal/service/zao;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/internal/service/zao;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;)V

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/ts/TsExtractor;)V
    .locals 3

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/Worker$2;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Landroidx/work/WorkQuery;)V
    .locals 1

    .line 13
    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    return-void
.end method

.method public static capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;Landroid/os/Handler;)V
    .locals 9

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v8, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object v1, v0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/os/Handler;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/device/callables/CaptureRequestCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static createCaptureRequests(Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v1, Lcom/motorola/camera/device/callables/CreateCaptureRequestsCallable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/motorola/camera/device/callables/CreateCaptureRequestsCallable;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;
    .locals 1

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    iget-object v0, v0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    return-object v0
.end method

.method public static mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v1, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    invoke-direct {v1, p0}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Lcom/motorola/camera/mcf/McfParameters;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/motorola/camera/device/CameraService;
    .locals 12

    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Lokio/ByteString;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_7

    aget-object v4, p0, v3

    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v6, 0x22

    invoke-virtual {v1, v6}, Lokio/Buffer;->writeByte(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    move v8, v2

    move v9, v8

    :goto_1
    if-ge v8, v7, :cond_5

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x80

    if-ge v10, v11, :cond_0

    aget-object v10, v5, v10

    if-nez v10, :cond_2

    goto :goto_3

    :cond_0
    const/16 v11, 0x2028

    if-ne v10, v11, :cond_1

    const-string v10, "\\u2028"

    goto :goto_2

    :cond_1
    const/16 v11, 0x2029

    if-ne v10, v11, :cond_4

    const-string v10, "\\u2029"

    :cond_2
    :goto_2
    if-ge v9, v8, :cond_3

    invoke-virtual {v1, v9, v8, v4}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v2, v9, v10}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    add-int/lit8 v9, v8, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    if-ge v9, v7, :cond_6

    invoke-virtual {v1, v9, v7, v4}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    :cond_6
    invoke-virtual {v1, v6}, Lokio/Buffer;->writeByte(I)V

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    new-instance v4, Lokio/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-wide v5, v1, Lokio/Buffer;->size:J

    invoke-virtual {v1, v5, v6}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {v4, v5}, Lokio/ByteString;-><init>([B)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_7
    new-instance v1, Lcom/motorola/camera/device/CameraService;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0}, Lokio/Options;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/device/CameraService;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/airbnb/lottie/model/MutablePair;Landroid/os/Handler;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v7, Lcom/motorola/camera/device/callables/OpenCameraCallable;

    iget-object v1, v0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/os/Handler;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/device/callables/OpenCameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/airbnb/lottie/model/MutablePair;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static setRepeatingBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V
    .locals 9

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v8, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object v1, v0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/os/Handler;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V
    .locals 9

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v8, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    iget-object v1, v0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/os/Handler;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v1, Lcom/motorola/camera/device/callables/StopRepeatingRequestCallable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/motorola/camera/device/callables/StopRepeatingRequestCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/google/android/gms/common/internal/GmsClient;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p0, Lcom/google/android/gms/common/moduleinstall/internal/zav;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/moduleinstall/internal/zav;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/internal/base/zaa;->zab:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p0, 0x6

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final construct()Ljava/lang/Object;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/google/gson/internal/UnsafeAllocator;->INSTANCE:Lcom/google/gson/internal/UnsafeAllocator;

    iget-object v1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/common/ColorInfo$Builder;

    iget-object v5, v4, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    invoke-virtual {p1, v2, v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v4, v2}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    iget-object v4, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/common/ColorInfo$Builder;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/common/ColorInfo$Builder;

    invoke-virtual {v4, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/common/ColorInfo$Builder;

    invoke-virtual {v4, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/extractor/ts/TsExtractor;

    iget-object v5, v5, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/extractor/ts/TsExtractor;

    iget-object v6, v5, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v7, Landroidx/media3/extractor/ts/SectionReader;

    new-instance v8, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;

    invoke-direct {v8, v5, v4}, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;-><init>(Landroidx/media3/extractor/ts/TsExtractor;I)V

    invoke-direct {v7, v8}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/ts/TsExtractor;

    iget v5, v4, Landroidx/media3/extractor/ts/TsExtractor;->remainingPmts:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/media3/extractor/ts/TsExtractor;->remainingPmts:I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ts/TsExtractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final deserializeAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;
    .locals 10

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;->id_:I

    invoke-static {p2, v0}, Lkotlin/text/UStringsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    iget-object v2, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v2, Landroidx/work/WorkQuery;

    invoke-static {v1, v0, v2}, Lkotlin/reflect/jvm/KCallablesJvm;->findNonGenericClassAcrossDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Landroidx/work/WorkQuery;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;->argument_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isKindOf(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getConstructors()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "annotationClass.constructors"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->singleOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    if-eqz v2, :cond_7

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getValueParameters()Ljava/util/List;

    move-result-object v1

    const-string v2, "constructor.valueParameters"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Ljms/IJobMgrService$_Parcel;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;->argument_:Ljava/util/List;

    const-string v1, "proto.argumentList"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->nameId_:I

    invoke-static {p2, v4}, Lkotlin/text/UStringsKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v6, Lkotlin/Pair;

    iget v7, v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->nameId_:I

    invoke-static {p2, v7}, Lkotlin/text/UStringsKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    const-string v8, "parameter.type"

    invoke-static {v4, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->value_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    const-string v8, "proto.value"

    invoke-static {v2, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2, p2}, Lcom/motorola/camera/device/CameraService;->resolveValue(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    move-result-object v8

    invoke-virtual {p0, v8, v4, v2}, Lcom/motorola/camera/device/CameraService;->doesValueConformToExpectedType(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v5, v8

    :cond_4
    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected argument value: actual type "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->type_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " != expected type "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "message"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ErrorValue$ErrorValueWithMessage;

    invoke-direct {v5, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ErrorValue$ErrorValueWithMessage;-><init>(Ljava/lang/String;)V

    :cond_5
    invoke-direct {v6, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/collections/MapsKt___MapsJvmKt;->toMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v1

    :cond_7
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1;

    invoke-direct {p0, p1, v1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    return-object p0
.end method

.method public final doesValueConformToExpectedType(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;)Z
    .locals 6

    iget-object v0, p3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->type_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationDeserializer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eq v0, v3, :cond_6

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->getType(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_4

    :cond_1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ArrayValue;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ArrayValue;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->arrayElement_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v0

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayElementType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ArrayValue;

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lkotlin/ranges/IntRange;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {v3, v2, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    instance-of v0, v3, Ljava/util/Collection;

    if-eqz v0, :cond_3

    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v0

    :cond_4
    iget-boolean v1, v0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v1

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    iget-object v5, p3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->arrayElement_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    const-string v5, "value.getArrayElement(i)"

    invoke-static {v1, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p2, v1}, Lcom/motorola/camera/device/CameraService;->doesValueConformToExpectedType(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Deserialized ArrayValue should have the same number of elements as the original array value: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz p1, :cond_7

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_2

    :cond_7
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_8

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->BUILTINS_MODULE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kClass:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->classFqNameEquals(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    :goto_3
    move v2, v4

    :cond_9
    :goto_4
    return v2
.end method

.method public final execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteCallback;)V
    .locals 1

    check-cast p1, Landroidx/work/multiprocess/IWorkManagerImpl;

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Landroidx/work/WorkContinuation;

    check-cast p0, Landroidx/work/impl/WorkContinuationImpl;

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    invoke-direct {v0, p0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;-><init>(Landroidx/work/impl/WorkContinuationImpl;)V

    invoke-static {v0}, Lokio/SegmentPool;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    invoke-interface {p1, p2, p0}, Landroidx/work/multiprocess/IWorkManagerImpl;->enqueueContinuation(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V

    return-void
.end method

.method public final getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iget-wide v5, p2, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    sget v2, Landroidx/media3/exoplayer/PlaylistTimeline;->$r8$clinit:I

    iget-object v2, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_1
    if-nez p2, :cond_2

    return-object v0

    :cond_2
    move-object v0, p2

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget p0, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getLongValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public final init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 0

    return-void
.end method

.method public final insertPreference(Landroidx/work/impl/model/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v0, Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p1
.end method

.method public final onCancel()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Landroidx/transition/Transition;

    invoke-virtual {p0}, Landroidx/transition/Transition;->cancel()V

    return-void
.end method

.method public final onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p2, p2, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1, p3}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p2, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p2, p2, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/device/CameraService;Landroid/util/Pair;I)V

    check-cast p2, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p2, p2, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/device/CameraService;Landroid/util/Pair;I)V

    check-cast p2, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p2, p2, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/device/CameraService;Landroid/util/Pair;I)V

    check-cast p2, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p2, p2, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    check-cast p2, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p2, p2, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p3}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p2, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p2, p2, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/device/CameraService;Landroid/util/Pair;I)V

    check-cast p2, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onLoadCanceled(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance p2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/CameraService;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    check-cast p1, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onLoadCompleted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance p2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/CameraService;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    check-cast p1, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onLoadError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance p2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZI)V

    check-cast p1, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onLoadStarted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance p2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    move-object v0, p2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/CameraService;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    check-cast p1, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/device/CameraService;->unregisterLayoutListener()V

    iput-object p1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final resolveValue(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;
    .locals 4

    const-string v0, "nameResolver"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_UNSIGNED:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->flags_:I

    const-string v2, "IS_UNSIGNED.get(value.flags)"

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v0

    iget-object v1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->type_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationDeserializer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported annotation argument type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_0
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->arrayElement_:Ljava/util/List;

    const-string v0, "value.arrayElementList"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    iget-object v2, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    const-string v3, "builtIns.anyType"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1, p3}, Lcom/motorola/camera/device/CameraService;->resolveValue(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue;

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue;-><init>(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    goto/16 :goto_5

    :pswitch_1
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/AnnotationValue;

    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->annotation_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    const-string v0, "value.annotation"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/device/CameraService;->deserializeAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/AnnotationValue;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;)V

    :goto_2
    move-object p0, p1

    goto/16 :goto_5

    :pswitch_2
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;

    iget p1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->classId_:I

    invoke-static {p3, p1}, Lkotlin/text/UStringsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->enumValueId_:I

    invoke-static {p3, p2}, Lkotlin/text/UStringsKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    goto/16 :goto_5

    :pswitch_3
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    iget p1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->classId_:I

    invoke-static {p3, p1}, Lkotlin/text/UStringsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->arrayDimensionCount_:I

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)V

    goto/16 :goto_5

    :pswitch_4
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/StringValue;

    iget p1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->stringValue_:I

    invoke-interface {p3, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/StringValue;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_5
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/FloatValue;

    iget-wide p1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->intValue_:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/FloatValue;-><init>(Z)V

    goto :goto_5

    :pswitch_6
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/FloatValue;

    iget-wide p1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->doubleValue_:D

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/FloatValue;-><init>(D)V

    goto :goto_5

    :pswitch_7
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/FloatValue;

    iget p1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->floatValue_:F

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/FloatValue;-><init>(F)V

    goto :goto_5

    :pswitch_8
    iget-wide p0, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->intValue_:J

    if-eqz v0, :cond_3

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(J)V

    goto :goto_4

    :cond_3
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/LongValue;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/LongValue;-><init>(J)V

    :goto_4
    move-object p0, p2

    goto :goto_5

    :pswitch_9
    iget-wide p0, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->intValue_:J

    long-to-int p0, p0

    if-eqz v0, :cond_4

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(I)V

    goto :goto_2

    :cond_4
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntValue;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntValue;-><init>(I)V

    goto :goto_2

    :pswitch_a
    iget-wide p0, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->intValue_:J

    long-to-int p0, p0

    int-to-short p0, p0

    if-eqz v0, :cond_5

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(S)V

    goto/16 :goto_2

    :cond_5
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ShortValue;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ShortValue;-><init>(S)V

    goto/16 :goto_2

    :pswitch_b
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/CharValue;

    iget-wide p1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->intValue_:J

    long-to-int p1, p1

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/CharValue;-><init>(C)V

    goto :goto_5

    :pswitch_c
    iget-wide p0, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->intValue_:J

    long-to-int p0, p0

    int-to-byte p0, p0

    if-eqz v0, :cond_6

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(B)V

    goto/16 :goto_2

    :cond_6
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ByteValue;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ByteValue;-><init>(B)V

    goto/16 :goto_2

    :goto_5
    return-object p0

    :goto_6
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->type_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final unregisterLayoutListener()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public final zaa()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p0, Landroidx/work/Worker$2;

    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/zaae;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
