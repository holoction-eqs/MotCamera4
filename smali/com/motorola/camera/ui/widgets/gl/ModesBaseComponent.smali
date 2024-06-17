.class public abstract Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public mCachedDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public final mDensity:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mDensity:F

    return-void
.end method


# virtual methods
.method public abstract dirty()V
.end method

.method public loadTextures()Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mCachedDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    instance-of p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    return p0
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mCachedDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object p3, p2

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p1, p3, :cond_0

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mCachedDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->dirty()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
