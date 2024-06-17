.class public final synthetic Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "this$0"

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    if-eqz v1, :cond_0

    iget v3, v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;->f$1:I

    int-to-float v4, v3

    invoke-virtual {v1, v4}, Landroid/view/View;->setX(F)V

    iget v4, v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;->f$2:I

    int-to-float v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->setY(F)V

    iget v5, v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;->f$3:I

    sub-int/2addr v5, v3

    iget v0, v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;->f$4:I

    sub-int/2addr v0, v4

    int-to-float v3, v5

    const/high16 v4, 0x40400000    # 3.0f

    div-float v5, v3, v4

    int-to-float v0, v0

    div-float v4, v0, v4

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    iget v8, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mRadius:F

    add-float v9, v7, v8

    invoke-direct {v6, v7, v7, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v10, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10, v7, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    const/high16 v11, 0x43340000    # 180.0f

    const/high16 v12, 0x42b40000    # 90.0f

    invoke-virtual {v10, v6, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v6, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v6, v3, v8

    sub-float/2addr v6, v7

    new-instance v10, Landroid/graphics/RectF;

    add-float v11, v6, v8

    invoke-direct {v10, v6, v7, v11, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v13, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    const/4 v14, 0x2

    int-to-float v14, v14

    mul-float v15, v14, v5

    invoke-virtual {v13, v15, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v13, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    move-object/from16 v16, v2

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v13, v10, v2, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    sub-float/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v2, v0, v8

    sub-float/2addr v2, v7

    new-instance v10, Landroid/graphics/RectF;

    add-float/2addr v8, v2

    invoke-direct {v10, v7, v2, v9, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v9, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    sub-float/2addr v0, v7

    invoke-virtual {v9, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v10, v12, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v5, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    mul-float/2addr v14, v4

    invoke-virtual {v5, v7, v14}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v6, v2, v11, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v14}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    move-object/from16 v0, v16

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-boolean v1, v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPanelOpened:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    :cond_2
    return-void
.end method
