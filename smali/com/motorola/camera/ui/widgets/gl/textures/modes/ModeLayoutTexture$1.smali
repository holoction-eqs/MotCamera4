.class public final Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

.field public final synthetic val$begin:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$item:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

.field public final synthetic val$listener:Ljava/lang/Runnable;

.field public final synthetic val$offset:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;I)V
    .locals 0

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$item:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$begin:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$offset:F

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$listener:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 7

    const/4 p1, 0x4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->$r8$classId:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v3, 0x0

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$offset:F

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$begin:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$item:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr p2, v4

    add-float/2addr p2, v5

    invoke-direct {v0, v6, p2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr p2, v4

    add-float/2addr p2, v5

    invoke-direct {v0, v6, p2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 8

    const/4 p1, 0x4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->$r8$classId:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$listener:Ljava/lang/Runnable;

    const/4 v4, 0x0

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$offset:F

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$begin:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$item:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v6, v5

    invoke-direct {v0, v7, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    iget-object p1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :goto_0
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_1
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v6, v5

    invoke-direct {v3, v7, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    iget-object p1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;->val$item:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
