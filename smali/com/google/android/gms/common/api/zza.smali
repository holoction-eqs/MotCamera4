.class public final Lcom/google/android/gms/common/api/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/zza;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzc:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzd:I

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zze:I

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzg:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    invoke-static {v2, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v2, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    :goto_0
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzh:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzi:Landroid/os/Bundle;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    invoke-static {v2, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {v2, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    :goto_1
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj:Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzk:[Lcom/google/android/gms/common/Feature;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzl:[Lcom/google/android/gms/common/Feature;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 p2, 0xc

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzm:Z

    invoke-static {p1, p2, v1}, Landroidx/media3/common/Format$1;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xd

    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzn:I

    invoke-static {p1, p2, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0xe

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzo:Z

    invoke-static {p1, p2, v1}, Landroidx/media3/common/Format$1;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xf

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzp:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/google/android/gms/common/api/zza;->$r8$classId:I

    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_0

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;

    invoke-direct {v0, v9}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;-><init>(Landroid/app/PendingIntent;)V

    return-object v0

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v2, v10

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_1

    :cond_2
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_1

    :cond_3
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_1

    :cond_4
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    invoke-direct {v0, v10, v2}, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;-><init>(IZ)V

    return-object v0

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v9

    move-object v3, v2

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v11, v4

    if-eq v11, v8, :cond_8

    if-eq v11, v7, :cond_7

    if-eq v11, v6, :cond_6

    if-eq v11, v5, :cond_5

    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_2

    :cond_5
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v10

    goto :goto_2

    :cond_8
    sget-object v9, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v9}, Lkotlin/collections/ArraysUtilJVM;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_2

    :cond_9
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    invoke-direct {v0, v9, v10, v2, v3}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;-><init>(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    sget-object v2, Lcom/google/android/gms/common/internal/GetServiceRequest;->zza:[Lcom/google/android/gms/common/api/Scope;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:[Lcom/google/android/gms/common/Feature;

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v20

    move-object v15, v9

    move-object/from16 v16, v15

    move-object/from16 v19, v16

    move-object/from16 v25, v19

    move v12, v10

    move v13, v12

    move v14, v13

    move/from16 v22, v14

    move/from16 v23, v22

    move/from16 v24, v23

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_1

    :pswitch_4
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_3

    :pswitch_5
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v25

    goto :goto_3

    :pswitch_6
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v24

    goto :goto_3

    :pswitch_7
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v23

    goto :goto_3

    :pswitch_8
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v22

    goto :goto_3

    :pswitch_9
    sget-object v3, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, [Lcom/google/android/gms/common/Feature;

    goto :goto_3

    :pswitch_a
    sget-object v3, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, [Lcom/google/android/gms/common/Feature;

    goto :goto_3

    :pswitch_b
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/accounts/Account;

    goto :goto_3

    :pswitch_c
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readSize(ILandroid/os/Parcel;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-nez v2, :cond_a

    move-object/from16 v18, v9

    goto :goto_3

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object/from16 v18, v4

    goto :goto_3

    :pswitch_d
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [Lcom/google/android/gms/common/api/Scope;

    goto :goto_3

    :pswitch_e
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readSize(ILandroid/os/Parcel;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-nez v2, :cond_b

    move-object/from16 v16, v9

    goto :goto_3

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object/from16 v16, v4

    goto/16 :goto_3

    :pswitch_f
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :pswitch_10
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v14

    goto/16 :goto_3

    :pswitch_11
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v13

    goto/16 :goto_3

    :pswitch_12
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v12

    goto/16 :goto_3

    :cond_c
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-object v11, v0

    invoke-direct/range {v11 .. v25}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;ZIZLjava/lang/String;)V

    return-object v0

    :pswitch_13
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v9

    move-object v5, v2

    move-object v7, v5

    move v3, v10

    move v4, v3

    move v6, v4

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v10, v8

    packed-switch v10, :pswitch_data_2

    invoke-static {v8, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_4

    :pswitch_14
    invoke-static {v8, v1}, Lkotlin/collections/ArraysUtilJVM;->readSize(ILandroid/os/Parcel;)I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-nez v7, :cond_d

    move-object v7, v9

    goto :goto_4

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v10

    add-int/2addr v8, v7

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v7, v10

    goto :goto_4

    :pswitch_15
    invoke-static {v8, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v6

    goto :goto_4

    :pswitch_16
    invoke-static {v8, v1}, Lkotlin/collections/ArraysUtilJVM;->readSize(ILandroid/os/Parcel;)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-nez v5, :cond_e

    move-object v5, v9

    goto :goto_4

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v10

    add-int/2addr v8, v5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v5, v10

    goto :goto_4

    :pswitch_17
    invoke-static {v8, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v4

    goto :goto_4

    :pswitch_18
    invoke-static {v8, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v3

    goto :goto_4

    :pswitch_19
    sget-object v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v8, v2}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    goto :goto_4

    :cond_f
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;-><init>(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;ZZ[II[I)V

    return-object v0

    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v9

    move-object v3, v2

    move-object v4, v3

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-ge v11, v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    int-to-char v12, v11

    if-eq v12, v8, :cond_13

    if-eq v12, v7, :cond_12

    if-eq v12, v6, :cond_11

    if-eq v12, v5, :cond_10

    invoke-static {v11, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_5

    :cond_10
    sget-object v4, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v11, v4}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    goto :goto_5

    :cond_11
    invoke-static {v11, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_5

    :cond_12
    sget-object v3, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v11, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/common/Feature;

    goto :goto_5

    :cond_13
    invoke-static {v11, v1}, Lkotlin/collections/ArraysUtilJVM;->readSize(ILandroid/os/Parcel;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-nez v2, :cond_14

    move-object v2, v9

    goto :goto_5

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v12

    add-int/2addr v11, v2

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v2, v12

    goto :goto_5

    :cond_15
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {v0, v2, v3, v10, v4}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/os/Bundle;[Lcom/google/android/gms/common/Feature;ILcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;)V

    return-object v0

    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v12, v10

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_1a

    if-eq v4, v7, :cond_19

    if-eq v4, v6, :cond_18

    if-eq v4, v5, :cond_17

    if-eq v4, v2, :cond_16

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_6

    :cond_16
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_6

    :cond_17
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v13

    goto :goto_6

    :cond_18
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v16

    goto :goto_6

    :cond_19
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v15

    goto :goto_6

    :cond_1a
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v12

    goto :goto_6

    :cond_1b
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;-><init>(IIIZZ)V

    return-object v0

    :pswitch_1c
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v13, v9

    move-object v14, v13

    move v12, v10

    move v15, v12

    move/from16 v16, v15

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_21

    if-eq v4, v7, :cond_1f

    if-eq v4, v6, :cond_1e

    if-eq v4, v5, :cond_1d

    if-eq v4, v2, :cond_1c

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_7

    :cond_1c
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v16

    goto :goto_7

    :cond_1d
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v15

    goto :goto_7

    :cond_1e
    sget-object v4, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_7

    :cond_1f
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readSize(ILandroid/os/Parcel;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v3, :cond_20

    move-object v13, v9

    goto :goto_7

    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v13, v10

    goto :goto_7

    :cond_21
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v12

    goto :goto_7

    :cond_22
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/zav;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/internal/zav;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V

    return-object v0

    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v2, v9

    move v3, v10

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v11, v4

    if-eq v11, v8, :cond_26

    if-eq v11, v7, :cond_25

    if-eq v11, v6, :cond_24

    if-eq v11, v5, :cond_23

    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_8

    :cond_23
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_8

    :cond_24
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_8

    :cond_25
    sget-object v9, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v9}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/accounts/Account;

    goto :goto_8

    :cond_26
    invoke-static {v4, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_8

    :cond_27
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/zat;

    invoke-direct {v0, v10, v9, v3, v2}, Lcom/google/android/gms/common/internal/zat;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v0

    :pswitch_1e
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, -0x1

    move/from16 v22, v2

    move-wide v15, v3

    move-wide/from16 v17, v15

    move-object/from16 v19, v9

    move-object/from16 v20, v19

    move v12, v10

    move v13, v12

    move v14, v13

    move/from16 v21, v14

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_3

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_9

    :pswitch_1f
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v22

    goto :goto_9

    :pswitch_20
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v21

    goto :goto_9

    :pswitch_21
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v20

    goto :goto_9

    :pswitch_22
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v19

    goto :goto_9

    :pswitch_23
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readLong(ILandroid/os/Parcel;)J

    move-result-wide v17

    goto :goto_9

    :pswitch_24
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readLong(ILandroid/os/Parcel;)J

    move-result-wide v15

    goto :goto_9

    :pswitch_25
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v14

    goto :goto_9

    :pswitch_26
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v13

    goto :goto_9

    :pswitch_27
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v12

    goto :goto_9

    :cond_28
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/MethodInvocation;

    move-object v11, v0

    invoke-direct/range {v11 .. v22}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :pswitch_28
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_2a

    if-eq v3, v7, :cond_29

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_a

    :cond_29
    sget-object v3, Lcom/google/android/gms/common/internal/MethodInvocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_a

    :cond_2a
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_a

    :cond_2b
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/TelemetryData;

    invoke-direct {v0, v10, v9}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_29
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-object v14, v9

    move-object v15, v14

    move-object/from16 v16, v15

    move v12, v10

    move v13, v12

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_31

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_30

    if-eq v3, v7, :cond_2f

    if-eq v3, v6, :cond_2e

    if-eq v3, v5, :cond_2d

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2c

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_b

    :cond_2c
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v12

    goto :goto_b

    :cond_2d
    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_b

    :cond_2e
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/app/PendingIntent;

    goto :goto_b

    :cond_2f
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    :cond_30
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v13

    goto :goto_b

    :cond_31
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    return-object v0

    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move-wide/from16 v19, v3

    move-object v13, v9

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v21, v18

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move v12, v10

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_32

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_4

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_c

    :pswitch_2b
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v24

    goto :goto_c

    :pswitch_2c
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v23

    goto :goto_c

    :pswitch_2d
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    goto :goto_c

    :pswitch_2e
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v21

    goto :goto_c

    :pswitch_2f
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readLong(ILandroid/os/Parcel;)J

    move-result-wide v19

    goto :goto_c

    :pswitch_30
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v18

    goto :goto_c

    :pswitch_31
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/net/Uri;

    goto :goto_c

    :pswitch_32
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v16

    goto :goto_c

    :pswitch_33
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v15

    goto :goto_c

    :pswitch_34
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    :pswitch_35
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    :pswitch_36
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v12

    goto :goto_c

    :cond_32
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object v11, v0

    invoke-direct/range {v11 .. v24}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_37
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_38
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_39
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3a
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3b
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3c
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3d
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3e
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3f
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_40
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_41
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_42
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_43
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableResult;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableResult;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_44
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_45
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_46
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_34

    if-eq v3, v7, :cond_33

    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_d

    :cond_33
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    :cond_34
    invoke-static {v2, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_d

    :cond_35
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v10, v9}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object v0

    :goto_e
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    move v2, v10

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_38

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_37

    if-eq v4, v7, :cond_36

    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_f

    :cond_36
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readBoolean(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_f

    :cond_37
    invoke-static {v3, v1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v10

    goto :goto_f

    :cond_38
    invoke-static {v0, v1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;

    invoke-direct {v0, v10, v2}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;-><init>(IZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_37
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/api/zza;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/common/internal/GetServiceRequest;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/common/internal/zzj;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/common/internal/zav;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/common/internal/zat;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/common/internal/MethodInvocation;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/common/internal/TelemetryData;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableResult;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p0

    :goto_0
    new-array p0, p1, [Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;

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
