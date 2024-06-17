.class public final Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mThumbnail:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public final tracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->tracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/high16 v2, -0x1000000

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->mBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->mBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->mBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->mThumbnail:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->mThumbnail:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->tracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->mThumbnail:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->mBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
