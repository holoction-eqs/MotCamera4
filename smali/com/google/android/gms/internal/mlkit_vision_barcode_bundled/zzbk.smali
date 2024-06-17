.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbk;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScanner"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 39

    move/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_29

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_28

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->CREATOR:Landroid/os/Parcelable$Creator;

    sget v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzc;->$r8$clinit:I

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v5, p2

    move-object v3, v4

    goto :goto_0

    :cond_1
    move-object/from16 v5, p2

    invoke-interface {v3, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    :goto_0
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    if-gtz v5, :cond_27

    move-object/from16 v5, p0

    check-cast v5, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;

    iget v6, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->zza:I

    const/4 v7, -0x1

    iget-object v8, v5, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zzd:Lcom/google/android/libraries/barhopper/RecognitionOptions;

    iget v9, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->zzc:I

    iget v10, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->zzb:I

    if-eq v6, v7, :cond_7

    const/16 v11, 0x11

    if-eq v6, v11, :cond_4

    const/16 v11, 0x23

    if-eq v6, v11, :cond_3

    const v11, 0x32315659

    if-ne v6, v11, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported image format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->zza:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_2
    iget-object v5, v5, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    invoke-static {v5}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v10, v9, v0, v8}, Lcom/google/android/libraries/barhopper/BarhopperV3;->recognize(IILjava/nio/ByteBuffer;Lcom/google/android/libraries/barhopper/RecognitionOptions;)Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v5, v10, v9, v0, v8}, Lcom/google/android/libraries/barhopper/BarhopperV3;->recognize(II[BLcom/google/android/libraries/barhopper/RecognitionOptions;)Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v10, v9, v6, v8}, Lcom/google/android/libraries/barhopper/BarhopperV3;->recognize(II[BLcom/google/android/libraries/barhopper/RecognitionOptions;)Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    move-result-object v0

    goto :goto_3

    :cond_7
    iget-object v5, v5, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    invoke-static {v5}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0, v8}, Lcom/google/android/libraries/barhopper/BarhopperV3;->recognize(Landroid/graphics/Bitmap;Lcom/google/android/libraries/barhopper/RecognitionOptions;)Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    move-result-object v0

    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v3, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->zzd:I

    if-nez v3, :cond_8

    move-object v6, v4

    goto :goto_6

    :cond_8
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    neg-int v8, v10

    neg-int v11, v9

    int-to-float v11, v11

    int-to-float v8, v8

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v8, v12

    div-float/2addr v11, v12

    invoke-virtual {v6, v8, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-int/lit8 v8, v3, 0x5a

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    rem-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_9

    move v11, v9

    goto :goto_4

    :cond_9
    move v11, v10

    :goto_4
    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    move v9, v10

    :goto_5
    int-to-float v8, v11

    div-float/2addr v8, v12

    int-to-float v9, v9

    div-float/2addr v9, v12

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_6
    invoke-virtual {v0}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/photos/vision/barhopper/zzc;

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zza()I

    move-result v9

    const/4 v10, 0x5

    const/16 v11, 0x8

    if-lez v9, :cond_c

    if-eqz v6, :cond_c

    new-array v9, v11, [F

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzo()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zza()I

    move-result v12

    move v13, v1

    :goto_8
    if-ge v13, v12, :cond_b

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/photos/vision/barhopper/zzae;

    invoke-virtual {v14}, Lcom/google/photos/vision/barhopper/zzae;->zza()I

    move-result v14

    int-to-float v14, v14

    add-int v15, v13, v13

    aput v14, v9, v15

    add-int/lit8 v15, v15, 0x1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/photos/vision/barhopper/zzae;

    invoke-virtual {v14}, Lcom/google/photos/vision/barhopper/zzae;->zzb()I

    move-result v14

    int-to-float v14, v14

    aput v14, v9, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    move v11, v1

    :goto_9
    if-ge v11, v12, :cond_c

    invoke-virtual {v8, v10, v4}, Lcom/google/photos/vision/barhopper/zzc;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    check-cast v4, Lcom/google/photos/vision/barhopper/zzb;

    add-int v8, v11, v3

    rem-int/2addr v8, v12

    add-int v10, v11, v11

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzae;->zzc()Lcom/google/photos/vision/barhopper/zzad;

    move-result-object v13

    aget v14, v9, v10

    float-to-int v14, v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v15, v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v15, Lcom/google/photos/vision/barhopper/zzae;

    invoke-static {v14, v15}, Lcom/google/photos/vision/barhopper/zzae;->zze(ILcom/google/photos/vision/barhopper/zzae;)V

    add-int/2addr v10, v2

    aget v10, v9, v10

    float-to-int v10, v10

    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v14, v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v14, Lcom/google/photos/vision/barhopper/zzae;

    invoke-static {v10, v14}, Lcom/google/photos/vision/barhopper/zzae;->zzf(ILcom/google/photos/vision/barhopper/zzae;)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object v10

    check-cast v10, Lcom/google/photos/vision/barhopper/zzae;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v13, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v13, Lcom/google/photos/vision/barhopper/zzc;

    invoke-static {v13, v8, v10}, Lcom/google/photos/vision/barhopper/zzc;->zzp(Lcom/google/photos/vision/barhopper/zzc;ILcom/google/photos/vision/barhopper/zzae;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/google/photos/vision/barhopper/zzc;

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x5

    goto :goto_9

    :cond_c
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzt()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzh()Lcom/google/photos/vision/barhopper/zzy;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzy;->zzf()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzy;->zzc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzy;->zze()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzy;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v9, v10, v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    :goto_a
    move-object/from16 v16, v4

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzv()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;->zzd()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;-><init>(ILjava/lang/String;)V

    move-object/from16 v17, v4

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    move-object/from16 v17, v2

    :goto_b
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzw()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzj()Lcom/google/photos/vision/barhopper/zzag;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzag;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzag;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v4

    goto :goto_c

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v18, v2

    :goto_c
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzy()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzl()Lcom/google/photos/vision/barhopper/zzao;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzao;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzao;->zzc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzao;->zze()I

    move-result v2

    add-int/2addr v2, v7

    invoke-direct {v4, v9, v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v19, v4

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    move-object/from16 v19, v2

    :goto_d
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzx()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzk()Lcom/google/photos/vision/barhopper/zzaj;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzaj;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzaj;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v4

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    move-object/from16 v20, v2

    :goto_e
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzu()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzi()Lcom/google/photos/vision/barhopper/zzac;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzac;->zza()D

    move-result-wide v9

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzac;->zzb()D

    move-result-wide v11

    invoke-direct {v4, v9, v10, v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;-><init>(DD)V

    move-object/from16 v21, v4

    goto :goto_f

    :cond_12
    const/4 v2, 0x0

    move-object/from16 v21, v2

    :goto_f
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzq()Z

    move-result v2

    const-string v4, ""

    if-eqz v2, :cond_17

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzd()Lcom/google/photos/vision/barhopper/zzp;

    move-result-object v2

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzp;->zzj()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzp;->zze()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzp;->zzf()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzp;->zzh()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzp;->zzi()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzp;->zzb()Lcom/google/photos/vision/barhopper/zzn;

    move-result-object v10

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzn()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v13

    if-nez v13, :cond_13

    move-object v11, v4

    goto :goto_10

    :cond_13
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzl(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_10

    :cond_14
    const/4 v11, 0x0

    :goto_10
    const-string v12, "DTSTART:([0-9TZ]*)"

    invoke-static {v10, v11, v12}, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zze(Lcom/google/photos/vision/barhopper/zzn;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    move-result-object v28

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzp;->zza()Lcom/google/photos/vision/barhopper/zzn;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzn()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v12

    if-nez v12, :cond_15

    move-object v10, v4

    goto :goto_11

    :cond_15
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzl(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    goto :goto_11

    :cond_16
    const/4 v10, 0x0

    :goto_11
    const-string v11, "DTEND:([0-9TZ]*)"

    invoke-static {v2, v10, v11}, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zze(Lcom/google/photos/vision/barhopper/zzn;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    move-result-object v29

    move-object/from16 v22, v9

    invoke-direct/range {v22 .. v29}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;)V

    goto :goto_12

    :cond_17
    const/4 v2, 0x0

    move-object/from16 v22, v2

    :goto_12
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzr()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zze()Lcom/google/photos/vision/barhopper/zzr;

    move-result-object v2

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzr;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;

    move-result-object v10

    if-eqz v10, :cond_18

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzd()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzi()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzh()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzc()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzf()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zze()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzj()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v23, v11

    invoke-direct/range {v23 .. v30}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, v11

    goto :goto_13

    :cond_18
    const/4 v10, 0x0

    move-object/from16 v24, v10

    :goto_13
    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzr;->zzd()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzr;->zze()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzr;->zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_19

    const/4 v10, 0x0

    move-object/from16 v27, v10

    goto :goto_15

    :cond_19
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    move v12, v1

    :goto_14
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1a

    new-instance v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;->zzd()I

    move-result v14

    add-int/2addr v14, v7

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;->zzc()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;-><init>(ILjava/lang/String;)V

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_1a
    move-object/from16 v27, v11

    :goto_15
    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzr;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1b

    const/4 v1, 0x0

    move-object/from16 v28, v1

    goto :goto_17

    :cond_1b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    :goto_16
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_1c

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/photos/vision/barhopper/zzy;

    invoke-virtual {v13}, Lcom/google/photos/vision/barhopper/zzy;->zzf()I

    move-result v13

    add-int/2addr v13, v7

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/photos/vision/barhopper/zzy;

    invoke-virtual {v7}, Lcom/google/photos/vision/barhopper/zzy;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/photos/vision/barhopper/zzy;

    invoke-virtual {v14}, Lcom/google/photos/vision/barhopper/zzy;->zze()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/photos/vision/barhopper/zzy;

    invoke-virtual {v15}, Lcom/google/photos/vision/barhopper/zzy;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v13, v7, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v11, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v7, -0x1

    goto :goto_16

    :cond_1c
    move-object/from16 v28, v11

    :goto_17
    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzr;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, [Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/photos/vision/barhopper/zzr;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x0

    move-object/from16 v30, v1

    goto :goto_19

    :cond_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    const/4 v7, 0x0

    :goto_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_1e

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcb;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcb;->zzc()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcb;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcb;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;-><init>(I[Ljava/lang/String;)V

    aput-object v10, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_1e
    move-object/from16 v30, v2

    :goto_19
    move-object/from16 v23, v9

    invoke-direct/range {v23 .. v30}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;[Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;)V

    goto :goto_1a

    :cond_1f
    const/4 v1, 0x0

    move-object/from16 v23, v1

    :goto_1a
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzs()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzf()Lcom/google/photos/vision/barhopper/zzt;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzi()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzk()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzq()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzo()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzl()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zze()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzc()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzd()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzf()Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzp()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzm()Ljava/lang/String;

    move-result-object v35

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzj()Ljava/lang/String;

    move-result-object v36

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzh()Ljava/lang/String;

    move-result-object v37

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzt;->zzn()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v38}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_20
    const/4 v1, 0x0

    move-object/from16 v24, v1

    :goto_1b
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzz()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    packed-switch v2, :pswitch_data_0

    const/4 v2, -0x1

    goto :goto_1c

    :pswitch_0
    const/16 v2, 0x1000

    goto :goto_1c

    :pswitch_1
    const/16 v2, 0x800

    goto :goto_1c

    :pswitch_2
    const/16 v2, 0x400

    goto :goto_1c

    :pswitch_3
    const/16 v2, 0x200

    goto :goto_1c

    :pswitch_4
    const/16 v2, 0x100

    goto :goto_1c

    :pswitch_5
    const/16 v2, 0x80

    goto :goto_1c

    :pswitch_6
    const/16 v2, 0x40

    goto :goto_1c

    :pswitch_7
    const/16 v2, 0x20

    goto :goto_1c

    :pswitch_8
    const/16 v2, 0x10

    goto :goto_1c

    :pswitch_9
    const/16 v2, 0x8

    goto :goto_1c

    :pswitch_a
    const/4 v10, 0x4

    goto :goto_1d

    :pswitch_b
    const/4 v2, 0x2

    goto :goto_1c

    :pswitch_c
    const/4 v2, 0x1

    goto :goto_1c

    :pswitch_d
    const/4 v2, 0x0

    :goto_1c
    move v10, v2

    :goto_1d
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzn()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v12

    if-nez v12, :cond_21

    goto :goto_1e

    :cond_21
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzl(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    :goto_1e
    move-object v12, v4

    goto :goto_1f

    :cond_22
    const/4 v2, 0x0

    move-object v12, v2

    :goto_1f
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v4

    if-nez v4, :cond_23

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    move-object v13, v2

    goto :goto_20

    :cond_23
    new-array v9, v4, [B

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v9, v13, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zze(I[BII)V

    move-object v13, v9

    :goto_20
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzo()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v2, 0x0

    move-object v14, v2

    goto :goto_22

    :cond_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/graphics/Point;

    const/4 v9, 0x0

    :goto_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_25

    new-instance v14, Landroid/graphics/Point;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/photos/vision/barhopper/zzae;

    invoke-virtual {v15}, Lcom/google/photos/vision/barhopper/zzae;->zza()I

    move-result v15

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/photos/vision/barhopper/zzae;

    invoke-virtual/range {v25 .. v25}, Lcom/google/photos/vision/barhopper/zzae;->zzb()I

    move-result v7

    invoke-direct {v14, v15, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v14, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    :cond_25
    move-object v14, v4

    :goto_22
    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzc;->zzA()I

    move-result v2

    const/4 v7, -0x1

    add-int/2addr v2, v7

    packed-switch v2, :pswitch_data_1

    const/4 v2, 0x0

    goto :goto_23

    :pswitch_e
    const/16 v2, 0xc

    goto :goto_23

    :pswitch_f
    const/16 v2, 0xb

    goto :goto_23

    :pswitch_10
    const/16 v2, 0xa

    goto :goto_23

    :pswitch_11
    const/16 v2, 0x9

    goto :goto_23

    :pswitch_12
    const/16 v2, 0x8

    goto :goto_23

    :pswitch_13
    const/4 v2, 0x7

    goto :goto_23

    :pswitch_14
    const/4 v2, 0x6

    goto :goto_23

    :pswitch_15
    const/4 v2, 0x5

    goto :goto_23

    :pswitch_16
    const/4 v15, 0x4

    goto :goto_24

    :pswitch_17
    const/4 v2, 0x3

    goto :goto_23

    :pswitch_18
    const/4 v2, 0x2

    goto :goto_23

    :pswitch_19
    const/4 v2, 0x1

    :goto_23
    move v15, v2

    :goto_24
    move-object v9, v1

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;-><init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_28

    :cond_27
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Parcel data not fully consumed, unread size: "

    invoke-static {v1, v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    check-cast v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;

    iget-object v2, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/google/android/libraries/barhopper/BarhopperV3;->close()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    goto/16 :goto_27

    :cond_29
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    check-cast v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;

    iget-object v2, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zzc:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    if-eqz v3, :cond_2a

    goto/16 :goto_27

    :cond_2a
    new-instance v3, Lcom/google/android/libraries/barhopper/BarhopperV3;

    invoke-direct {v3}, Lcom/google/android/libraries/barhopper/BarhopperV3;-><init>()V

    iput-object v3, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    invoke-static {}, Lcom/google/barhopper/deeplearning/zzi;->zza$1()Lcom/google/barhopper/deeplearning/zzh;

    move-result-object v3

    invoke-static {}, Lcom/google/barhopper/deeplearning/zzf;->zza$1()Lcom/google/barhopper/deeplearning/zze;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_25
    const/4 v8, 0x6

    if-ge v6, v8, :cond_2c

    invoke-static {}, Lcom/google/barhopper/deeplearning/zzc;->zza$1()Lcom/google/barhopper/deeplearning/zzb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v9, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v9, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v9, v5}, Lcom/google/barhopper/deeplearning/zzc;->zzf(Lcom/google/barhopper/deeplearning/zzc;I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v9, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v9, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v9, v5}, Lcom/google/barhopper/deeplearning/zzc;->zzc(Lcom/google/barhopper/deeplearning/zzc;I)V

    const/4 v9, 0x0

    :goto_26
    sget-object v10, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zza:[I

    aget v10, v10, v6

    if-ge v9, v10, :cond_2b

    sget-object v10, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zzb:[[D

    aget-object v10, v10, v7

    const/4 v11, 0x0

    aget-wide v11, v10, v11

    const-wide/high16 v13, 0x4074000000000000L    # 320.0

    mul-double/2addr v11, v13

    const/4 v13, 0x1

    aget-wide v13, v10, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v10, v13

    double-to-float v11, v11

    div-float v12, v11, v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v13, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v13, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v13, v12}, Lcom/google/barhopper/deeplearning/zzc;->zzd(Lcom/google/barhopper/deeplearning/zzc;F)V

    mul-float/2addr v11, v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v10, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v10, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v10, v11}, Lcom/google/barhopper/deeplearning/zzc;->zze(Lcom/google/barhopper/deeplearning/zzc;F)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :cond_2b
    add-int/2addr v5, v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v9, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v9, Lcom/google/barhopper/deeplearning/zzf;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object v8

    check-cast v8, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v9, v8}, Lcom/google/barhopper/deeplearning/zzf;->zzc(Lcom/google/barhopper/deeplearning/zzf;Lcom/google/barhopper/deeplearning/zzc;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2c
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v5, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v5, Lcom/google/barhopper/deeplearning/zzi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object v4

    check-cast v4, Lcom/google/barhopper/deeplearning/zzf;

    invoke-static {v5, v4}, Lcom/google/barhopper/deeplearning/zzi;->zzc(Lcom/google/barhopper/deeplearning/zzi;Lcom/google/barhopper/deeplearning/zzf;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "mlkit_barcode_models/barcode_ssd_mobilenet_v1_dmp25_quant.tflite"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "mlkit_barcode_models/oned_auto_regressor_mobile.tflite"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v6, "mlkit_barcode_models/oned_feature_extractor_mobile.tflite"

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zzb;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    invoke-static {v1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza()Lcom/google/barhopper/deeplearning/zzk;

    move-result-object v6

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzs(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v8, Lcom/google/barhopper/deeplearning/zzi;

    invoke-static {v8, v7}, Lcom/google/barhopper/deeplearning/zzi;->zzd(Lcom/google/barhopper/deeplearning/zzi;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v7, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object v3

    check-cast v3, Lcom/google/barhopper/deeplearning/zzi;

    invoke-static {v7, v3}, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zzc(Lcom/google/barhopper/deeplearning/BarhopperV3Options;Lcom/google/barhopper/deeplearning/zzi;)V

    invoke-static {}, Lcom/google/barhopper/deeplearning/zzn;->zza$1()Lcom/google/barhopper/deeplearning/zzm;

    move-result-object v3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzs(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v8, Lcom/google/barhopper/deeplearning/zzn;

    invoke-static {v8, v7}, Lcom/google/barhopper/deeplearning/zzn;->zzd(Lcom/google/barhopper/deeplearning/zzn;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzs(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v8, Lcom/google/barhopper/deeplearning/zzn;

    invoke-static {v8, v7}, Lcom/google/barhopper/deeplearning/zzn;->zzc(Lcom/google/barhopper/deeplearning/zzn;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm()V

    iget-object v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    check-cast v7, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object v3

    check-cast v3, Lcom/google/barhopper/deeplearning/zzn;

    invoke-static {v7, v3}, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zzd(Lcom/google/barhopper/deeplearning/BarhopperV3Options;Lcom/google/barhopper/deeplearning/zzn;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object v3

    check-cast v3, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/barhopper/BarhopperV3;->create(Lcom/google/barhopper/deeplearning/BarhopperV3Options;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2d

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2d
    if-eqz v5, :cond_2e

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_2e
    if-eqz v4, :cond_2f

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2f
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_28
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_30

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_29

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_30
    :goto_29
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_31

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2a

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_31
    :goto_2a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_32

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2b

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_32
    :goto_2b
    throw v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to open Barcode models"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

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

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
