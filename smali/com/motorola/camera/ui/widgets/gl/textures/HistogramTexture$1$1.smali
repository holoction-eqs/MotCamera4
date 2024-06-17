.class public final Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;
.super Lkotlin/ULong$Companion;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Runnable;

.field public final synthetic val$displayOrientation:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;II)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->this$1:Ljava/lang/Runnable;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->val$displayOrientation:I

    const/16 p1, 0x18

    invoke-direct {p0, p1}, Lkotlin/ULong$Companion;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->$r8$classId:I

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->val$displayOrientation:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->this$1:Ljava/lang/Runnable;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    int-to-float p1, v1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    int-to-float p1, v1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->this$1:Ljava/lang/Runnable;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
