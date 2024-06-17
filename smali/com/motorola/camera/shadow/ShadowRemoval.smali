.class public final Lcom/motorola/camera/shadow/ShadowRemoval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$ContentAiProviderListener;


# instance fields
.field public mInitialized:Z

.field public mInputsShadow:[Ljava/lang/Object;

.field public mMaxImgData:Ljava/nio/ByteBuffer;

.field public mMinImgData:Ljava/nio/ByteBuffer;

.field public mOutputsShadow:Ljava/util/HashMap;

.field public mTfliteShadow:Lorg/tensorflow/lite/Interpreter;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModeFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->listener:Ljava/lang/ref/WeakReference;

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->bgServiceModels:Ljava/util/ArrayList;

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->DOC_SHADOW_REMOVAL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "model"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {v1, p0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelData(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_0
    :goto_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->shadowRemovalModelLoaded:Z

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->listener:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$ContentAiProviderListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$ContentAiProviderListener;->onModelLoaded()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/shadow/ShadowRemoval;->init(Landroid/content/res/AssetFileDescriptor;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final init(Landroid/content/res/AssetFileDescriptor;)V
    .locals 11

    const-string v0, "ShadowRemoval"

    if-nez p1, :cond_0

    const-string p0, "Failed to load DOC_SHADOW_REMOVAL model"

    goto :goto_2

    :cond_0
    const-string v1, "load model bytes Error: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v9

    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_1
    move-exception p1

    move-object v3, v2

    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v3}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-nez v2, :cond_1

    const-string p0, "Failed to load model bytes"

    :goto_2
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p1, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {p1}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lorg/tensorflow/lite/InterpreterImpl$Options;->useXNNPACK:Ljava/lang/Boolean;

    const/4 v0, 0x4

    iput v0, p1, Lorg/tensorflow/lite/InterpreterImpl$Options;->numThreads:I

    new-instance v0, Lorg/tensorflow/lite/Interpreter;

    invoke-direct {v0, v2, p1}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/MappedByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    iput-object v0, p0, Lcom/motorola/camera/shadow/ShadowRemoval;->mTfliteShadow:Lorg/tensorflow/lite/Interpreter;

    const/high16 p1, 0x1200000

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    const/high16 p1, 0x120000

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/shadow/ShadowRemoval;->mInputsShadow:[Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/shadow/ShadowRemoval;->mOutputsShadow:Ljava/util/HashMap;

    const/16 p1, 0x400

    const/4 v0, 0x1

    const/16 v1, 0x600

    const/4 v2, 0x3

    filled-new-array {v0, v1, p1, v2}, [I

    move-result-object p1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[[F

    iget-object v1, p0, Lcom/motorola/camera/shadow/ShadowRemoval;->mOutputsShadow:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/motorola/camera/shadow/ShadowRemoval;->mInitialized:Z

    return-void

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final onAllModelsLoaded()V
    .locals 0

    return-void
.end method

.method public final onModelLoaded()V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModeFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/shadow/ShadowRemoval;->init(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method
