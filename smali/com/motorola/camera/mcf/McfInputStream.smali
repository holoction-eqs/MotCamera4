.class public Lcom/motorola/camera/mcf/McfInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final MAX_ACQUIRED_INPUT_FRAME_NUM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "McfInputStream"


# instance fields
.field private mBufferCount:I

.field private mCameraId:Ljava/lang/String;

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mFormat:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mId:I

.field private volatile mIsStreamOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

.field private mSensorName:Ljava/lang/String;

.field private mType:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

.field private mUsage:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCameraId(Lcom/motorola/camera/mcf/McfInputStream;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFormat(Lcom/motorola/camera/mcf/McfInputStream;)Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mFormat:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmId(Lcom/motorola/camera/mcf/McfInputStream;)I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsStreamOpen(Lcom/motorola/camera/mcf/McfInputStream;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mIsStreamOpen:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/motorola/camera/mcf/McfInputStream;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/motorola/camera/mcf/McfInputStream;)Lcom/motorola/camera/mcf/McfInputStream$StreamType;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mType:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfInputStream;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stream_process_image(ILjava/lang/String;IILandroid/media/Image;II)I
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/motorola/camera/mcf/McfInputStream;->native_stream_process_image(ILjava/lang/String;IILandroid/media/Image;II)I

    move-result p0

    return p0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v10, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/mcf/McfInputStream;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/mcf/McfInputStream;->mIsStreamOpen:Z

    iput v11, v0, Lcom/motorola/camera/mcf/McfInputStream;->mId:I

    iput-object v12, v0, Lcom/motorola/camera/mcf/McfInputStream;->mCameraId:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/motorola/camera/mcf/McfInputStream;->mSensorName:Ljava/lang/String;

    iput v13, v0, Lcom/motorola/camera/mcf/McfInputStream;->mDefaultWidth:I

    iput v14, v0, Lcom/motorola/camera/mcf/McfInputStream;->mDefaultHeight:I

    iput v15, v0, Lcom/motorola/camera/mcf/McfInputStream;->mBufferCount:I

    iput v10, v0, Lcom/motorola/camera/mcf/McfInputStream;->mUsage:I

    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/motorola/camera/mcf/McfInputStream;->mType:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/motorola/camera/mcf/McfInputStream;->mFormat:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/motorola/camera/mcf/McfInputStream;->mMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p8 .. p8}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->toInt()I

    move-result v16

    invoke-virtual/range {p9 .. p9}, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->toInt()I

    move-result v17

    invoke-virtual/range {p10 .. p10}, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->toInt()I

    move-result v18

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/mcf/McfInputStream;->native_stream_open(ILjava/lang/String;Ljava/lang/String;IIIIIII)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/mcf/McfInputStream;->mIsStreamOpen:Z

    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/motorola/camera/mcf/McfInputStream;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/motorola/camera/mcf/McfInputStream;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lcom/motorola/camera/mcf/McfInputStream;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/motorola/camera/mcf/McfInputStream;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/motorola/camera/mcf/McfInputStream;->mCameraId:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->setInputStreamReady(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/mcf/McfInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: open: id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufferCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " usage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p8 .. p8}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p9 .. p9}, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p10 .. p10}, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->toInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "error opening stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/motorola/camera/mcf/McfInputStream;->TAG:Ljava/lang/String;

    const-string v1, "Mcf must be started before creating streams"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native native_stream_close(ILjava/lang/String;I)I
.end method

.method private static native native_stream_open(ILjava/lang/String;Ljava/lang/String;IIIIIII)I
.end method

.method private static native native_stream_process_image(ILjava/lang/String;IILandroid/media/Image;II)I
.end method


# virtual methods
.method public bufferCount()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mBufferCount:I

    return p0
.end method

.method public cameraId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public close()V
    .locals 5

    const-string v0, "Error: close: id:"

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfInputStream;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/camera/mcf/McfInputStream;->mIsStreamOpen:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/mcf/McfInputStream;->mCameraId:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/motorola/camera/mcf/Mcf;->setInputStreamReady(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget v2, p0, Lcom/motorola/camera/mcf/McfInputStream;->mId:I

    iget-object v3, p0, Lcom/motorola/camera/mcf/McfInputStream;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/mcf/McfInputStream;->mType:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    invoke-virtual {v4}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->toInt()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/motorola/camera/mcf/McfInputStream;->native_stream_close(ILjava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/motorola/camera/mcf/McfInputStream;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mId:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cameraId:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mCameraId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dim:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mDefaultWidth:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mDefaultHeight:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " type:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mType:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " format:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mFormat:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error code:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mIsStreamOpen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mId:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/camera/mcf/McfInputStream;->mCameraId:Ljava/lang/String;

    iput v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mDefaultWidth:I

    iput v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mDefaultHeight:I

    iput v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mBufferCount:I

    iput v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mUsage:I

    sget-object v0, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->UNKNOWN:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mType:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    sget-object v0, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->UNKNOWN:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mFormat:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    sget-object v0, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->UNKNOWN:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "error closing stream"

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finalize()V
    .locals 5

    const-string v0, "super.finalize() thrown : "

    const-string v1, "finalize() thrown : "

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v1, Lcom/motorola/camera/mcf/McfInputStream;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :catchall_1
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/motorola/camera/mcf/McfInputStream;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    :catchall_3
    move-exception p0

    sget-object v1, Lcom/motorola/camera/mcf/McfInputStream;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method

.method public format()Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mFormat:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    return-object p0
.end method

.method public getStreamImageAvailableHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 1

    new-instance v0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;-><init>(Lcom/motorola/camera/mcf/McfInputStream;)V

    return-object v0
.end method

.method public id()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mId:I

    return p0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mIsStreamOpen:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public mode()Lcom/motorola/camera/mcf/McfInputStream$StreamMode;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    return-object p0
.end method

.method public type()Lcom/motorola/camera/mcf/McfInputStream$StreamType;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mType:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    return-object p0
.end method

.method public usage()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfInputStream;->mUsage:I

    return p0
.end method
