.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;


# instance fields
.field public mFrameCopyCallback:Ljava/lang/Object;

.field public final mOffscreenTexture:Ljava/lang/Object;

.field public mRect:Ljava/lang/Object;

.field public mScale:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v1}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    const/4 v3, 0x0

    if-lt v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast v5, Lcom/airbnb/lottie/value/Keyframe;

    if-ne v5, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    move v3, v2

    :cond_2
    if-eqz v3, :cond_3

    return-object v4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    return-object p0
.end method

.method public final getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    return-object p0
.end method

.method public final getEndProgress()F
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result p0

    return p0
.end method

.method public final getStartDelayProgress()F
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result p0

    return p0
.end method

.method public final isCachedValueEnabled(F)Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    const/4 p0, 0x0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isValueChanged(F)Z
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v1

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    return v2
.end method
