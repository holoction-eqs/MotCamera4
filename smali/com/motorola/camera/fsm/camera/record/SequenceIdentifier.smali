.class public Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEQUENCE_MAX:I = 0x7fff

.field public static final SEQUENCE_MIN:I


# instance fields
.field public final mFrameTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

.field public final mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

.field public final mSeqId:I

.field public final mShotCount:I

.field public final mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public final mShotType:Lcom/motorola/camera/ShotType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/signin/internal/zab;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/android/gms/signin/internal/zab;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILcom/motorola/camera/ShotType;ILcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/Mcf$FrameTarget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    iput p3, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iput-object p5, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object p6, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mFrameTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ShotType;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mFrameTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getNewInstance(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
    .locals 8

    .line 1
    new-instance v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getSequenceId()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;-><init>(ILcom/motorola/camera/ShotType;ILcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/Mcf$FrameTarget;)V

    return-object v7
.end method

.method public static getNewInstance(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;I)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
    .locals 8

    .line 2
    new-instance v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    const/4 v4, 0x0

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    move-object v0, v7

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;-><init>(ILcom/motorola/camera/ShotType;ILcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/Mcf$FrameTarget;)V

    return-object v7
.end method

.method public static getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
    .locals 2

    .line 3
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/Mcf$FrameTarget;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public static getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/Mcf$FrameTarget;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
    .locals 8

    .line 4
    new-instance v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    shr-int/lit8 v1, v0, 0x10

    sget-object v2, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;-><init>(ILcom/motorola/camera/ShotType;ILcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/Mcf$FrameTarget;)V

    return-object v7
.end method

.method private static declared-synchronized getSequenceId()I
    .locals 4

    const-class v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SEQ_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x7fff

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget v3, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    iget v3, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SequenceIdentifier{mSeqId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mShotType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mShotCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMcfInstanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mShotSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mFrameTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mFrameTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget p2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget p2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mFrameTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
