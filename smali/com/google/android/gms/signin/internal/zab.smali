.class public final Lcom/google/android/gms/signin/internal/zab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/signin/internal/zab;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14

    iget p0, p0, Lcom/google/android/gms/signin/internal/zab;->$r8$classId:I

    const/4 v0, 0x3

    const-string v1, "parcel"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_1
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/storage/MediaVolume;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, v0, p1}, Lcom/motorola/camera/storage/MediaVolume;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/storage/MediaFilePath;

    sget-object v0, Lcom/motorola/camera/storage/MediaVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/storage/MediaVolume;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/camera/storage/MediaFilePath;-><init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0

    :pswitch_3
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/storage/MediaFile$Memento;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v5

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v5

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_4
    const-class v2, Lcom/motorola/camera/storage/MediaFile$Memento;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    sget-object v3, Lcom/motorola/camera/storage/MediaFilePath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    :goto_5
    check-cast v5, Lcom/motorola/camera/storage/MediaFilePath;

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    invoke-direct {p0, p1}, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_5
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    invoke-direct {p0, p1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    invoke-direct {p0, p1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-direct {p0, p1, v4}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;-><init>(Landroid/os/Parcel;I)V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-direct {p0, p1, v4}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;-><init>(Landroid/os/Parcel;I)V

    return-object p0

    :pswitch_a
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/UseCase;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p0

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    invoke-direct {p0, p1}, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/TimeModel;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p0

    return-object p0

    :pswitch_e
    new-instance p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    return-object p0

    :pswitch_f
    const-class p0, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/google/android/material/datepicker/Month;

    const-class p0, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    new-instance p0, Lcom/google/android/material/datepicker/CalendarConstraints;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;I)V

    return-object p0

    :pswitch_10
    new-instance p0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    invoke-direct {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_12
    invoke-static {p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    move-object v1, v5

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, p0, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    if-eq v7, v3, :cond_8

    if-eq v7, v2, :cond_7

    if-eq v7, v0, :cond_6

    invoke-static {v6, p1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_6

    :cond_6
    sget-object v1, Lcom/google/android/gms/common/internal/zav;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v6, v1}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zav;

    goto :goto_6

    :cond_7
    sget-object v5, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v6, v5}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_6

    :cond_8
    invoke-static {v6, p1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_6

    :cond_9
    invoke-static {p0, p1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {p0, v4, v5, v1}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    return-object p0

    :pswitch_13
    invoke-static {p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v1, v0

    if-eq v1, v3, :cond_b

    if-eq v1, v2, :cond_a

    invoke-static {v0, p1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_7

    :cond_a
    sget-object v1, Lcom/google/android/gms/common/internal/zat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/common/internal/zat;

    goto :goto_7

    :cond_b
    invoke-static {v0, p1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_7

    :cond_c
    invoke-static {p0, p1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/signin/internal/zai;

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    return-object p0

    :pswitch_14
    invoke-static {p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    move-object v0, v5

    move-object v1, v0

    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, p0, :cond_10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v6, v4

    if-eq v6, v3, :cond_e

    if-eq v6, v2, :cond_d

    invoke-static {v4, p1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_8

    :cond_d
    invoke-static {v4, p1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_e
    invoke-static {v4, p1}, Lkotlin/collections/ArraysUtilJVM;->readSize(ILandroid/os/Parcel;)I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v1, :cond_f

    move-object v1, v5

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v1, v6

    goto :goto_8

    :cond_10
    invoke-static {p0, p1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/signin/internal/zag;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/signin/internal/zag;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0

    :pswitch_15
    invoke-static {p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_13

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v3, v1

    if-eq v3, v2, :cond_12

    if-eq v3, v0, :cond_11

    invoke-static {v1, p1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_9

    :cond_11
    invoke-static {v1, p1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_12
    invoke-static {v1, p1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_9

    :cond_13
    invoke-static {p0, p1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;-><init>(ILjava/lang/String;)V

    return-object p0

    :pswitch_16
    invoke-static {p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_14

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v1, v0

    packed-switch v1, :pswitch_data_1

    invoke-static {v0, p1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_a

    :pswitch_17
    invoke-static {v0, p1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    :pswitch_18
    invoke-static {v0, p1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :pswitch_19
    invoke-static {v0, p1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :pswitch_1a
    invoke-static {v0, p1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :pswitch_1b
    invoke-static {v0, p1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :pswitch_1c
    invoke-static {v0, p1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :pswitch_1d
    invoke-static {v0, p1}, Lkotlin/collections/ArraysUtilJVM;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_14
    invoke-static {p0, p1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_1e
    invoke-static {p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_17

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v7, v1

    if-eq v7, v2, :cond_16

    if-eq v7, v0, :cond_15

    invoke-static {v1, p1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_b

    :cond_15
    invoke-static {v1, p1}, Lkotlin/collections/ArraysUtilJVM;->readDouble(ILandroid/os/Parcel;)D

    move-result-wide v5

    goto :goto_b

    :cond_16
    invoke-static {v1, p1}, Lkotlin/collections/ArraysUtilJVM;->readDouble(ILandroid/os/Parcel;)D

    move-result-wide v3

    goto :goto_b

    :cond_17
    invoke-static {p0, p1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;-><init>(DD)V

    return-object p0

    :pswitch_1f
    invoke-static {p1}, Lkotlin/collections/ArraysUtilJVM;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    move v1, v4

    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, p0, :cond_1b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    if-eq v7, v3, :cond_1a

    if-eq v7, v2, :cond_19

    if-eq v7, v0, :cond_18

    invoke-static {v6, p1}, Lkotlin/collections/ArraysUtilJVM;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_c

    :cond_18
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v6, v5}, Lkotlin/collections/ArraysUtilJVM;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    goto :goto_c

    :cond_19
    invoke-static {v6, p1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v1

    goto :goto_c

    :cond_1a
    invoke-static {v6, p1}, Lkotlin/collections/ArraysUtilJVM;->readInt(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_c

    :cond_1b
    invoke-static {p0, p1}, Lkotlin/collections/ArraysUtilJVM;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/signin/internal/zaa;

    invoke-direct {p0, v4, v1, v5}, Lcom/google/android/gms/signin/internal/zaa;-><init>(IILandroid/content/Intent;)V

    return-object p0

    :goto_d
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/utility/ZoomSegment;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
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

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/signin/internal/zab;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/motorola/camera/storage/MediaVolume;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/motorola/camera/storage/MediaFilePath;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/motorola/camera/storage/MediaFile$Memento;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/motorola/camera/fsm/camera/UseCase;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/material/timepicker/TimeModel;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/material/datepicker/Month;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/material/datepicker/DateValidatorPointForward;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Lcom/google/android/material/badge/BadgeState$State;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zak;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zai;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zag;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zaa;

    return-object p0

    :goto_0
    new-array p0, p1, [Lcom/motorola/camera/utility/ZoomSegment;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
