.class public final Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;
.super Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;
.source "SourceFile"


# virtual methods
.method public final setVideoRecording(Z)V
    .locals 0

    return-void
.end method

.method public final setupZoomConfig()V
    .locals 4

    const-string v0, "mZoomSegment"

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/utility/PortraitLensUtil;->mapZoomSegmentToFocalSegment(Lcom/motorola/camera/utility/ZoomSegment;)Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result v1

    new-instance v2, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->getCameraType(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    return-void
.end method
