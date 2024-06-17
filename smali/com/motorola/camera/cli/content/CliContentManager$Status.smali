.class public final Lcom/motorola/camera/cli/content/CliContentManager$Status;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public faceDetected:Z

.field public isContentVisible:Z

.field public luxValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    iput-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    iget v3, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    iget-boolean v3, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    iget-boolean p1, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    iget-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    iget-boolean p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Status(luxValue="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", faceDetected="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isContentVisible="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
