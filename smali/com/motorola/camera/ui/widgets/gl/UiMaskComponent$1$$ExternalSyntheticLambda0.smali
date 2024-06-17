.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;FFLcom/motorola/camera/ui/layoutmanager/LayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;->f$2:F

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;->f$3:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;->f$1:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;->f$3:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;->f$2:F

    mul-float/2addr p0, v3

    invoke-virtual {v1, p0}, Landroid/view/View;->setY(F)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/view/View;->setX(F)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mSpinnerText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
