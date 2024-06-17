.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final slowDownRate:I

.field public final sourceVideoDate:J

.field public final sourceVideoFrameRate:I

.field public final sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

.field public final sourceVideoName:Ljava/lang/String;

.field public final targetVideoDate:J


# direct methods
.method public constructor <init>(Lcom/motorola/camera/storage/MediaFile;Ljava/lang/String;JJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoDate:J

    iput-wide p5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->targetVideoDate:J

    iput p7, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    iput p8, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    iget-object v1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    iget-object v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoName:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoDate:J

    iget-wide v5, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoDate:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->targetVideoDate:J

    iget-wide v5, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->targetVideoDate:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    iget v3, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    iget p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoName:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;II)I

    move-result v0

    iget-wide v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoDate:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->targetVideoDate:J

    invoke-static {v1, v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuperSlowMotionData(sourceVideoMediaFile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceVideoName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceVideoDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", targetVideoDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->targetVideoDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceVideoFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slowDownRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
