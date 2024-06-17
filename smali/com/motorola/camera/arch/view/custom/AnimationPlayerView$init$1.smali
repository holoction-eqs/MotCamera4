.class public final Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic $done:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;Landroidx/window/core/Version$bigInteger$2;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;->this$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    iput-object p2, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;->$done:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p2, "surface"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;->this$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    iget-object p2, p1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    new-instance p3, Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;->$done:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    if-nez p1, :cond_1

    sget-object p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->TAG:Ljava/lang/String;

    const-string p1, "Tried setting the surface on a null mediaPlayer instance"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const-string p0, "surface"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p0, "s"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const-string p0, "surface"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
