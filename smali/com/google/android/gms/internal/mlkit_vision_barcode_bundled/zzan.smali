.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;->$r8$classId:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v7

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v9, v8

    if-eq v9, v6, :cond_2

    if-eq v9, v5, :cond_1

    if-eq v9, v3, :cond_0

    invoke-static {v8, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v8, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-static {v8, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {v8, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;

    invoke-direct {v0, v7, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v7

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v6, :cond_5

    if-eq v4, v5, :cond_4

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_1

    :cond_4
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_6
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

    invoke-direct {v0, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v7

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v6, :cond_8

    if-eq v4, v5, :cond_7

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_2

    :cond_7
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_9
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    invoke-direct {v0, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v6, :cond_b

    if-eq v3, v5, :cond_a

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_3

    :cond_a
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_b
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_3

    :cond_c
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    invoke-direct {v0, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_1

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_4

    :pswitch_5
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :pswitch_6
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :pswitch_7
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :pswitch_8
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :pswitch_9
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :pswitch_a
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :pswitch_b
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_d
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_c
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, 0x0

    move-wide v7, v2

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v9, v4

    if-eq v9, v6, :cond_f

    if-eq v9, v5, :cond_e

    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_5

    :cond_e
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readDouble(ILandroid/os/Parcel;)D

    move-result-wide v7

    goto :goto_5

    :cond_f
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readDouble(ILandroid/os/Parcel;)D

    move-result-wide v2

    goto :goto_5

    :cond_10
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    invoke-direct {v0, v2, v3, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;-><init>(DD)V

    return-object v0

    :pswitch_d
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v8, v7

    move-object v9, v8

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ge v10, v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v11, v10

    if-eq v11, v6, :cond_14

    if-eq v11, v5, :cond_13

    if-eq v11, v3, :cond_12

    if-eq v11, v2, :cond_11

    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_6

    :cond_11
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_12
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_13
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_14
    invoke-static {v10, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_6

    :cond_15
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    invoke-direct {v0, v4, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_e
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_2

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_7

    :pswitch_f
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v22

    goto :goto_7

    :pswitch_10
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v21

    goto :goto_7

    :pswitch_11
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v20

    goto :goto_7

    :pswitch_12
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v19

    goto :goto_7

    :pswitch_13
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v18

    goto :goto_7

    :pswitch_14
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    :pswitch_15
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v16

    goto :goto_7

    :pswitch_16
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_7

    :pswitch_17
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    :pswitch_18
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :pswitch_19
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :pswitch_1a
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :pswitch_1b
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :pswitch_1c
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_16
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    move-object v8, v0

    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_3

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_8

    :pswitch_1e
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    goto :goto_8

    :pswitch_1f
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createStringArray(ILandroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v14

    goto :goto_8

    :pswitch_20
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    goto :goto_8

    :pswitch_21
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    goto :goto_8

    :pswitch_22
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :pswitch_23
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :pswitch_24
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;

    goto :goto_8

    :cond_17
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;[Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;)V

    return-object v0

    :pswitch_25
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_4

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_9

    :pswitch_26
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    goto :goto_9

    :pswitch_27
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    goto :goto_9

    :pswitch_28
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    :pswitch_29
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    :pswitch_2a
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :pswitch_2b
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :pswitch_2c
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_18
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;)V

    return-object v0

    :pswitch_2d
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v9, v4

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move-object/from16 v16, v7

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_5

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_a

    :pswitch_2e
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v16

    goto :goto_a

    :pswitch_2f
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v15

    goto :goto_a

    :pswitch_30
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_a

    :pswitch_31
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v13

    goto :goto_a

    :pswitch_32
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v12

    goto :goto_a

    :pswitch_33
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v11

    goto :goto_a

    :pswitch_34
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_a

    :pswitch_35
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v9

    goto :goto_a

    :cond_19
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;-><init>(IIIIIIZLjava/lang/String;)V

    return-object v0

    :pswitch_36
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v2, v4

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v7, v3

    if-eq v7, v6, :cond_1b

    if-eq v7, v5, :cond_1a

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_b

    :cond_1a
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_b

    :cond_1b
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_b

    :cond_1c
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbc;

    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbc;-><init>(IZ)V

    return-object v0

    :pswitch_37
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v9, v4

    move v14, v9

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_6

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_c

    :pswitch_38
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    goto :goto_c

    :pswitch_39
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    goto :goto_c

    :pswitch_3a
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    goto :goto_c

    :pswitch_3b
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    goto :goto_c

    :pswitch_3c
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

    goto :goto_c

    :pswitch_3d
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;

    goto :goto_c

    :pswitch_3e
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    goto :goto_c

    :pswitch_3f
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    goto :goto_c

    :pswitch_40
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    goto :goto_c

    :pswitch_41
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_c

    :pswitch_42
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Landroid/graphics/Point;

    goto/16 :goto_c

    :pswitch_43
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createByteArray(ILandroid/os/Parcel;)[B

    move-result-object v12

    goto/16 :goto_c

    :pswitch_44
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_c

    :pswitch_45
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c

    :pswitch_46
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v9

    goto/16 :goto_c

    :cond_1d
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;

    move-object v8, v0

    invoke-direct/range {v8 .. v23}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;-><init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;)V

    return-object v0

    :pswitch_47
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v6, :cond_1f

    if-eq v3, v5, :cond_1e

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_d

    :cond_1e
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createStringArray(ILandroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    :cond_1f
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_d

    :cond_20
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    invoke-direct {v0, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;-><init>(I[Ljava/lang/String;)V

    return-object v0

    :goto_e
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v7, 0x0

    move v12, v4

    move v13, v12

    move v14, v13

    move v15, v14

    move-wide v10, v7

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v7, v4

    if-eq v7, v6, :cond_25

    if-eq v7, v5, :cond_24

    if-eq v7, v3, :cond_23

    if-eq v7, v2, :cond_22

    const/4 v8, 0x5

    if-eq v7, v8, :cond_21

    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_f

    :cond_21
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readLong(ILandroid/os/Parcel;)J

    move-result-wide v10

    goto :goto_f

    :cond_22
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v15

    goto :goto_f

    :cond_23
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_f

    :cond_24
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v13

    goto :goto_f

    :cond_25
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v12

    goto :goto_f

    :cond_26
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;-><init>(JIIII)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_47
        :pswitch_37
        :pswitch_36
        :pswitch_2d
        :pswitch_25
        :pswitch_1d
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_46
        :pswitch_45
        :pswitch_44
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
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbc;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    return-object p0

    :goto_0
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
