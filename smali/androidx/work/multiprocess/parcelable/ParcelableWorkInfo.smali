.class public final Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final sEMPTY:[Ljava/lang/String;


# instance fields
.field public final mWorkInfo:Landroidx/work/WorkInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;->sEMPTY:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/common/api/zza;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zza;-><init>(I)V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    const-string v7, "Unsupported type "

    const/4 v8, 0x0

    if-ge v5, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 3
    invoke-static {v7, v9}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v6

    invoke-static {v6}, Landroidx/work/Data;->convertPrimitiveDoubleArray([D)[Ljava/lang/Double;

    move-result-object v8

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    invoke-static {v6}, Landroidx/work/Data;->convertPrimitiveFloatArray([F)[Ljava/lang/Float;

    move-result-object v8

    goto :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    invoke-static {v6}, Landroidx/work/Data;->convertPrimitiveLongArray([J)[Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    invoke-static {v6}, Landroidx/work/Data;->convertPrimitiveIntArray([I)[Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-static {v6}, Landroidx/work/Data;->convertPrimitiveByteArray([B)[Ljava/lang/Byte;

    move-result-object v8

    goto :goto_2

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v6

    invoke-static {v6}, Landroidx/work/Data;->convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_2

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_2

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_2

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    goto :goto_2

    .line 5
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v4

    .line 6
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_2
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 7
    :cond_1
    new-instance v5, Landroidx/work/Data;

    invoke-direct {v5, v0}, Landroidx/work/Data;-><init>(Ljava/util/AbstractMap;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v10, v4

    :goto_3
    if-ge v10, v9, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    packed-switch v11, :pswitch_data_1

    .line 11
    invoke-static {v7, v11}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v11

    invoke-static {v11}, Landroidx/work/Data;->convertPrimitiveDoubleArray([D)[Ljava/lang/Double;

    move-result-object v11

    goto/16 :goto_5

    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v11

    invoke-static {v11}, Landroidx/work/Data;->convertPrimitiveFloatArray([F)[Ljava/lang/Float;

    move-result-object v11

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v11

    invoke-static {v11}, Landroidx/work/Data;->convertPrimitiveLongArray([J)[Ljava/lang/Long;

    move-result-object v11

    goto :goto_5

    :pswitch_13
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v11

    invoke-static {v11}, Landroidx/work/Data;->convertPrimitiveIntArray([I)[Ljava/lang/Integer;

    move-result-object v11

    goto :goto_5

    :pswitch_14
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-static {v11}, Landroidx/work/Data;->convertPrimitiveByteArray([B)[Ljava/lang/Byte;

    move-result-object v11

    goto :goto_5

    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v11

    invoke-static {v11}, Landroidx/work/Data;->convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_5

    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :pswitch_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_5

    :pswitch_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_5

    :pswitch_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_5

    :pswitch_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_5

    :pswitch_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    goto :goto_5

    .line 13
    :pswitch_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v6, :cond_2

    move v11, v6

    goto :goto_4

    :cond_2
    move v11, v4

    .line 14
    :goto_4
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_5

    :pswitch_1d
    move-object v11, v8

    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 15
    :cond_3
    new-instance v6, Landroidx/work/Data;

    invoke-direct {v6, v1}, Landroidx/work/Data;-><init>(Ljava/util/AbstractMap;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-instance p1, Landroidx/work/WorkInfo;

    move-object v1, p1

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v8}, Landroidx/work/WorkInfo;-><init>(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Landroidx/work/Data;Ljava/util/List;Landroidx/work/Data;II)V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;->mWorkInfo:Landroidx/work/WorkInfo;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .packed-switch 0x0
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
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public constructor <init>(Landroidx/work/WorkInfo;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;->mWorkInfo:Landroidx/work/WorkInfo;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;->mWorkInfo:Landroidx/work/WorkInfo;

    iget-object v0, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableData;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroidx/work/Data;)V

    invoke-virtual {v0, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->writeToParcel(Landroid/os/Parcel;I)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;->sEMPTY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableData;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mProgress:Landroidx/work/Data;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroidx/work/Data;)V

    invoke-virtual {v0, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Landroidx/work/WorkInfo;->mRunAttemptCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroidx/work/WorkInfo;->mGeneration:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
