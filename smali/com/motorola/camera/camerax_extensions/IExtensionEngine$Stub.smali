.class public abstract Lcom/motorola/camera/camerax_extensions/IExtensionEngine$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.camera.camerax_extensions.IExtensionEngine"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "com.motorola.camera.camerax_extensions.IExtensionEngine"

    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    const v5, 0xffffff

    if-gt v0, v5, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v5, 0x5f4e5446

    if-eq v0, v5, :cond_22

    const-wide/16 v5, -0x1

    const/4 v3, 0x0

    const-string v7, "Extension "

    const-string v8, "clientDeathListener"

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-object/from16 v7, p0

    check-cast v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v8, "results"

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-interface {v5, v1, v0}, Lcom/motorola/camera/camerax_extensions/Extension;->processStream(ILjava/lang/String;)Z

    move-result v3

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-object/from16 v3, p0

    check-cast v3, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v7, "inputResult"

    invoke-static {v0, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v3, v5, v6}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {v3, v1, v0}, Lcom/motorola/camera/camerax_extensions/Extension;->buildRequest(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/view/Surface;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-object/from16 v7, p0

    check-cast v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v8, "surface"

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5, v0, v1}, Lcom/motorola/camera/camerax_extensions/Extension;->configureStream(Landroid/view/Surface;I)Landroid/view/Surface;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, v2, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_15

    :cond_5
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_15

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move-object/from16 v1, p0

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Lcom/motorola/camera/camerax_extensions/Extension;->deinitialize(I)V

    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_15

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move-object/from16 v1, p0

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1, v0}, Lcom/motorola/camera/camerax_extensions/Extension;->initialize(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_5

    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " failed to initialize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    move-object/from16 v3, p0

    check-cast v3, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-virtual {v3, v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/motorola/camera/camerax_extensions/Extension;->getExtensionConfig()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    move-object/from16 v7, p0

    check-cast v7, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    cmp-long v5, v0, v5

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v7, v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface {v0}, Lcom/motorola/camera/camerax_extensions/Extension;->isSupported()Z

    move-result v3

    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_15

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, p0

    check-cast v5, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    const-string v6, "name"

    invoke-static {v0, v6}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "cameraId"

    invoke-static {v1, v6}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v5, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->context:Landroid/content/Context;

    sget-object v8, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    const/4 v10, 0x4

    new-array v10, v10, [B

    invoke-virtual {v9, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    aget-byte v9, v10, v3

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v11, 0x10

    shl-int/2addr v4, v11

    or-int/2addr v4, v9

    const/4 v9, 0x2

    aget-byte v9, v10, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v4, v9

    const/4 v9, 0x3

    aget-byte v9, v10, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v4, v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    sget-object v10, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->EXTENSION_MAP:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not supported"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_c
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v14, v4

    const/16 v4, 0x20

    shl-long/2addr v14, v4

    shl-long v11, v12, v11

    or-long/2addr v11, v14

    int-to-long v13, v10

    or-long v10, v11, v13

    invoke-virtual {v5, v10, v11}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;

    move-result-object v4

    if-nez v4, :cond_1f

    iget-object v4, v5, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    if-nez v4, :cond_d

    const-string v0, "Unable to initialize json config"

    goto/16 :goto_10

    :cond_d
    :try_start_1
    const-string v12, "camera"

    invoke-virtual {v6, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/CameraManager;

    if-eqz v12, :cond_e

    invoke-virtual {v12, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    const-string v1, "No access to camera characteristics"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v1, 0x0

    :goto_6
    move-object v15, v1

    if-nez v15, :cond_f

    const-string v0, "Cannot retrieve camera characteristics"

    goto/16 :goto_10

    :cond_f
    const-string v1, "imagers"

    const/4 v12, -0x1

    invoke-static {v1, v4, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    sget-object v12, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v15, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v1, :cond_11

    if-eqz v12, :cond_11

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    :goto_7
    if-ge v3, v13, :cond_11

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    const/4 v3, -0x1

    :goto_8
    const-string v1, "alternate-imager-name"

    const/4 v13, -0x1

    invoke-static {v1, v4, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    if-ne v3, v13, :cond_16

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v13, :cond_15

    move/from16 p0, v13

    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v16

    move-object/from16 p1, v1

    if-lez v16, :cond_13

    const/4 v1, -0x1

    if-ne v3, v1, :cond_13

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v16, 0x0

    move/from16 v17, v3

    move/from16 v3, v16

    :goto_a
    if-ge v3, v1, :cond_14

    move/from16 p2, v1

    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v3, v14

    goto :goto_b

    :cond_12
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p2

    goto :goto_a

    :cond_13
    move/from16 v17, v3

    :cond_14
    move/from16 v3, v17

    :goto_b
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, p0

    move-object/from16 v1, p1

    goto :goto_9

    :cond_15
    move/from16 v17, v3

    move/from16 v13, v17

    goto :goto_c

    :cond_16
    move v13, v3

    :goto_c
    const/4 v1, -0x1

    if-ne v13, v1, :cond_17

    const-string v0, "Cannot map sensor name to json index"

    goto/16 :goto_10

    :cond_17
    iget-object v1, v5, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_18

    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/LongSparseArray;

    goto :goto_d

    :cond_18
    const/4 v1, 0x0

    :goto_d
    if-nez v1, :cond_19

    const-string v0, "No client reference found, unable to initialize"

    goto/16 :goto_10

    :cond_19
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_f

    :sswitch_0
    const-string v3, "bokeh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_f

    :cond_1a
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;

    invoke-direct {v0, v13, v4, v15}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_e

    :sswitch_1
    const-string v3, "hdr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_f

    :cond_1b
    new-instance v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;

    invoke-direct {v0, v13, v4, v15}, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1e

    new-instance v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;

    invoke-direct {v0, v13, v4, v15}, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1e

    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;

    invoke-direct {v0, v13, v4, v15}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_e

    :sswitch_2
    const-string v3, "beauty"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_f

    :cond_1c
    new-instance v0, Lcom/motorola/camera/camerax_extensions/FotonationBeautyExtension;

    iget-object v14, v5, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    invoke-static {v6}, Lcom/motorola/camera/shared/McfUtil;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/camerax_extensions/FotonationBeautyExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :sswitch_3
    const-string v3, "supernight"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_f

    :cond_1d
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;

    invoke-direct {v0, v13, v4, v15}, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-virtual {v0}, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1e

    new-instance v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;

    invoke-direct {v0, v13, v4, v15}, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;-><init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    :cond_1e
    :goto_e
    invoke-virtual {v1, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_12

    :goto_f
    const-string v1, " not implemented"

    invoke-static {v7, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :catch_1
    const-string v0, "Unable to get an number from the cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    const-wide/16 v10, -0x1

    :cond_1f
    :goto_12
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_14

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/from16 v1, p0

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v3, v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v1, v0}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->removeApp(I)V

    goto :goto_13

    :cond_20
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string v1, "App already removed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p0

    check-cast v3, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "version"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v4, v3, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_21

    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v5, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;

    invoke-direct {v5, v1, v3}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$registerApp$deathRecipient$1;-><init>(ILcom/motorola/camera/camerax_extensions/ExtensionEngine;)V

    const/4 v3, 0x0

    invoke-interface {v0, v5, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v0, Lkotlin/Pair;

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    invoke-direct {v0, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_13

    :cond_21
    const-string v0, "App registration already exists "

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_14
    const/4 v4, 0x1

    :goto_15
    return v4

    :cond_22
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :pswitch_data_0
    .packed-switch 0x1
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

    :sswitch_data_0
    .sparse-switch
        -0x659a9683 -> :sswitch_3
        -0x5307ef84 -> :sswitch_2
        0x192f6 -> :sswitch_1
        0x59912e1 -> :sswitch_0
    .end sparse-switch
.end method
