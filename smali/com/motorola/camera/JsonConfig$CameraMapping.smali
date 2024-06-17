.class public final Lcom/motorola/camera/JsonConfig$CameraMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public isVirtualCamera:Z

.field public physicalRole:Ljava/lang/Object;

.field public final sensorName:Ljava/lang/Object;

.field public sensorNameOverride:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->$r8$classId:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    new-instance p1, Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-direct {p1}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/Spatializer;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/common/AudioAttributes$Api32$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Spatializer;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroidx/media3/datasource/DefaultHttpDataSource$Factory;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput-object p3, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->$r8$classId:I

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/JsonConfig$CameraMapping;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;I)V
    .locals 1

    const/4 p2, 0x5

    iput p2, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->$r8$classId:I

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    .line 8
    iget-boolean p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->hasLazyField:Z

    .line 9
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzck;

    .line 10
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entrySet$kotlin$reflect$jvm$internal$impl$protobuf$SmallSortedMap()Ljava/util/Set;

    move-result-object p1

    .line 11
    check-cast p1, Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/Flags;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzck;-><init>(Ljava/util/Iterator;I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entrySet$kotlin$reflect$jvm$internal$impl$protobuf$SmallSortedMap()Ljava/util/Set;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/Flags;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 14
    :goto_0
    iput-object p2, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/util/EnumMap;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->$r8$classId:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    return-void
.end method

.method public static computeRecenterMatrix([F[F)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v1, 0xa

    aget v2, p1, v1

    mul-float/2addr v2, v2

    const/16 v3, 0x8

    aget v4, p1, v3

    mul-float/2addr v4, v4

    add-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    aget v4, p1, v1

    div-float v5, v4, v2

    aput v5, p0, v0

    aget p1, p1, v3

    div-float v0, p1, v2

    const/4 v5, 0x2

    aput v0, p0, v5

    neg-float p1, p1

    div-float/2addr p1, v2

    aput p1, p0, v3

    div-float/2addr v4, v2

    aput v4, p0, v1

    return-void
.end method

.method public static executePost(Landroidx/media3/datasource/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 38

    new-instance v1, Landroidx/media3/datasource/StatsDataSource;

    invoke-interface/range {p0 .. p0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    const/4 v15, 0x0

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    const-wide/16 v11, -0x1

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v14, 0x1

    const-string v8, "The uri must be set."

    invoke-static {v3, v8}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v17, Landroidx/media3/datasource/DataSpec;

    move-object/from16 v2, v17

    move-object/from16 v7, p2

    move-object/from16 v23, v8

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v15}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    const/4 v2, 0x0

    move v4, v2

    move-object/from16 v3, v17

    :goto_0
    :try_start_0
    new-instance v5, Landroidx/media3/datasource/DataSourceInputStream;

    invoke-direct {v5, v1, v3}, Landroidx/media3/datasource/DataSourceInputStream;-><init>(Landroidx/media3/datasource/StatsDataSource;Landroidx/media3/datasource/DataSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    invoke-virtual {v5, v0}, Landroidx/media3/datasource/DataSourceInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {v6, v0, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-virtual {v5}, Landroidx/media3/datasource/DataSourceInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :catch_1
    return-object v0

    :goto_2
    :try_start_4
    iget v6, v0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v7, 0x133

    if-eq v6, v7, :cond_1

    const/16 v7, 0x134

    if-ne v6, v7, :cond_2

    :cond_1
    const/4 v6, 0x5

    if-ge v4, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    move v6, v2

    :goto_3
    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    iget-object v6, v0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->headerFields:Ljava/util/Map;

    if-eqz v6, :cond_4

    const-string v7, "Location"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    iget-wide v7, v3, Landroidx/media3/datasource/DataSpec;->uriPositionOffset:J

    iget v0, v3, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    iget-object v9, v3, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    iget-object v10, v3, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-wide v11, v3, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v13, v3, Landroidx/media3/datasource/DataSpec;->length:J

    iget-object v15, v3, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iget v2, v3, Landroidx/media3/datasource/DataSpec;->flags:I

    iget-object v3, v3, Landroidx/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move/from16 p1, v4

    move-object/from16 v4, v23

    invoke-static {v6, v4}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v16, Landroidx/media3/datasource/DataSpec;

    move-object/from16 v24, v16

    move-object/from16 v25, v6

    move-wide/from16 v26, v7

    move/from16 v28, v0

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-wide/from16 v31, v11

    move-wide/from16 v33, v13

    move-object/from16 v35, v15

    move/from16 v36, v2

    move-object/from16 v37, v3

    invoke-direct/range {v24 .. v37}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-virtual {v5}, Landroidx/media3/datasource/DataSourceInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_2
    move-object/from16 v23, v4

    move-object/from16 v3, v16

    const/4 v2, 0x0

    move/from16 v4, p1

    goto/16 :goto_0

    :cond_5
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    :try_start_8
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :try_start_9
    invoke-virtual {v5}, Landroidx/media3/datasource/DataSourceInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_3
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception v0

    move-object/from16 v22, v0

    new-instance v0, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;

    iget-object v2, v1, Landroidx/media3/datasource/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v19

    iget-wide v3, v1, Landroidx/media3/datasource/StatsDataSource;->bytesRead:J

    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-wide/from16 v20, v3

    invoke-direct/range {v16 .. v22}, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;-><init>(Landroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public final canBeSpatialized(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Z
    .locals 3

    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget v1, p2, Landroidx/media3/common/Format;->channelCount:I

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    if-ne v1, v0, :cond_0

    const/16 v1, 0xc

    :cond_0
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v1, -0x1

    iget p2, p2, Landroidx/media3/common/Format;->sampleRate:I

    if-eq p2, v1, :cond_1

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    check-cast p0, Landroid/media/Spatializer;

    iget-object p2, p1, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Lcom/adobe/xmp/impl/xpath/XMPPath;

    if-nez p2, :cond_2

    new-instance p2, Lcom/adobe/xmp/impl/xpath/XMPPath;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(Landroidx/media3/common/AudioAttributes;I)V

    iput-object p2, p1, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Lcom/adobe/xmp/impl/xpath/XMPPath;

    :cond_2
    iget-object p1, p1, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Lcom/adobe/xmp/impl/xpath/XMPPath;

    iget-object p1, p1, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast p1, Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/media3/common/AudioAttributes$Api32$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p0

    return p0
.end method

.method public final ensureInitialized(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroid/os/Looper;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast v0, Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    iget-object p2, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    check-cast p2, Landroid/media/Spatializer;

    new-instance v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Handler;)V

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast p0, Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-static {p2, v0, p0}, Landroidx/media3/common/AudioAttributes$Api32$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Spatializer;Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$$ExternalSyntheticLambda0;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final executeKeyRequest(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "text/xml"

    goto :goto_0

    :cond_2
    sget-object v6, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "application/json"

    goto :goto_0

    :cond_3
    const-string v6, "application/octet-stream"

    :goto_0
    const-string v7, "Content-Type"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SOAPAction"

    const-string v5, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v5, v0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/datasource/DataSource$Factory;

    iget-object v1, v2, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->data:[B

    invoke-static {v0, v3, v1, v4}, Lcom/motorola/camera/JsonConfig$CameraMapping;->executePost(Landroidx/media3/datasource/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    new-instance v0, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    const-wide/16 v10, -0x1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "The uri must be set."

    invoke-static {v2, v1}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Landroidx/media3/datasource/DataSpec;

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    sget-object v5, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v1, "No license URL"

    invoke-direct {v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v15

    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;-><init>(Landroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Exception;)V

    throw v0
.end method

.method public final executeProvisionRequest(Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->defaultUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&signedRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->data:[B

    invoke-static {p1}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/datasource/DataSource$Factory;

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/motorola/camera/JsonConfig$CameraMapping;->executePost(Landroidx/media3/datasource/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public final submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast p0, Ljava/util/Queue;

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zzv;

    invoke-direct {v1, p2, p1}, Lcom/google/mlkit/common/sdkinternal/zzv;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-interface {p0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/JsonConfig$CameraMapping;->zzd(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraMapping{sensorName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sensorNameOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", physicalRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    if-eqz p0, :cond_0

    const-string p0, ", isVirtualCamera=true"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeUntil(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 7

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_6

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    if-ge v0, p1, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    if-ne v1, v4, :cond_0

    iget-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {p2, v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p2, v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeTag(II)V

    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {p2, v5, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    const/4 v0, 0x4

    invoke-virtual {p2, v4, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeTag(II)V

    goto :goto_4

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->DEFAULT_INSTANCE:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    iget-boolean v5, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    iget v6, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    if-eqz v5, :cond_3

    check-cast v1, Ljava/util/List;

    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, v6, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->computeElementSizeNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->writeElementNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v6, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->writeElement(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p2, v4, v6, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->writeElement(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/zzv;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzv;->zza:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Lcom/google/mlkit/common/sdkinternal/zzv;->zzb:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/JsonConfig$CameraMapping;->zzd(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final zzd(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Landroidx/work/Worker$2;

    const/16 v1, 0x17

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/Worker$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/motorola/camera/JsonConfig$CameraMapping;->zzc()V

    return-void
.end method
