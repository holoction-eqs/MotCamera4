.class Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapturedMediaDataTypeAdapter"
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

    iput-object p1, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;->mGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v1

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "expecting object: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->UNKNOWN:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const-wide/16 v6, -0x1

    move v8, v4

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    move-wide v12, v6

    move v4, v2

    move-object v5, v3

    move v3, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v15, "dat_siz"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto/16 :goto_1

    :cond_2
    move v14, v8

    goto/16 :goto_2

    :sswitch_1
    const-string v15, "byt_buf_url"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_1

    :cond_3
    const/4 v14, 0x7

    goto :goto_2

    :sswitch_2
    const-string v15, "raw_dat"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_1

    :cond_4
    const/4 v14, 0x6

    goto :goto_2

    :sswitch_3
    const-string v15, "cap_rec"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x5

    goto :goto_2

    :sswitch_4
    const-string v15, "cap_log"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_1

    :cond_6
    const/4 v14, 0x4

    goto :goto_2

    :sswitch_5
    const-string v15, "snap_typ"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_1

    :cond_7
    const/4 v14, 0x3

    goto :goto_2

    :sswitch_6
    const-string v15, "reproc_typ"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    goto :goto_1

    :cond_8
    const/4 v14, 0x2

    goto :goto_2

    :sswitch_7
    const-string v15, "mp_video_path"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_1

    :cond_9
    const/4 v14, 0x1

    goto :goto_2

    :sswitch_8
    const-string v15, "mp_video_duration"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_1

    :cond_a
    const/4 v14, 0x0

    goto :goto_2

    :goto_1
    const/4 v14, -0x1

    :goto_2
    packed-switch v14, :pswitch_data_0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown field name while parsing CapturedMediaData:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v3

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v2

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/google/gson/reflect/TypeToken;

    const-class v15, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v14, v15}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v9, v0, v14}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    goto :goto_3

    :pswitch_4
    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v4

    goto :goto_3

    :pswitch_5
    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-result-object v5

    goto :goto_3

    :pswitch_6
    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v1

    goto :goto_3

    :pswitch_7
    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :pswitch_8
    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v12

    :goto_3
    const/16 v14, 0x8

    move v8, v14

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    if-eqz v9, :cond_d

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v0, v9, v5, v2, v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    iput v3, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    iput-boolean v4, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    iput-object v10, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    if-eqz v11, :cond_c

    cmp-long v1, v12, v6

    if-eqz v1, :cond_c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setMotionVideoFile(Ljava/io/File;)V

    iput-wide v12, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideoPresentationOffsetUs:J

    :cond_c
    move-object v5, v0

    :goto_4
    return-object v5

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Json. Failed to deserialize Image Capture Record data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7555b50c -> :sswitch_8
        -0x340fee7b -> :sswitch_7
        0xbc82555 -> :sswitch_6
        0x10f1ec96 -> :sswitch_5
        0x20e61957 -> :sswitch_4
        0x20e62ea3 -> :sswitch_3
        0x3ac61700 -> :sswitch_2
        0x3f68da61 -> :sswitch_1
        0x5604cc3c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const-string v0, "byt_buf_url"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eqz v0, :cond_2

    const-string v0, "reproc_typ"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    if-eqz v0, :cond_3

    const-string v0, "snap_typ"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_3
    const-string v0, "raw_dat"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v0, "dat_siz"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    iget v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-eqz v0, :cond_4

    const-string v1, "mp_video_path"

    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v0, "mp_video_duration"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    iget-wide v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideoPresentationOffsetUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    :cond_4
    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-eqz v0, :cond_5

    const-string v1, "cap_rec"

    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    const-class v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object p0, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_5
    const-string p0, "cap_log"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object p0

    iget-boolean p2, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    invoke-virtual {p0, p2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    :goto_0
    return-void
.end method
