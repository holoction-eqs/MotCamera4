.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/io/Serializable;

.field public final synthetic f$2:Ljava/io/Serializable;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;FI)V
    .locals 0

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$2:Ljava/io/Serializable;

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$3:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$3:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$2:Ljava/io/Serializable;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    check-cast v4, Lcom/motorola/camera/settings/CameraType;

    check-cast v3, Lcom/motorola/camera/utility/ZoomSegment;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-boolean v5, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    if-eqz v5, :cond_2

    iget-boolean v1, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v5

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-virtual {v0, v4, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v3, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onZoomChanged(Lcom/motorola/camera/utility/ZoomSegment;FZ)V

    :cond_2
    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    check-cast v4, Ljava/util/ArrayList;

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$it"

    invoke-static {v4, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$cameraIndex"

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/view/View;->setY(F)V

    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleOne:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->getDirectionX(FF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleTwo:Landroid/widget/ImageView;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->getDirectionX(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    :goto_3
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleOne:Landroid/widget/ImageView;

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleTwo:Landroid/widget/ImageView;

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
