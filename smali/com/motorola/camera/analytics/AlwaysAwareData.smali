.class public final Lcom/motorola/camera/analytics/AlwaysAwareData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public action:I

.field public detectionTime:J

.field public geoAvailable:Z

.field public mType:I

.field public networkSubtype:I

.field public networkType:I

.field public scanSuccess:I

.field public scanTime:J

.field public totFields:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->detectionTime:J

    iput-wide v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->action:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanSuccess:I

    iput-wide v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    iput v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkType:I

    iput v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkSubtype:I

    iput-boolean v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->geoAvailable:Z

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->getMCheckInData(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlwaysAwareData{detectionTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->detectionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", scanTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scanSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", networkSubtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkSubtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", geoAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->geoAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLensFacing=false, mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
