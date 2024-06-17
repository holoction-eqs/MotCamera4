.class Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureRecordTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# instance fields
.field public final mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    .locals 37

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v1

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    const-string v2, "expecting object: "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v3

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v4, v3}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    new-instance v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x1d

    const/16 v10, 0x1c

    const/16 v11, 0x1b

    const/16 v12, 0x1a

    const/16 v13, 0x19

    const/16 v14, 0x18

    const/16 v15, 0x17

    const/16 v16, 0x16

    const/16 v17, 0x15

    const/16 v18, 0x14

    const/16 v19, 0x13

    const/16 v20, 0x12

    const/16 v21, 0x4

    const/16 v22, 0x3

    const/16 v23, 0x7

    const/16 v24, 0x6

    const/16 v25, 0x5

    const/16 v26, -0x1

    const/16 v27, 0x1

    const/16 v28, 0x11

    const/16 v29, 0x10

    const/16 v30, 0xf

    const/16 v31, 0xe

    const/16 v32, 0xd

    const/16 v33, 0xc

    const/16 v34, 0xb

    const/16 v35, 0xa

    const/16 v36, 0x9

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v8, "is_watermark_ts_enabled"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v7, 0x26

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "use_exif_jpeg_as_backup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_3

    :cond_3
    const/16 v7, 0x25

    goto :goto_1

    :sswitch_2
    const-string v8, "media_file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v7, 0x24

    goto :goto_1

    :sswitch_3
    const-string v8, "scn_mod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v7, 0x23

    goto :goto_1

    :sswitch_4
    const-string v8, "d_count"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v7, 0x22

    goto :goto_1

    :sswitch_5
    const-string v8, "is_bg_proc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v7, 0x21

    goto :goto_1

    :sswitch_6
    const-string v8, "rec_ext_info"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v7, 0x20

    goto :goto_1

    :sswitch_7
    const-string v8, "imaging_model_aux_data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v7, 0x1f

    goto :goto_1

    :sswitch_8
    const-string v8, "cam_fac_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v7, 0x1e

    :goto_1
    move v9, v7

    goto :goto_2

    :sswitch_9
    const-string v8, "ultra_wide_front"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_3

    :cond_b
    :goto_2
    move-object/from16 v7, p0

    goto/16 :goto_4

    :sswitch_a
    const-string v8, "ext_bfr_done"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_3

    :cond_c
    move-object/from16 v7, p0

    move v9, v10

    goto/16 :goto_4

    :sswitch_b
    const-string v8, "inst_typ"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_3

    :cond_d
    move-object/from16 v7, p0

    move v9, v11

    goto/16 :goto_4

    :sswitch_c
    const-string v8, "cap_mod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_3

    :cond_e
    move-object/from16 v7, p0

    move v9, v12

    goto/16 :goto_4

    :sswitch_d
    const-string v8, "cam_typ"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_3

    :cond_f
    move-object/from16 v7, p0

    move v9, v13

    goto/16 :goto_4

    :sswitch_e
    const-string v8, "auto_enhance"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto/16 :goto_3

    :cond_10
    move-object/from16 v7, p0

    move v9, v14

    goto/16 :goto_4

    :sswitch_f
    const-string v8, "gps_loc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_3

    :cond_11
    move-object/from16 v7, p0

    move v9, v15

    goto/16 :goto_4

    :sswitch_10
    const-string v8, "reproc_typ"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto/16 :goto_3

    :cond_12
    move-object/from16 v7, p0

    move/from16 v9, v16

    goto/16 :goto_4

    :sswitch_11
    const-string v8, "orien"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto/16 :goto_3

    :cond_13
    move-object/from16 v7, p0

    move/from16 v9, v17

    goto/16 :goto_4

    :sswitch_12
    const-string v8, "uuid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto/16 :goto_3

    :cond_14
    move-object/from16 v7, p0

    move/from16 v9, v18

    goto/16 :goto_4

    :sswitch_13
    const-string v8, "segm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    goto/16 :goto_3

    :cond_15
    move-object/from16 v7, p0

    move/from16 v9, v19

    goto/16 :goto_4

    :sswitch_14
    const-string v8, "raw"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto/16 :goto_3

    :cond_16
    move-object/from16 v7, p0

    move/from16 v9, v20

    goto/16 :goto_4

    :sswitch_15
    const-string v8, "cap_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    goto/16 :goto_3

    :cond_17
    move-object/from16 v7, p0

    move/from16 v9, v28

    goto/16 :goto_4

    :sswitch_16
    const-string v8, "d_duration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    goto/16 :goto_3

    :cond_18
    move-object/from16 v7, p0

    move/from16 v9, v29

    goto/16 :goto_4

    :sswitch_17
    const-string v8, "setting_map"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    goto/16 :goto_3

    :cond_19
    move-object/from16 v7, p0

    move/from16 v9, v30

    goto/16 :goto_4

    :sswitch_18
    const-string v8, "is_watermark_enabled"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v7, p0

    move/from16 v9, v31

    goto/16 :goto_4

    :sswitch_19
    const-string v8, "play_shutter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v7, p0

    move/from16 v9, v32

    goto/16 :goto_4

    :sswitch_1a
    const-string v8, "anly_log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    goto/16 :goto_3

    :cond_1c
    move-object/from16 v7, p0

    move/from16 v9, v33

    goto/16 :goto_4

    :sswitch_1b
    const-string v8, "ses_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v7, p0

    move/from16 v9, v34

    goto/16 :goto_4

    :sswitch_1c
    const-string v8, "seq_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v7, p0

    move/from16 v9, v35

    goto/16 :goto_4

    :sswitch_1d
    const-string v8, "meta_data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v7, p0

    move/from16 v9, v36

    goto/16 :goto_4

    :sswitch_1e
    const-string v8, "priority"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    goto/16 :goto_3

    :cond_20
    move-object/from16 v7, p0

    move v9, v5

    goto/16 :goto_4

    :sswitch_1f
    const-string v8, "file_name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    goto/16 :goto_3

    :cond_21
    move-object/from16 v7, p0

    move/from16 v9, v23

    goto/16 :goto_4

    :sswitch_20
    const-string v8, "d_jobs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    goto/16 :goto_3

    :cond_22
    move-object/from16 v7, p0

    move/from16 v9, v24

    goto/16 :goto_4

    :sswitch_21
    const-string v8, "elaps_intr_str"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    goto :goto_3

    :cond_23
    move-object/from16 v7, p0

    move/from16 v9, v25

    goto :goto_4

    :sswitch_22
    const-string v8, "cam_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    goto :goto_3

    :cond_24
    move-object/from16 v7, p0

    move/from16 v9, v21

    goto :goto_4

    :sswitch_23
    const-string v8, "ms_count"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_3

    :cond_25
    move-object/from16 v7, p0

    move/from16 v9, v22

    goto :goto_4

    :sswitch_24
    const-string v8, "mcf_capture"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    goto :goto_3

    :cond_26
    move-object/from16 v7, p0

    move v9, v6

    goto :goto_4

    :sswitch_25
    const-string v8, "shot_type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    goto :goto_3

    :cond_27
    move-object/from16 v7, p0

    move/from16 v9, v27

    goto :goto_4

    :sswitch_26
    const-string v8, "shot_bndl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    goto :goto_3

    :cond_28
    move-object/from16 v7, p0

    move v9, v4

    goto :goto_4

    :goto_3
    move-object/from16 v7, p0

    move/from16 v9, v26

    :goto_4
    iget-object v8, v7, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    packed-switch v9, :pswitch_data_0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown field name while parsing CaptureRecord "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkTs:Z

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v9, Lcom/google/gson/reflect/TypeToken;

    const-class v10, Lcom/motorola/camera/storage/MediaFile$Memento;

    invoke-direct {v9, v10}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 5
    invoke-virtual {v8, v0, v9}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v8

    .line 6
    check-cast v8, Lcom/motorola/camera/storage/MediaFile$Memento;

    invoke-static {v8}, Lcom/motorola/camera/storage/MediaFile;->fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v8

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v8

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    iput v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownCount:I

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mRecordExtendedInfo:Z

    goto/16 :goto_0

    :pswitch_7
    sget-object v9, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v10, Lcom/google/gson/reflect/TypeToken;

    const-class v11, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    invoke-direct {v10, v11}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 8
    invoke-virtual {v8, v0, v10}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v8

    .line 9
    check-cast v8, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    iget-object v10, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-virtual {v10, v9, v8}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    iput v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mUltraWideFront:Z

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v8

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    iput v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v9, Lcom/google/gson/reflect/TypeToken;

    const-class v10, Landroid/location/Location;

    invoke-direct {v9, v10}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 11
    invoke-virtual {v8, v0, v9}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v8

    .line 12
    check-cast v8, Landroid/location/Location;

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v8

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    iput v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownDuration:J

    goto/16 :goto_0

    .line 13
    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v8

    invoke-static {v8}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v8

    if-eq v8, v6, :cond_2a

    if-ne v8, v5, :cond_29

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto/16 :goto_8

    :cond_29
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {v0, v4, v3}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_2a
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    goto/16 :goto_6

    :sswitch_27
    const-string v11, "sm_front_mirror"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    goto/16 :goto_6

    :cond_2b
    const/16 v10, 0x2b

    goto/16 :goto_6

    :sswitch_28
    const-string v11, "sm_video_portrait_level"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c

    goto/16 :goto_6

    :cond_2c
    const/16 v10, 0x2a

    goto/16 :goto_6

    :sswitch_29
    const-string v11, "sm_assistive_grid"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2d

    goto/16 :goto_6

    :cond_2d
    const/16 v10, 0x29

    goto/16 :goto_6

    :sswitch_2a
    const-string v11, "sm_face_beauty_toning_type"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    goto/16 :goto_6

    :cond_2e
    const/16 v10, 0x28

    goto/16 :goto_6

    :sswitch_2b
    const-string v11, "sm_dual_screen_preview"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    goto/16 :goto_6

    :cond_2f
    const/16 v10, 0x27

    goto/16 :goto_6

    :sswitch_2c
    const-string v11, "sm_focus_mode"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_30

    goto/16 :goto_6

    :cond_30
    const/16 v10, 0x26

    goto/16 :goto_6

    :sswitch_2d
    const-string v11, "sm_face_beauty_toning_level"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    goto/16 :goto_6

    :cond_31
    const/16 v10, 0x25

    goto/16 :goto_6

    :sswitch_2e
    const-string v11, "sm_face_beauty"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    goto/16 :goto_6

    :cond_32
    const/16 v10, 0x24

    goto/16 :goto_6

    :sswitch_2f
    const-string v11, "sm_zoom_segment"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33

    goto/16 :goto_6

    :cond_33
    const/16 v10, 0x23

    goto/16 :goto_6

    :sswitch_30
    const-string v11, "sm_face_beauty_level"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    goto/16 :goto_6

    :cond_34
    const/16 v10, 0x22

    goto/16 :goto_6

    :sswitch_31
    const-string v11, "sm_face_beauty_smooth_level"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    goto/16 :goto_6

    :cond_35
    const/16 v10, 0x21

    goto/16 :goto_6

    :sswitch_32
    const-string v11, "sm_watermark_timestamp"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_36

    goto/16 :goto_6

    :cond_36
    const/16 v10, 0x20

    goto/16 :goto_6

    :sswitch_33
    const-string v11, "sm_gesture_capture"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_37

    goto/16 :goto_6

    :cond_37
    const/16 v10, 0x1f

    goto/16 :goto_6

    :sswitch_34
    const-string v11, "sm_face_beauty_smart_level"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_38

    goto/16 :goto_6

    :cond_38
    const/16 v10, 0x1e

    goto/16 :goto_6

    :sswitch_35
    const-string v11, "sm_microphone_enabled"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_39

    goto/16 :goto_6

    :cond_39
    const/16 v10, 0x1d

    goto/16 :goto_6

    :sswitch_36
    const-string v11, "sm_smart_composition"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    goto/16 :goto_6

    :cond_3a
    const/16 v10, 0x1c

    goto/16 :goto_6

    :sswitch_37
    const-string v11, "sm_dc_cam_combo"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3b

    goto/16 :goto_6

    :cond_3b
    const/16 v10, 0x1b

    goto/16 :goto_6

    :sswitch_38
    const-string v11, "sm_capture_action"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3c

    goto/16 :goto_6

    :cond_3c
    const/16 v10, 0x1a

    goto/16 :goto_6

    :sswitch_39
    const-string v11, "sm_water_mark"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    goto/16 :goto_6

    :cond_3d
    const/16 v10, 0x19

    goto/16 :goto_6

    :sswitch_3a
    const-string v11, "sm_face_beauty_nose_slim_level"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    goto/16 :goto_6

    :cond_3e
    const/16 v10, 0x18

    goto/16 :goto_6

    :sswitch_3b
    const-string v11, "sm_geo_loc_enable"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3f

    goto/16 :goto_6

    :cond_3f
    const/16 v10, 0x17

    goto/16 :goto_6

    :sswitch_3c
    const-string v11, "sm_audio_zoom"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_40

    goto/16 :goto_6

    :cond_40
    const/16 v10, 0x16

    goto/16 :goto_6

    :sswitch_3d
    const-string v11, "sm_face_beauty_face_slim_level"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    goto/16 :goto_6

    :cond_41
    const/16 v10, 0x15

    goto/16 :goto_6

    :sswitch_3e
    const-string v11, "sm_dual_screen_animation"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_42

    goto/16 :goto_6

    :cond_42
    const/16 v10, 0x14

    goto/16 :goto_6

    :sswitch_3f
    const-string v11, "sm_storage"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    goto/16 :goto_6

    :cond_43
    const/16 v10, 0x13

    goto/16 :goto_6

    :sswitch_40
    const-string v11, "sm_dc_layout"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_44

    goto/16 :goto_6

    :cond_44
    const/16 v10, 0x12

    goto/16 :goto_6

    :sswitch_41
    const-string v11, "sm_ae_compensation"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_45

    goto/16 :goto_6

    :cond_45
    const/16 v10, 0x11

    goto/16 :goto_6

    :sswitch_42
    const-string v11, "sm_video_portrait_enabled"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_46

    goto/16 :goto_6

    :cond_46
    const/16 v10, 0x10

    goto/16 :goto_6

    :sswitch_43
    const-string v11, "sm_picture_size"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_47

    goto/16 :goto_6

    :cond_47
    const/16 v10, 0xf

    goto/16 :goto_6

    :sswitch_44
    const-string v11, "sm_timer"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    goto/16 :goto_6

    :cond_48
    const/16 v10, 0xe

    goto/16 :goto_6

    :sswitch_45
    const-string v11, "sm_flash"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_49

    goto/16 :goto_6

    :cond_49
    const/16 v10, 0xd

    goto/16 :goto_6

    :sswitch_46
    const-string v11, "sm_face_beauty_big_eyes_level"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    goto/16 :goto_6

    :cond_4a
    const/16 v10, 0xc

    goto/16 :goto_6

    :sswitch_47
    const-string v11, "sm_ssm_enabled"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4b

    goto/16 :goto_6

    :cond_4b
    const/16 v10, 0xb

    goto/16 :goto_6

    :sswitch_48
    const-string v11, "sm_dual_screen_review"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4c

    goto/16 :goto_6

    :cond_4c
    const/16 v10, 0xa

    goto/16 :goto_6

    :sswitch_49
    const-string v11, "sm_hdr"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4d

    goto/16 :goto_6

    :cond_4d
    const/16 v10, 0x9

    goto/16 :goto_6

    :sswitch_4a
    const-string v11, "sm_preview_size"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    goto/16 :goto_6

    :cond_4e
    const/16 v10, 0x8

    goto/16 :goto_6

    :sswitch_4b
    const-string v11, "sm_auto_focus_tracking"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4f

    goto :goto_6

    :cond_4f
    const/4 v10, 0x7

    goto :goto_6

    :sswitch_4c
    const-string v11, "sm_auto_smile_capture"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_50

    goto :goto_6

    :cond_50
    const/4 v10, 0x6

    goto :goto_6

    :sswitch_4d
    const-string v11, "sm_pro_leveler"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_51

    goto :goto_6

    :cond_51
    const/4 v10, 0x5

    goto :goto_6

    :sswitch_4e
    const-string v11, "sm_shutter_tone"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_52

    goto :goto_6

    :cond_52
    const/4 v10, 0x4

    goto :goto_6

    :sswitch_4f
    const-string v11, "sm_lls_enabled"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_53

    goto :goto_6

    :cond_53
    const/4 v10, 0x3

    goto :goto_6

    :sswitch_50
    const-string v11, "sm_zoom"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_54

    goto :goto_6

    :cond_54
    const/4 v10, 0x2

    goto :goto_6

    :sswitch_51
    const-string v11, "sm_mode"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_55

    goto :goto_6

    :cond_55
    const/4 v10, 0x1

    goto :goto_6

    :sswitch_52
    const-string v11, "sm_dtfe"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_56

    goto :goto_6

    :cond_56
    const/4 v10, 0x0

    :goto_6
    packed-switch v10, :pswitch_data_1

    new-instance v1, Ljava/io/IOException;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown field name while parsing SettingsMap:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_18
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_19
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_1a
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_1b
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_1c
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_1d
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_1e
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_1f
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_20
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_21
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_22
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_23
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_TIMESTAMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_24
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_25
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_26
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_27
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_28
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_29
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto/16 :goto_7

    :pswitch_2a
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_2b
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_2c
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_2d
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_2e
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_FACE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_2f
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_30
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_31
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_32
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_33
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_34
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_35
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_36
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_37
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_BIG_EYE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_38
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_39
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_3a
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_3b
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_3c
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_3d
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_3e
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_3f
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_40
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_41
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_42
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_7

    :pswitch_43
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_7
    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_57
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 17
    :goto_8
    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    goto/16 :goto_0

    :pswitch_44
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkSign:Z

    goto/16 :goto_0

    :pswitch_45
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    goto/16 :goto_0

    :pswitch_46
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    goto/16 :goto_0

    :pswitch_47
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    iput v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    goto/16 :goto_0

    :pswitch_48
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v9, Lcom/google/gson/reflect/TypeToken;

    const-class v10, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-direct {v9, v10}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 19
    invoke-virtual {v8, v0, v9}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v8

    .line 20
    check-cast v8, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    goto/16 :goto_0

    .line 21
    :pswitch_49
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v8

    invoke-static {v8}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v8

    if-eq v8, v6, :cond_59

    if-ne v8, v5, :cond_58

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_11

    :cond_58
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {v0, v4, v3}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_59
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    move/from16 v9, v21

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6e

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2

    goto/16 :goto_a

    :sswitch_53
    const-string v11, "md_motion_photos_allowed"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5a

    goto/16 :goto_a

    :cond_5a
    move/from16 v10, v28

    goto/16 :goto_b

    :sswitch_54
    const-string v11, "md_auto_enhance_state"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5b

    goto/16 :goto_a

    :cond_5b
    move/from16 v10, v29

    goto/16 :goto_b

    :sswitch_55
    const-string v11, "md_touch_location"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5c

    goto/16 :goto_a

    :cond_5c
    move/from16 v10, v30

    goto/16 :goto_b

    :sswitch_56
    const-string v11, "md_analytics_seq_id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5d

    goto/16 :goto_a

    :cond_5d
    move/from16 v10, v31

    goto/16 :goto_b

    :sswitch_57
    const-string v11, "md_focus_success"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5e

    goto/16 :goto_a

    :cond_5e
    move/from16 v10, v32

    goto/16 :goto_b

    :sswitch_58
    const-string v11, "md_analytics_is_caf"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5f

    goto/16 :goto_a

    :cond_5f
    move/from16 v10, v33

    goto/16 :goto_b

    :sswitch_59
    const-string v11, "md_focus_areas_supported"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_60

    goto/16 :goto_a

    :cond_60
    move/from16 v10, v34

    goto/16 :goto_b

    :sswitch_5a
    const-string v11, "md_analytic_lens_foc_dist"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_61

    goto/16 :goto_a

    :cond_61
    move/from16 v10, v35

    goto/16 :goto_b

    :sswitch_5b
    const-string v11, "md_analytic_photo_solid_time"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_62

    goto/16 :goto_a

    :cond_62
    move/from16 v10, v36

    goto/16 :goto_b

    :sswitch_5c
    const-string v11, "md_caf_supported"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    goto/16 :goto_a

    :cond_63
    move v10, v5

    goto/16 :goto_b

    :sswitch_5d
    const-string v11, "md_shutter_cb_time"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_64

    goto/16 :goto_a

    :cond_64
    move/from16 v10, v23

    goto/16 :goto_b

    :sswitch_5e
    const-string v11, "md_analytics_motion_viddur"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_65

    goto :goto_a

    :cond_65
    move/from16 v10, v24

    goto :goto_b

    :sswitch_5f
    const-string v11, "md_faces_detected"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_66

    goto :goto_a

    :cond_66
    move/from16 v10, v25

    goto :goto_b

    :sswitch_60
    const-string v11, "md_roi_touch_rect"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_67

    goto :goto_a

    :cond_67
    move v10, v9

    goto :goto_b

    :sswitch_61
    const-string v11, "md_analytic_sw_fl_fir_auto"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_68

    goto :goto_a

    :cond_68
    move/from16 v10, v22

    goto :goto_b

    :sswitch_62
    const-string v11, "md_timer_checkin"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_69

    goto :goto_a

    :cond_69
    move v10, v6

    goto :goto_b

    :sswitch_63
    const-string v11, "md_analytics_motion_saved"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6a

    goto :goto_a

    :cond_6a
    move/from16 v10, v27

    goto :goto_b

    :sswitch_64
    const-string v11, "md_focus_time"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6b

    goto :goto_a

    :cond_6b
    move v10, v4

    goto :goto_b

    :goto_a
    move/from16 v10, v26

    :goto_b
    const-string v11, "GsonUtility$ImageCaptureRecordTypeAdapterFactory"

    const-string v12, "-"

    packed-switch v10, :pswitch_data_2

    new-instance v1, Ljava/io/IOException;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown field name while parsing MetaDataBundle: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4a
    const-string v10, "MOTION_PHOTOS_ALLOWED"

    goto :goto_c

    :pswitch_4b
    const-string v10, "ANALYTICS_AUTO_ENHANCE_STATE"

    goto/16 :goto_e

    :pswitch_4c
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v12, v10

    if-ge v12, v6, :cond_6c

    goto/16 :goto_9

    :cond_6c
    :try_start_0
    new-instance v12, Landroid/graphics/PointF;

    aget-object v13, v10, v4

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aget-object v14, v10, v27

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v13, "TOUCH_LOCATION"

    invoke-virtual {v8, v13, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :catch_0
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unable to parse CR_TOUCH_LOCATION with input: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_4d
    const-string v10, "ANALYTICS_SEQID"

    goto :goto_d

    :pswitch_4e
    const-string v10, "FOCUS_SUCCESS"

    goto :goto_c

    :pswitch_4f
    const-string v10, "ANALYTICS_IS_CAF"

    goto :goto_c

    :pswitch_50
    const-string v10, "FOCUS_AREAS_SUPPORTED"

    goto :goto_c

    :pswitch_51
    const-string v10, "ANALYTICS_LENS_FOCUS_DISTANCE"

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v11

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_9

    :pswitch_52
    const-string v10, "ANALYTICS_PHOTO_SOLID_TIME"

    goto :goto_d

    :pswitch_53
    const-string v10, "CAF_SUPPORTED"

    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_9

    :pswitch_54
    const-string v10, "SHUTTER_CB_TIME"

    goto :goto_d

    :pswitch_55
    const-string v10, "ANALYTICS_MOTION_VIDDUR"

    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v11

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_9

    :pswitch_56
    const-string v10, "FACES_DETECTED"

    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_9

    :pswitch_57
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v12, v10

    if-ge v12, v9, :cond_6d

    goto/16 :goto_9

    :cond_6d
    :try_start_1
    new-instance v9, Landroid/graphics/Rect;

    aget-object v12, v10, v4

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget-object v13, v10, v27

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v14, v10, v6

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aget-object v15, v10, v22

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v9, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v12, "ROI_TOUCH_RECT"

    invoke-virtual {v8, v12, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    :catch_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Unable to parse CR_ROI_TOUCH_RECT with input: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :pswitch_58
    const-string v9, "ANALYTICS_SWFLASHFIREDONAUTO"

    goto :goto_f

    :pswitch_59
    const-string v9, "TIMER_CHECKIN"

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_10

    :pswitch_5a
    const-string v9, "ANALYTICS_MOTION_SAVED"

    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_10

    :pswitch_5b
    const-string v9, "FOCUS_TIME"

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_10
    const/4 v9, 0x4

    goto/16 :goto_9

    :cond_6e
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 25
    :goto_11
    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    goto/16 :goto_0

    :pswitch_5c
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    iput v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    goto/16 :goto_0

    :pswitch_5d
    new-instance v9, Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v10, Lcom/google/gson/reflect/TypeToken;

    const-class v11, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v10, v11}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 27
    invoke-virtual {v8, v0, v10}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v8

    .line 28
    check-cast v8, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v9, v8}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    iput-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    goto/16 :goto_0

    :pswitch_5e
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    iput v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownJobs:I

    goto/16 :goto_0

    :pswitch_5f
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    goto/16 :goto_0

    :pswitch_60
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_61
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    iput v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    goto/16 :goto_0

    :pswitch_62
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v8

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    goto/16 :goto_0

    :pswitch_63
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/ShotType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/ShotType;

    move-result-object v8

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    goto/16 :goto_0

    .line 29
    :pswitch_64
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v8

    invoke-static {v8}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v8

    if-eq v8, v6, :cond_70

    if-ne v8, v5, :cond_6f

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_1a

    :cond_6f
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {v0, v4, v3}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_70
    const-string v8, "LOCATION"

    .line 32
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_84

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_3

    goto/16 :goto_13

    :sswitch_65
    const-string v12, "sb_uuid"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_71

    goto/16 :goto_13

    :cond_71
    const/16 v11, 0x11

    goto/16 :goto_13

    :sswitch_66
    const-string v12, "sb_document_width"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_72

    goto/16 :goto_13

    :cond_72
    const/16 v11, 0x10

    goto/16 :goto_13

    :sswitch_67
    const-string v12, "sb_alt_sht_idx"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_73

    goto/16 :goto_13

    :cond_73
    const/16 v11, 0xf

    goto/16 :goto_13

    :sswitch_68
    const-string v12, "sb_rev_req"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_74

    goto/16 :goto_13

    :cond_74
    const/16 v11, 0xe

    goto/16 :goto_13

    :sswitch_69
    const-string v12, "sb_cap_typ"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_75

    goto/16 :goto_13

    :cond_75
    const/16 v11, 0xd

    goto/16 :goto_13

    :sswitch_6a
    const-string v12, "sb_cap_trg"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_76

    goto/16 :goto_13

    :cond_76
    const/16 v11, 0xc

    goto/16 :goto_13

    :sswitch_6b
    const-string v12, "sb_cap_timestmp"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_77

    goto/16 :goto_13

    :cond_77
    const/16 v11, 0xb

    goto/16 :goto_13

    :sswitch_6c
    const-string v12, "sb_multi_shot_ct"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_78

    goto/16 :goto_13

    :cond_78
    const/16 v11, 0xa

    goto/16 :goto_13

    :sswitch_6d
    const-string v12, "sb_alt_shot"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_79

    goto/16 :goto_13

    :cond_79
    const/16 v11, 0x9

    goto/16 :goto_13

    :sswitch_6e
    const-string v12, "sb_key_cod"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7a

    goto/16 :goto_13

    :cond_7a
    const/16 v11, 0x8

    goto/16 :goto_13

    :sswitch_6f
    const-string v12, "sb_rev_accept"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7b

    goto :goto_13

    :cond_7b
    const/4 v11, 0x7

    goto :goto_13

    :sswitch_70
    const-string v12, "sb_cap_auto_cap_typ"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7c

    goto :goto_13

    :cond_7c
    const/4 v11, 0x6

    goto :goto_13

    :sswitch_71
    const-string v12, "sb_loc"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7d

    goto :goto_13

    :cond_7d
    const/4 v11, 0x5

    goto :goto_13

    :sswitch_72
    const-string v12, "sb_on_down"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7e

    goto :goto_13

    :cond_7e
    const/4 v11, 0x4

    goto :goto_13

    :sswitch_73
    const-string v12, "sb_document_points"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7f

    goto :goto_13

    :cond_7f
    const/4 v11, 0x3

    goto :goto_13

    :sswitch_74
    const-string v12, "sb_document_height"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_80

    goto :goto_13

    :cond_80
    const/4 v11, 0x2

    goto :goto_13

    :sswitch_75
    const-string v12, "sb_timer"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_81

    goto :goto_13

    :cond_81
    const/4 v11, 0x1

    goto :goto_13

    :sswitch_76
    const-string v12, "sb_on_up"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_82

    goto :goto_13

    :cond_82
    const/4 v11, 0x0

    :goto_13
    packed-switch v11, :pswitch_data_3

    new-instance v1, Ljava/io/IOException;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown field name while parsing ShotBundle: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_65
    const-string v10, "UUID"

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :pswitch_66
    const-string v10, "DOCUMENT_WIDTH"

    goto/16 :goto_18

    :pswitch_67
    const-string v10, "alternate_shot_index_"

    goto/16 :goto_18

    :pswitch_68
    const-string v10, "REVIEW_REQUIRED"

    goto :goto_15

    :pswitch_69
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    move-result-object v10

    const-string v11, "CAPTURE_TYPE"

    goto :goto_14

    :pswitch_6a
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    move-result-object v10

    const-string v11, "CAPTURE_TRIGGER"

    :goto_14
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_12

    :pswitch_6b
    const-string v10, "CAPTURE_TIMESTAMP"

    goto/16 :goto_19

    :pswitch_6c
    const-string v10, "MULTI_SHOT_COUNT"

    goto/16 :goto_18

    :pswitch_6d
    const-string v10, "ALTERNATE_SHOT"

    goto :goto_15

    :pswitch_6e
    const-string v10, "KEY_CODE"

    goto/16 :goto_18

    :pswitch_6f
    const-string v10, "REVIEW_ACCEPT"

    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_12

    :pswitch_70
    const-string v10, "CAPTURE_AUTO_CAPTURE_TYPE"

    goto/16 :goto_18

    :pswitch_71
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    :try_start_2
    new-instance v11, Landroid/graphics/PointF;

    aget-object v12, v10, v4

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    aget-object v13, v10, v27

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v9, v8, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    goto :goto_16

    :catch_2
    :try_start_3
    const-string v11, "GsonUtility$ImageCaptureRecordTypeAdapterFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to parse SB_LOCATION with input: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v10, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v10, v27

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v9, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_12

    :goto_16
    invoke-virtual {v9, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    throw v0

    :pswitch_72
    const-string v10, "ON_DOWN"

    goto :goto_19

    :pswitch_73
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_83

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_83
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    const-string v11, "DOCUMENT_POINTS"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_12

    :pswitch_74
    const-string v10, "DOCUMENT_HEIGHT"

    goto :goto_18

    :pswitch_75
    const-string v10, "TIMER"

    :goto_18
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_12

    :pswitch_76
    const-string v10, "ON_UP"

    :goto_19
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_12

    :cond_84
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    move-object v8, v9

    .line 33
    :goto_1a
    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    goto/16 :goto_0

    :cond_85
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x76992007 -> :sswitch_26
        -0x7690c6a1 -> :sswitch_25
        -0x61757c69 -> :sswitch_24
        -0x59ef92ca -> :sswitch_23
        -0x51865475 -> :sswitch_22
        -0x50c96bc9 -> :sswitch_21
        -0x4feeccaf -> :sswitch_20
        -0x4e77b492 -> :sswitch_1f
        -0x4577865c -> :sswitch_1e
        -0x3fc3725c -> :sswitch_1d
        -0x35fe9b05 -> :sswitch_1c
        -0x35fdb247 -> :sswitch_1b
        -0x299f3801 -> :sswitch_1a
        -0x25846a1e -> :sswitch_19
        -0x838496f -> :sswitch_18
        -0x743c513 -> :sswitch_17
        -0x4a650f1 -> :sswitch_16
        -0x41f60e6 -> :sswitch_15
        0x1b828 -> :sswitch_14
        0x35ceb8 -> :sswitch_13
        0x36f3bb -> :sswitch_12
        0x6519a0f -> :sswitch_11
        0xbc82555 -> :sswitch_10
        0xe41fe2b -> :sswitch_f
        0x1eca281e -> :sswitch_e
        0x20bbf21b -> :sswitch_d
        0x20e61d15 -> :sswitch_c
        0x2115c512 -> :sswitch_b
        0x2ad798d1 -> :sswitch_a
        0x3330c030 -> :sswitch_9
        0x36389022 -> :sswitch_8
        0x36c27462 -> :sswitch_7
        0x3c42dadb -> :sswitch_6
        0x4ec21cfb -> :sswitch_5
        0x51b2d974 -> :sswitch_4
        0x72975361 -> :sswitch_3
        0x73998cf7 -> :sswitch_2
        0x78bfdfaf -> :sswitch_1
        0x799ca431 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

    :sswitch_data_1
    .sparse-switch
        -0x7d2937ec -> :sswitch_52
        -0x7d253398 -> :sswitch_51
        -0x7d1f4968 -> :sswitch_50
        -0x79d41870 -> :sswitch_4f
        -0x7540cbb7 -> :sswitch_4e
        -0x598116c6 -> :sswitch_4d
        -0x55ecff7c -> :sswitch_4c
        -0x4a5a8a97 -> :sswitch_4b
        -0x459a3023 -> :sswitch_4a
        -0x3595ec6f -> :sswitch_49
        -0x338485f3 -> :sswitch_48
        -0x332bb756 -> :sswitch_47
        -0x2c8cc334 -> :sswitch_46
        -0x27e54a35 -> :sswitch_45
        -0x272132e0 -> :sswitch_44
        -0x23385799 -> :sswitch_43
        -0x1f851e9a -> :sswitch_42
        -0xf1e7350 -> :sswitch_41
        -0x876f0bb -> :sswitch_40
        -0x59f026a -> :sswitch_3f
        -0x5965f51 -> :sswitch_3e
        -0x1aca8e2 -> :sswitch_3d
        0x8b9e1a1 -> :sswitch_3c
        0x96ab195 -> :sswitch_3b
        0xf8017e8 -> :sswitch_3a
        0x21433bfa -> :sswitch_39
        0x221ab9d4 -> :sswitch_38
        0x29496f23 -> :sswitch_37
        0x35fd6d8f -> :sswitch_36
        0x3cbfd731 -> :sswitch_35
        0x40f8a488 -> :sswitch_34
        0x41d9e26b -> :sswitch_33
        0x43474996 -> :sswitch_32
        0x43970df9 -> :sswitch_31
        0x4abe29fe -> :sswitch_30
        0x54a0e48c -> :sswitch_2f
        0x63007a39 -> :sswitch_2e
        0x6300c53a -> :sswitch_2d
        0x6e458faf -> :sswitch_2c
        0x6e6cb7b3 -> :sswitch_2b
        0x6e9056c4 -> :sswitch_2a
        0x7b961c3b -> :sswitch_29
        0x7d4636e9 -> :sswitch_28
        0x7ef3f85a -> :sswitch_27
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6e084e84 -> :sswitch_64
        -0x5aa2df81 -> :sswitch_63
        -0x4903cb75 -> :sswitch_62
        -0x3f5780d9 -> :sswitch_61
        -0x2928b921 -> :sswitch_60
        -0x1b76016d -> :sswitch_5f
        0xbce0558 -> :sswitch_5e
        0x14fd79b3 -> :sswitch_5d
        0x164c004f -> :sswitch_5c
        0x17057ad8 -> :sswitch_5b
        0x1eff71a2 -> :sswitch_5a
        0x267f4f26 -> :sswitch_59
        0x3ae1ebb4 -> :sswitch_58
        0x465eaef4 -> :sswitch_57
        0x4b35397c -> :sswitch_56
        0x5e36485d -> :sswitch_55
        0x5ec0ccd8 -> :sswitch_54
        0x707f9eeb -> :sswitch_53
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x6d4a20f5 -> :sswitch_76
        -0x6d05beab -> :sswitch_75
        -0x6c20c125 -> :sswitch_74
        -0x5decf569 -> :sswitch_73
        -0x434d66ee -> :sswitch_72
        -0x3630deb0 -> :sswitch_71
        -0x3321d6b5 -> :sswitch_70
        -0x322de3ec -> :sswitch_6f
        -0x24d60258 -> :sswitch_6e
        -0x1aeb7840 -> :sswitch_6d
        -0x897a720 -> :sswitch_6c
        0x2534ddce -> :sswitch_6b
        0x2ca62dcc -> :sswitch_6a
        0x2ca62eae -> :sswitch_69
        0x4d4b8d12 -> :sswitch_68
        0x505fe0b7 -> :sswitch_67
        0x6070f992 -> :sswitch_66
        0x701937ab -> :sswitch_65
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch
.end method

.method public final bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p0

    return-object p0
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 34

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_29

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    const-string v2, "play_shutter"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "mcf_capture"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eqz v2, :cond_1

    const-string v2, "inst_typ"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eqz v2, :cond_2

    const-string v2, "reproc_typ"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eqz v2, :cond_3

    const-string v2, "scn_mod"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_3
    const-string v2, "priority"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "raw"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "ultra_wide_front"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mUltraWideFront:Z

    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "segm"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "is_bg_proc"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "is_watermark_enabled"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkSign:Z

    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "is_watermark_ts_enabled"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkTs:Z

    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "ms_count"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    if-eqz v2, :cond_4

    const-string v2, "seq_id"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_4
    const-string v2, "ses_id"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "cap_time"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-wide v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    if-eqz v2, :cond_5

    const-string v2, "file_name"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    if-eqz v2, :cond_6

    const-string v2, "media_file"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_6
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    if-eqz v2, :cond_7

    const-string v2, "gps_loc"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_7
    const-string v2, "orien"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-eqz v2, :cond_8

    const-string v2, "shot_type"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_8
    const-string v2, "cap_mod"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "rec_ext_info"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mRecordExtendedInfo:Z

    invoke-virtual {v2, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "elaps_intr_str"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-wide v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "cam_typ"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "cam_id"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "cam_fac_id"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "anly_log"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    invoke-virtual {v2, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "ext_bfr_done"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z

    invoke-virtual {v2, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "uuid"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-wide v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "auto_enhance"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-boolean v4, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    invoke-virtual {v2, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "d_count"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownCount:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "d_duration"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget-wide v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownDuration:J

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "d_jobs"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownJobs:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v15, "-"

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    if-eqz v2, :cond_21

    const-string v2, "shot_bndl"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    if-nez v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_11

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_20

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v4, v25

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v25

    const-string v5, "REVIEW_ACCEPT"

    const-string v6, "CAPTURE_AUTO_CAPTURE_TYPE"

    const-string v7, "ALTERNATE_SHOT"

    const-string v8, "MULTI_SHOT_COUNT"

    const-string v9, "KEY_CODE"

    const-string v10, "alternate_shot_index_"

    const-string v11, "REVIEW_REQUIRED"

    const-string v12, "DOCUMENT_WIDTH"

    const-string v13, "CAPTURE_TRIGGER"

    const-string v14, "TIMER"

    move-object/from16 v26, v3

    const-string v3, "ON_UP"

    move-object/from16 v27, v1

    const-string v1, "UUID"

    move-object/from16 v28, v15

    const-string v15, "ON_DOWN"

    move-object/from16 v29, v2

    const-string v2, "CAPTURE_TYPE"

    const-string v0, "CAPTURE_TIMESTAMP"

    move-object/from16 v30, v0

    const-string v0, "LOCATION"

    move-object/from16 v31, v0

    const-string v0, "DOCUMENT_POINTS"

    move-object/from16 v32, v0

    const-string v0, "DOCUMENT_HEIGHT"

    sparse-switch v25, :sswitch_data_0

    :goto_1
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    const/16 v4, 0x11

    goto/16 :goto_6

    :sswitch_1
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    const/16 v4, 0x10

    goto/16 :goto_6

    :sswitch_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    const/16 v4, 0xf

    goto/16 :goto_6

    :sswitch_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_1

    :cond_d
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    const/16 v4, 0xe

    goto/16 :goto_6

    :sswitch_4
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_1

    :cond_e
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    const/16 v4, 0xd

    goto/16 :goto_6

    :sswitch_5
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_1

    :cond_f
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    const/16 v4, 0xc

    goto/16 :goto_6

    :sswitch_6
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_1

    :cond_10
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    const/16 v4, 0xb

    goto/16 :goto_6

    :sswitch_7
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_1

    :cond_11
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    const/16 v4, 0xa

    goto/16 :goto_6

    :sswitch_8
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_1

    :cond_12
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    const/16 v4, 0x9

    goto/16 :goto_6

    :sswitch_9
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_1

    :cond_13
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    const/16 v4, 0x8

    goto/16 :goto_6

    :sswitch_a
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_1

    :cond_14
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    const/4 v4, 0x7

    goto/16 :goto_6

    :sswitch_b
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_1

    :cond_15
    move/from16 v4, v16

    goto :goto_2

    :sswitch_c
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_1

    :cond_16
    move/from16 v4, v17

    goto :goto_2

    :sswitch_d
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    move/from16 v4, v23

    goto :goto_2

    :cond_17
    move/from16 v4, v18

    :goto_2
    move-object/from16 v25, v15

    move-object/from16 v15, v30

    goto :goto_3

    :sswitch_e
    move-object/from16 v25, v15

    move-object/from16 v15, v30

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    move/from16 v4, v23

    goto :goto_3

    :cond_18
    move/from16 v4, v19

    :goto_3
    move-object/from16 v30, v15

    move-object/from16 v15, v31

    goto :goto_4

    :sswitch_f
    move-object/from16 v25, v15

    move-object/from16 v15, v31

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move/from16 v4, v23

    goto :goto_4

    :cond_19
    move/from16 v4, v20

    :goto_4
    move-object/from16 v31, v15

    move-object/from16 v15, v32

    goto :goto_6

    :sswitch_10
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_5

    :cond_1a
    move/from16 v4, v21

    goto :goto_6

    :sswitch_11
    move-object/from16 v25, v15

    move-object/from16 v15, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_5

    :cond_1b
    move/from16 v4, v22

    goto :goto_6

    :goto_5
    move/from16 v4, v23

    :goto_6
    packed-switch v4, :pswitch_data_0

    move-object/from16 v4, p1

    move-object/from16 v3, v28

    move-object/from16 v1, v29

    goto/16 :goto_10

    :pswitch_0
    const-string v0, "sb_rev_accept"

    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    move-object/from16 v15, v29

    invoke-virtual {v15, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7

    :pswitch_1
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    const-string v0, "sb_cap_auto_cap_typ"

    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v15, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_8

    :pswitch_2
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    const-string v0, "sb_alt_shot"

    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v15, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7

    :pswitch_3
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    const-string v0, "sb_multi_shot_ct"

    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v15, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    :pswitch_4
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    const-string v0, "sb_key_cod"

    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v15, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    :pswitch_5
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    const-string v0, "sb_alt_sht_idx"

    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v15, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    :pswitch_6
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    const-string v0, "sb_rev_req"

    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v15, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_7
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_c

    :pswitch_7
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    const-string v0, "sb_document_width"

    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v15, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    :pswitch_8
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    invoke-virtual {v15, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-eqz v0, :cond_1c

    const-string v1, "sb_cap_trg"

    goto :goto_9

    :pswitch_9
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    const-string v0, "sb_timer"

    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v15, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_8
    int-to-long v1, v1

    goto :goto_b

    :pswitch_a
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    const-string v0, "sb_on_up"

    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v15, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_b

    :pswitch_b
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    const-string v0, "sb_uuid"

    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v15, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    goto :goto_c

    :pswitch_c
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    const-string v0, "sb_on_down"

    move-object/from16 v1, v25

    goto :goto_a

    :pswitch_d
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-eqz v0, :cond_1c

    const-string v1, "sb_cap_typ"

    :goto_9
    invoke-virtual {v4, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v28

    goto :goto_d

    :pswitch_e
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    move-object/from16 v0, v30

    const-string v1, "sb_cap_timestmp"

    move-object/from16 v33, v1

    move-object v1, v0

    move-object/from16 v0, v33

    :goto_a
    invoke-virtual {v4, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v15, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_b
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    :cond_1c
    :goto_c
    move-object v1, v15

    move-object/from16 v3, v28

    goto/16 :goto_10

    :pswitch_f
    move-object/from16 v4, p1

    move-object/from16 v15, v29

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_1d

    const-string v1, "sb_loc"

    invoke-virtual {v4, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    goto :goto_e

    :cond_1d
    move-object/from16 v3, v28

    :goto_e
    move-object v1, v15

    goto :goto_10

    :pswitch_10
    move-object/from16 v4, p1

    move-object/from16 v3, v28

    move-object/from16 v1, v29

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v2, "sb_document_points"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto :goto_f

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->endArray()V

    goto :goto_10

    :pswitch_11
    move-object/from16 v4, p1

    move-object/from16 v3, v28

    move-object/from16 v1, v29

    const-string v2, "sb_document_height"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v2, v5, v6}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    :cond_1f
    :goto_10
    move-object v2, v1

    move-object v15, v3

    move-object v0, v4

    move-object/from16 v3, v26

    move-object/from16 v1, v27

    goto/16 :goto_0

    :cond_20
    move-object v4, v0

    move-object/from16 v27, v1

    move-object/from16 v26, v3

    move-object v3, v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    goto :goto_12

    :cond_21
    :goto_11
    move-object v4, v0

    move-object/from16 v27, v1

    move-object/from16 v26, v3

    move-object v3, v15

    :goto_12
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    if-eqz v1, :cond_24

    const-string v1, "setting_map"

    invoke-virtual {v4, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    if-eqz v1, :cond_23

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_13

    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    const-string v2, "sm_geo_loc_enable"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_storage"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_shutter_tone"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_preview_size"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_mode"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_ssm_enabled"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_face_beauty"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_face_beauty_level"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_gesture_capture"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_auto_smile_capture"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_water_mark"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_watermark_timestamp"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_TIMESTAMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_dual_screen_review"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_dual_screen_animation"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_dual_screen_preview"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_timer"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_flash"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_focus_mode"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_capture_action"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_picture_size"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_ae_compensation"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_dtfe"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_zoom"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_zoom_segment"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_smart_composition"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_hdr"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_dc_layout"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_dc_cam_combo"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_lls_enabled"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_assistive_grid"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_pro_leveler"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_front_mirror"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_microphone_enabled"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_audio_zoom"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_auto_focus_tracking"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_video_portrait_enabled"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_video_portrait_level"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_face_beauty_smart_level"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_face_beauty_smooth_level"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_face_beauty_toning_level"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_face_beauty_toning_type"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_face_beauty_big_eyes_level"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_BIG_EYE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_face_beauty_nose_slim_level"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "sm_face_beauty_face_slim_level"

    invoke-virtual {v4, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_FACE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    goto :goto_14

    :cond_23
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    :cond_24
    :goto_14
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3b

    const-string v1, "meta_data"

    invoke-virtual {v4, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    if-nez v1, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_27

    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "TIMER_CHECKIN"

    const-string v8, "SHUTTER_CB_TIME"

    const-string v9, "ANALYTICS_AUTO_ENHANCE_STATE"

    const-string v10, "ANALYTICS_LENS_FOCUS_DISTANCE"

    const-string v11, "CAF_SUPPORTED"

    const-string v12, "ANALYTICS_SWFLASHFIREDONAUTO"

    const-string v13, "ROI_TOUCH_RECT"

    const-string v14, "FACES_DETECTED"

    const-string v15, "ANALYTICS_MOTION_VIDDUR"

    move-object/from16 v24, v2

    const-string v2, "FOCUS_SUCCESS"

    move-object/from16 v27, v0

    const-string v0, "ANALYTICS_PHOTO_SOLID_TIME"

    move-object/from16 v28, v3

    const-string v3, "FOCUS_TIME"

    move-object/from16 v25, v1

    const-string v1, "FOCUS_AREAS_SUPPORTED"

    const-string v4, "ANALYTICS_MOTION_SAVED"

    move-object/from16 v29, v4

    const-string v4, "ANALYTICS_SEQID"

    move-object/from16 v30, v4

    const-string v4, "MOTION_PHOTOS_ALLOWED"

    move-object/from16 v31, v4

    const-string v4, "ANALYTICS_IS_CAF"

    move-object/from16 v32, v4

    const-string v4, "TOUCH_LOCATION"

    sparse-switch v6, :sswitch_data_1

    :goto_16
    move-object/from16 v6, v32

    move-object/from16 v33, v29

    move-object/from16 v29, v1

    move-object/from16 v1, v30

    move-object/from16 v30, v33

    goto/16 :goto_1b

    :sswitch_12
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    goto :goto_16

    :cond_26
    const/16 v5, 0x11

    goto/16 :goto_17

    :sswitch_13
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_16

    :cond_27
    const/16 v5, 0x10

    goto/16 :goto_17

    :sswitch_14
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    goto :goto_16

    :cond_28
    const/16 v5, 0xf

    goto/16 :goto_17

    :sswitch_15
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_16

    :cond_29
    const/16 v5, 0xe

    goto/16 :goto_17

    :sswitch_16
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_16

    :cond_2a
    const/16 v5, 0xd

    goto :goto_17

    :sswitch_17
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_16

    :cond_2b
    const/16 v5, 0xc

    goto :goto_17

    :sswitch_18
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_16

    :cond_2c
    const/16 v5, 0xb

    goto :goto_17

    :sswitch_19
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_16

    :cond_2d
    const/16 v5, 0xa

    goto :goto_17

    :sswitch_1a
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto :goto_16

    :cond_2e
    const/16 v5, 0x9

    goto :goto_17

    :sswitch_1b
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_16

    :cond_2f
    const/16 v5, 0x8

    goto :goto_17

    :sswitch_1c
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_16

    :cond_30
    const/4 v5, 0x7

    goto :goto_17

    :sswitch_1d
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    goto/16 :goto_16

    :cond_31
    move/from16 v5, v16

    goto :goto_17

    :sswitch_1e
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    goto/16 :goto_16

    :cond_32
    move/from16 v5, v17

    :goto_17
    move-object/from16 v6, v32

    move-object/from16 v33, v29

    move-object/from16 v29, v1

    move-object/from16 v1, v30

    move-object/from16 v30, v33

    goto/16 :goto_1c

    :sswitch_1f
    move-object/from16 v6, v29

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    move/from16 v5, v23

    goto :goto_18

    :cond_33
    move/from16 v5, v18

    :goto_18
    move-object/from16 v29, v1

    move-object/from16 v1, v30

    goto :goto_19

    :sswitch_20
    move-object/from16 v6, v29

    move-object/from16 v29, v1

    move-object/from16 v1, v30

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    move/from16 v5, v23

    goto :goto_19

    :cond_34
    move/from16 v5, v19

    :goto_19
    move-object/from16 v30, v6

    move-object/from16 v6, v31

    goto :goto_1a

    :sswitch_21
    move-object/from16 v6, v31

    move-object/from16 v33, v29

    move-object/from16 v29, v1

    move-object/from16 v1, v30

    move-object/from16 v30, v33

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    move/from16 v5, v23

    goto :goto_1a

    :cond_35
    move/from16 v5, v20

    :goto_1a
    move-object/from16 v31, v6

    move-object/from16 v6, v32

    goto :goto_1c

    :sswitch_22
    move-object/from16 v6, v32

    move-object/from16 v33, v29

    move-object/from16 v29, v1

    move-object/from16 v1, v30

    move-object/from16 v30, v33

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_1b

    :cond_36
    move/from16 v5, v21

    goto :goto_1c

    :sswitch_23
    move-object/from16 v6, v32

    move-object/from16 v33, v29

    move-object/from16 v29, v1

    move-object/from16 v1, v30

    move-object/from16 v30, v33

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_1b

    :cond_37
    move/from16 v5, v22

    goto :goto_1c

    :goto_1b
    move/from16 v5, v23

    :goto_1c
    packed-switch v5, :pswitch_data_1

    move-object/from16 v5, p1

    move-object/from16 v0, v25

    move-object/from16 v7, v28

    goto/16 :goto_26

    :pswitch_12
    const-string v0, "md_timer_checkin"

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    move-object/from16 v4, v25

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1d

    :pswitch_13
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    const-string v0, "md_shutter_cb_time"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v4, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v7, v28

    goto/16 :goto_22

    :pswitch_14
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    const-string v0, "md_auto_enhance_state"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_1d
    move-object/from16 v7, v28

    goto/16 :goto_20

    :pswitch_15
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    const-string v0, "md_analytic_lens_foc_dist"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v4, v10}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(D)V

    goto :goto_1f

    :pswitch_16
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    const-string v0, "md_caf_supported"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v4, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1e

    :pswitch_17
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    const-string v0, "md_analytic_sw_fl_fir_auto"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_1e
    move-object/from16 v7, v28

    goto/16 :goto_24

    :pswitch_18
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_38

    const-string v1, "md_roi_touch_rect"

    invoke-virtual {v5, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v28

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_38
    :goto_1f
    move-object/from16 v7, v28

    goto/16 :goto_25

    :pswitch_19
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    move-object/from16 v7, v28

    const-string v0, "md_faces_detected"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v4, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_20
    int-to-long v1, v1

    goto/16 :goto_22

    :pswitch_1a
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    move-object/from16 v7, v28

    const-string v0, "md_analytics_motion_viddur"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v4, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto/16 :goto_22

    :pswitch_1b
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    move-object/from16 v7, v28

    const-string v0, "md_focus_success"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_24

    :pswitch_1c
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    move-object/from16 v7, v28

    const-string v1, "md_analytic_photo_solid_time"

    invoke-virtual {v5, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object v0, v1

    move-wide v1, v2

    goto :goto_22

    :pswitch_1d
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    move-object/from16 v7, v28

    const-string v0, "md_focus_time"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_22

    :pswitch_1e
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    move-object/from16 v7, v28

    const-string v0, "md_focus_areas_supported"

    move-object/from16 v1, v29

    goto :goto_21

    :pswitch_1f
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    move-object/from16 v7, v28

    move-object/from16 v0, v30

    const-string v1, "md_analytics_motion_saved"

    move-object/from16 v33, v1

    move-object v1, v0

    move-object/from16 v0, v33

    :goto_21
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    goto :goto_23

    :pswitch_20
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    move-object/from16 v7, v28

    const-string v0, "md_analytics_seq_id"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_22
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto :goto_25

    :pswitch_21
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    move-object/from16 v7, v28

    const-string v0, "md_motion_photos_allowed"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    move-object/from16 v1, v31

    :goto_23
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_24

    :pswitch_22
    move-object/from16 v5, p1

    move-object/from16 v4, v25

    move-object/from16 v7, v28

    const-string v0, "md_analytics_is_caf"

    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_24
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    :goto_25
    move-object v0, v4

    goto :goto_26

    :pswitch_23
    move-object/from16 v5, p1

    move-object/from16 v0, v25

    move-object/from16 v7, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    if-eqz v1, :cond_39

    const-string v2, "md_touch_location"

    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_39
    :goto_26
    move-object v1, v0

    move-object v4, v5

    move-object v3, v7

    move-object/from16 v2, v24

    move-object/from16 v0, v27

    goto/16 :goto_15

    :cond_3a
    move-object/from16 v27, v0

    move-object v5, v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    goto :goto_28

    :cond_3b
    :goto_27
    move-object/from16 v27, v0

    move-object v5, v4

    move-object/from16 v0, v27

    :goto_28
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v2, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    if-eqz v1, :cond_3c

    const-string v2, "imaging_model_aux_data"

    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    const-class v3, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    move-object/from16 v4, v26

    invoke-virtual {v4, v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_3c
    const-string v1, "use_exif_jpeg_as_backup"

    invoke-virtual {v5, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    invoke-virtual {v1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    :goto_29
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7072a335 -> :sswitch_11
        -0x623ed779 -> :sswitch_10
        -0x600a704b -> :sswitch_f
        -0x517bb0e3 -> :sswitch_e
        -0x46650b4d -> :sswitch_d
        -0x227ee0fe -> :sswitch_c
        0x27ebbb -> :sswitch_b
        0x47e24fb -> :sswitch_a
        0x4c20f25 -> :sswitch_9
        0xb0f557f -> :sswitch_8
        0x267ed982 -> :sswitch_7
        0x3df1a4a6 -> :sswitch_6
        0x45b15e6d -> :sswitch_5
        0x4e3fcbed -> :sswitch_4
        0x691f6a50 -> :sswitch_3
        0x735c63bf -> :sswitch_2
        0x76547c6a -> :sswitch_1
        0x7ec1c7cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

    :sswitch_data_1
    .sparse-switch
        -0x68f1932b -> :sswitch_23
        -0x617d95f4 -> :sswitch_22
        -0x5f59488d -> :sswitch_21
        -0x5533607f -> :sswitch_20
        -0x39b49f29 -> :sswitch_1f
        -0x25829c92 -> :sswitch_1e
        -0x1f68260c -> :sswitch_1d
        -0x16f52bf9 -> :sswitch_1c
        0x623975c -> :sswitch_1b
        0x8a7cfe0 -> :sswitch_1a
        0x1d62230b -> :sswitch_19
        0x257ad377 -> :sswitch_18
        0x283f4c69 -> :sswitch_17
        0x631970b7 -> :sswitch_16
        0x6619a2a4 -> :sswitch_15
        0x6a5f8a69 -> :sswitch_14
        0x6be44c3b -> :sswitch_13
        0x76c11cf3 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
