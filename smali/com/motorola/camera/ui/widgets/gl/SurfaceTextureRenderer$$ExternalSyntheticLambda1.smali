.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

.field public final synthetic f$1:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuousComps:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuousComps:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
