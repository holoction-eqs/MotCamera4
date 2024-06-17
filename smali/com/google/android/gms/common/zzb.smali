.class public final Lcom/google/android/gms/common/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/zzb;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/google/android/gms/common/zzb;->$r8$classId:I

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_1

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v27

    goto :goto_0

    :pswitch_2
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v26

    goto :goto_0

    :pswitch_3
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v25

    goto :goto_0

    :pswitch_4
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v24

    goto :goto_0

    :pswitch_5
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v23

    goto :goto_0

    :pswitch_6
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    :pswitch_7
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v21

    goto :goto_0

    :pswitch_8
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    :pswitch_9
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    :pswitch_a
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    :pswitch_b
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v17

    goto :goto_0

    :pswitch_c
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    :pswitch_d
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :pswitch_e
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

    move-object v13, v0

    invoke-direct/range {v13 .. v27}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_f
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v10, v9

    packed-switch v10, :pswitch_data_2

    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_1

    :pswitch_10
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v8}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;

    goto :goto_1

    :pswitch_11
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createStringArray(ILandroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_12
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v6}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    goto :goto_1

    :pswitch_13
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v5}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    goto :goto_1

    :pswitch_14
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_15
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_16
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v2}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;[Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;)V

    return-object v0

    :pswitch_17
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-wide v13, v4

    move v15, v10

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_6

    if-eq v3, v11, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_2

    :cond_2
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readLong(ILandroid/os/Parcel;)J

    move-result-wide v13

    goto :goto_2

    :cond_3
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v18

    goto :goto_2

    :cond_4
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v17

    goto :goto_2

    :cond_5
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v16

    goto :goto_2

    :cond_6
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v15

    goto :goto_2

    :cond_7
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zztf;

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zztf;-><init>(JIIII)V

    return-object v0

    :pswitch_18
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_a

    if-eq v4, v11, :cond_9

    if-eq v4, v9, :cond_8

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_3

    :cond_8
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_3

    :cond_9
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_a
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_b
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;

    invoke-direct {v0, v12, v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :pswitch_19
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_d

    if-eq v4, v11, :cond_c

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_4

    :cond_c
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_d
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_e
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;

    invoke-direct {v0, v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_10

    if-eq v4, v11, :cond_f

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_5

    :cond_f
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_10
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_11
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;

    invoke-direct {v0, v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_13

    if-eq v3, v11, :cond_12

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_6

    :cond_12
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_13
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_6

    :cond_14
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    invoke-direct {v0, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_1c
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v10, v9

    packed-switch v10, :pswitch_data_3

    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_7

    :pswitch_1d
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :pswitch_1e
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :pswitch_1f
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :pswitch_20
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :pswitch_21
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :pswitch_22
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :pswitch_23
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_15
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_24
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v10, v9

    packed-switch v10, :pswitch_data_4

    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_8

    :pswitch_25
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v8}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;

    goto :goto_8

    :pswitch_26
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v7}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;

    goto :goto_8

    :pswitch_27
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :pswitch_28
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :pswitch_29
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :pswitch_2a
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :pswitch_2b
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_16
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;)V

    return-object v0

    :pswitch_2c
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-wide v4, v2

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    if-eq v7, v8, :cond_18

    if-eq v7, v11, :cond_17

    invoke-static {v6, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_9

    :cond_17
    invoke-static {v6, v1}, Lkotlin/collections/ArraysUtilJVM;->readDouble(ILandroid/os/Parcel;)D

    move-result-wide v4

    goto :goto_9

    :cond_18
    invoke-static {v6, v1}, Lkotlin/collections/ArraysUtilJVM;->readDouble(ILandroid/os/Parcel;)D

    move-result-wide v2

    goto :goto_9

    :cond_19
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;-><init>(DD)V

    return-object v0

    :pswitch_2d
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    move-object v3, v2

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v8, :cond_1d

    if-eq v5, v11, :cond_1c

    if-eq v5, v9, :cond_1b

    if-eq v5, v7, :cond_1a

    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_a

    :cond_1a
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_1b
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_1c
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_1d
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_a

    :cond_1e
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    invoke-direct {v0, v10, v12, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2e
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_5

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_b

    :pswitch_2f
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v27

    goto :goto_b

    :pswitch_30
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v26

    goto :goto_b

    :pswitch_31
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v25

    goto :goto_b

    :pswitch_32
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v24

    goto :goto_b

    :pswitch_33
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v23

    goto :goto_b

    :pswitch_34
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v22

    goto :goto_b

    :pswitch_35
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v21

    goto :goto_b

    :pswitch_36
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v20

    goto :goto_b

    :pswitch_37
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v19

    goto :goto_b

    :pswitch_38
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v18

    goto :goto_b

    :pswitch_39
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v17

    goto :goto_b

    :pswitch_3a
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v16

    goto :goto_b

    :pswitch_3b
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_b

    :pswitch_3c
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    :cond_1f
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;

    move-object v13, v0

    invoke-direct/range {v13 .. v27}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_3d
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v0, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v10, v9

    packed-switch v10, :pswitch_data_6

    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_c

    :pswitch_3e
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v8}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;

    goto :goto_c

    :pswitch_3f
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createStringArray(ILandroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    :pswitch_40
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v6}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    goto :goto_c

    :pswitch_41
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v5}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    goto :goto_c

    :pswitch_42
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :pswitch_43
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :pswitch_44
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v2}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;

    goto :goto_c

    :cond_20
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;[Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;)V

    return-object v0

    :pswitch_45
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v0, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v10, v9

    packed-switch v10, :pswitch_data_7

    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_d

    :pswitch_46
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v8}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;

    goto :goto_d

    :pswitch_47
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v7}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;

    goto :goto_d

    :pswitch_48
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :pswitch_49
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :pswitch_4a
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :pswitch_4b
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :pswitch_4c
    invoke-static {v9, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_21
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;)V

    return-object v0

    :pswitch_4d
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v2, v10

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move-object v9, v12

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ge v10, v0, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v11, v10

    packed-switch v11, :pswitch_data_8

    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_e

    :pswitch_4e
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :pswitch_4f
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v8

    goto :goto_e

    :pswitch_50
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v7

    goto :goto_e

    :pswitch_51
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v6

    goto :goto_e

    :pswitch_52
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v5

    goto :goto_e

    :pswitch_53
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_e

    :pswitch_54
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_e

    :pswitch_55
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_e

    :cond_22
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;-><init>(IIIIIIZLjava/lang/String;)V

    return-object v0

    :pswitch_56
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v2, v10

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_24

    if-eq v4, v11, :cond_23

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_f

    :cond_23
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_f

    :cond_24
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_f

    :cond_25
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzso;

    invoke-direct {v0, v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzso;-><init>(IZ)V

    return-object v0

    :pswitch_57
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v14, v10

    move/from16 v19, v14

    move-object v15, v12

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v20, v18

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_9

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_10

    :pswitch_58
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;

    goto :goto_10

    :pswitch_59
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;

    goto :goto_10

    :pswitch_5a
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;

    goto :goto_10

    :pswitch_5b
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;

    goto :goto_10

    :pswitch_5c
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;

    goto :goto_10

    :pswitch_5d
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;

    goto :goto_10

    :pswitch_5e
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;

    goto :goto_10

    :pswitch_5f
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    goto :goto_10

    :pswitch_60
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    goto :goto_10

    :pswitch_61
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v19

    goto :goto_10

    :pswitch_62
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, [Landroid/graphics/Point;

    goto/16 :goto_10

    :pswitch_63
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createByteArray(ILandroid/os/Parcel;)[B

    move-result-object v17

    goto/16 :goto_10

    :pswitch_64
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_10

    :pswitch_65
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_10

    :pswitch_66
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v14

    goto/16 :goto_10

    :cond_26
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;

    move-object v13, v0

    invoke-direct/range {v13 .. v28}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;-><init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;)V

    return-object v0

    :pswitch_67
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v2, v10

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move-object v9, v12

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ge v10, v0, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v11, v10

    packed-switch v11, :pswitch_data_a

    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_11

    :pswitch_68
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    :pswitch_69
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v8

    goto :goto_11

    :pswitch_6a
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v7

    goto :goto_11

    :pswitch_6b
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v6

    goto :goto_11

    :pswitch_6c
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v5

    goto :goto_11

    :pswitch_6d
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_11

    :pswitch_6e
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_11

    :pswitch_6f
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_11

    :cond_27
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;-><init>(IIIIIIZLjava/lang/String;)V

    return-object v0

    :pswitch_70
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_29

    if-eq v3, v11, :cond_28

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_12

    :cond_28
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createStringArray(ILandroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v12

    goto :goto_12

    :cond_29
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_12

    :cond_2a
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;

    invoke-direct {v0, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;-><init>(I[Ljava/lang/String;)V

    return-object v0

    :pswitch_71
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-wide/from16 v30, v2

    move v14, v10

    move/from16 v17, v14

    move/from16 v29, v17

    move-object v15, v12

    move-object/from16 v16, v15

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_b

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_13

    :pswitch_72
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readDouble(ILandroid/os/Parcel;)D

    move-result-wide v30

    goto :goto_13

    :pswitch_73
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v29

    goto :goto_13

    :pswitch_74
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createByteArray(ILandroid/os/Parcel;)[B

    move-result-object v28

    goto :goto_13

    :pswitch_75
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

    goto :goto_13

    :pswitch_76
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;

    goto :goto_13

    :pswitch_77
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;

    goto :goto_13

    :pswitch_78
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;

    goto :goto_13

    :pswitch_79
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;

    goto :goto_13

    :pswitch_7a
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

    goto :goto_13

    :pswitch_7b
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    goto :goto_13

    :pswitch_7c
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    goto :goto_13

    :pswitch_7d
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    goto/16 :goto_13

    :pswitch_7e
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, [Landroid/graphics/Point;

    goto/16 :goto_13

    :pswitch_7f
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v17

    goto/16 :goto_13

    :pswitch_80
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_13

    :pswitch_81
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_13

    :pswitch_82
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v14

    goto/16 :goto_13

    :cond_2b
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    move-object v13, v0

    invoke-direct/range {v13 .. v31}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;-><init>(ILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;[BZD)V

    return-object v0

    :pswitch_83
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v11, :cond_2d

    if-eq v3, v9, :cond_2c

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_14

    :cond_2c
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createStringArray(ILandroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v12

    goto :goto_14

    :cond_2d
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_14

    :cond_2e
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;

    invoke-direct {v0, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;-><init>(I[Ljava/lang/String;)V

    return-object v0

    :pswitch_84
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-wide v13, v4

    move v15, v10

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v11, :cond_33

    if-eq v3, v9, :cond_32

    if-eq v3, v7, :cond_31

    if-eq v3, v6, :cond_30

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2f

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_15

    :cond_2f
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v18

    goto :goto_15

    :cond_30
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readLong(ILandroid/os/Parcel;)J

    move-result-wide v13

    goto :goto_15

    :cond_31
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v17

    goto :goto_15

    :cond_32
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v16

    goto :goto_15

    :cond_33
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v15

    goto :goto_15

    :cond_34
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;-><init>(JIIII)V

    return-object v0

    :pswitch_85
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v2, v10

    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_37

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v11, :cond_36

    if-eq v4, v9, :cond_35

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_16

    :cond_35
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_16

    :cond_36
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_16

    :cond_37
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;

    invoke-direct {v0, v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;-><init>(IZ)V

    return-object v0

    :pswitch_86
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v11, :cond_3a

    if-eq v4, v9, :cond_39

    if-eq v4, v7, :cond_38

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_17

    :cond_38
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_17

    :cond_39
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_3a
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_17

    :cond_3b
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

    invoke-direct {v0, v12, v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :pswitch_87
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v11, :cond_3d

    if-eq v4, v9, :cond_3c

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_18

    :cond_3c
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_3d
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_18

    :cond_3e
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;

    invoke-direct {v0, v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_88
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_41

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v11, :cond_40

    if-eq v4, v9, :cond_3f

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_19

    :cond_3f
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_40
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_19

    :cond_41
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    invoke-direct {v0, v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_89
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, -0x1

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_45

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v8, :cond_44

    if-eq v5, v11, :cond_43

    if-eq v5, v9, :cond_42

    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_1a

    :cond_42
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readLong(ILandroid/os/Parcel;)J

    move-result-wide v2

    goto :goto_1a

    :cond_43
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_1a

    :cond_44
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1a

    :cond_45
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/Feature;

    invoke-direct {v0, v12, v10, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;IJ)V

    return-object v0

    :pswitch_8a
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v14, v10

    move v15, v14

    move/from16 v18, v15

    move-object/from16 v16, v12

    move-object/from16 v17, v16

    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_4b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_4a

    if-eq v3, v11, :cond_49

    if-eq v3, v9, :cond_48

    if-eq v3, v7, :cond_47

    if-eq v3, v6, :cond_46

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_1b

    :cond_46
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v18

    goto :goto_1b

    :cond_47
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readLongObject(ILandroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v17

    goto :goto_1b

    :cond_48
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readLongObject(ILandroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v16

    goto :goto_1b

    :cond_49
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v15

    goto :goto_1b

    :cond_4a
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_1b

    :cond_4b
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;-><init>(IILjava/lang/Long;Ljava/lang/Long;I)V

    return-object v0

    :pswitch_8b
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v2, v10

    move-object v3, v12

    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_50

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v8, :cond_4f

    if-eq v5, v11, :cond_4e

    if-eq v5, v9, :cond_4d

    if-eq v5, v7, :cond_4c

    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_1c

    :cond_4c
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    :cond_4d
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v5}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/app/PendingIntent;

    goto :goto_1c

    :cond_4e
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_1c

    :cond_4f
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_1c

    :cond_50
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v0, v10, v2, v12, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0

    :goto_1d
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v12

    move-object v3, v2

    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_55

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v11, :cond_54

    if-eq v5, v9, :cond_53

    if-eq v5, v7, :cond_52

    if-eq v5, v6, :cond_51

    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_1e

    :cond_51
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    :cond_52
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_53
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1e

    :cond_54
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_1e

    :cond_55
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    invoke-direct {v0, v10, v12, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_71
        :pswitch_70
        :pswitch_67
        :pswitch_57
        :pswitch_56
        :pswitch_4d
        :pswitch_45
        :pswitch_3d
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
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
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x2
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/zzb;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zztf;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzso;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Lcom/google/android/gms/common/Feature;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Lcom/google/android/gms/common/ConnectionResult;

    return-object p0

    :goto_0
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
.end method
