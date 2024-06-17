.class public final Lcom/motorola/camera/background/common/TaskId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/motorola/camera/background/common/TaskId$CREATOR;


# instance fields
.field public clientId:I

.field public final comment:Ljava/lang/String;

.field public final jobNum:J

.field public final priority:I

.field public final sourceId:I

.field public final targetId:I

.field public final taskNum:J

.field public final useFifo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/common/TaskId$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/TaskId$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/TaskId;->CREATOR:Lcom/motorola/camera/background/common/TaskId$CREATOR;

    return-void
.end method

.method public constructor <init>(IJJIIIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iput-wide p2, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iput-wide p4, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iput p6, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iput p7, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    iput p8, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    iput-boolean p9, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    iput-object p10, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/TaskId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/TaskId;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->priority:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-static {v1, v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    const-string v1, "TaskId(clientId="

    const-string v2, ", jobNum="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useFifo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
