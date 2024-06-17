.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;
.source "SourceFile"


# instance fields
.field public mTouchDownHandled:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

.field public final synthetic val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;->val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    const-string p1, ""

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;->mTouchDownHandled:Z

    return-void
.end method


# virtual methods
.method public final handleSingleTap()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;->val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getZoomSegment()Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v2

    invoke-static {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->-$$Nest$mgetPortraitZoomValue(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result p0

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1, p0, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->toggleSingleTap(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;)V

    :cond_0
    return-void
.end method

.method public final handleTouchDown()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;->val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-static {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->-$$Nest$mgetPortraitZoomValue(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getZoomSegment()Lcom/motorola/camera/utility/ZoomSegment;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchDown(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;->mTouchDownHandled:Z

    return-void
.end method

.method public final handleTouchUp()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;->mTouchDownHandled:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchUp()V

    :cond_0
    return-void
.end method
