.class public final Lcom/motorola/camera/VideoConfigurationsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDataSize:I

.field public final mIsEisSupported:I

.field public final mIsLiveShotSupported:I

.field public final mMaxLiveShotSize:Landroid/util/Size;

.field public final mMaxPreviewFps:I

.field public final mVideoFps:I

.field public final mVideoSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mDataSize:I

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoSize:Landroid/util/Size;

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mMaxPreviewFps:I

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoFps:I

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsLiveShotSupported:I

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsEisSupported:I

    sub-int/2addr p1, v0

    if-le p1, v2, :cond_0

    new-instance p1, Landroid/util/Size;

    const/4 v0, 0x6

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, v0, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mMaxLiveShotSize:Landroid/util/Size;

    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/VideoConfigurationsInfo;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/motorola/camera/VideoConfigurationsInfo;

    iget-object v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoSize:Landroid/util/Size;

    iget-object v2, p1, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoSize:Landroid/util/Size;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mMaxPreviewFps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/motorola/camera/VideoConfigurationsInfo;->mMaxPreviewFps:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoFps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoFps:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsLiveShotSupported:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsLiveShotSupported:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsEisSupported:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsEisSupported:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x56a

    mul-int/lit8 v0, v0, 0x2a

    iget v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mMaxPreviewFps:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2a

    iget v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoFps:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2a

    iget v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsLiveShotSupported:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2a

    iget p0, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsEisSupported:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "videoConfigurationsInfo data:  video size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxPreviewFPS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mMaxPreviewFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoFPS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLiveShotSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsLiveShotSupported:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEisSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsEisSupported:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mDataSize:I

    add-int/lit8 v1, v1, -0x5

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, ", maxLiveShotSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/VideoConfigurationsInfo;->mMaxLiveShotSize:Landroid/util/Size;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
