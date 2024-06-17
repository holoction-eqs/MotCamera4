.class public final Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final ImageData:Ljava/io/Serializable;

.field public final mFaceRects:Ljava/lang/Object;

.field public final mImageId:I

.field public final mOrientation:I

.field public final mRotationX:F

.field public final mRotationY:F


# direct methods
.method public constructor <init>(Landroid/util/Size;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationY:F

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v3, v1, v0

    iput v3, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationX:F

    .line 4
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:Ljava/io/Serializable;

    invoke-static {p1}, Lcom/motorola/camera/service/WatermarkEditorService;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    mul-float/2addr v1, v2

    const p1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v1, p1

    sget v2, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    new-instance p1, Landroid/util/Size;

    float-to-int v1, v1

    float-to-int v0, v0

    invoke-direct {p1, v1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mFaceRects:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([BFFII[Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:Ljava/io/Serializable;

    iput p2, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationX:F

    iput p3, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationY:F

    iput p4, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    iput p5, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    iput-object p6, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mFaceRects:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mRotationX. = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRotationY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mImageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ImageData ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:Ljava/io/Serializable;

    check-cast p0, [B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
