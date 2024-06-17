.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;
.super Lkotlin/ULong$Companion;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

.field public final synthetic val$begin:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$beginWidth:F

.field public final synthetic val$borderDiff:F

.field public final synthetic val$cell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

.field public final synthetic val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$cell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$borderDiff:F

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$begin:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$beginWidth:F

    const/16 p1, 0x18

    invoke-direct {p0, p1}, Lkotlin/ULong$Companion;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveTalkback()V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$cell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveTalkback()V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected$1()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$cell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void
.end method

.method public final onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$borderDiff:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$begin:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$beginWidth:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-gez v3, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    add-float/2addr v4, v0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorderH:I

    int-to-float p0, p0

    invoke-virtual {p1, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    mul-float/2addr v0, p1

    add-float/2addr v0, v4

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorderH:I

    int-to-float p0, p0

    invoke-virtual {v1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    :cond_1
    :goto_0
    return-void
.end method
