.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;
.super Lkotlin/ULong$Companion;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic val$end:F

.field public final synthetic val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;->val$end:F

    const/16 p1, 0x18

    invoke-direct {p0, p1}, Lkotlin/ULong$Companion;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;->val$end:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
