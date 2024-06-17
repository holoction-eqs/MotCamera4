.class public Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mIsLoaded:Z

.field public mPreviewRotation:I

.field public mPreviewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mSTMatrix:[F

.field public mUpdateVbo:Z

.field public mVbo:I

.field public mVerticesData:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mSTMatrix:[F

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewRotation:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mIsLoaded:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->updateVbo()V

    return-void
.end method

.method public onDraw([F[F)V
    .locals 8

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mUpdateVbo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->updateVbo()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    const/4 v4, 0x3

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    const/16 v3, 0xc

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v5, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ST_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mSTMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ALPHA:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    invoke-static {p0, v6, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    return-void
.end method

.method public bridge synthetic setRadius(F)V
    .locals 0

    return-void
.end method

.method public setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 11

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSensorOrientationSameAsScreen()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    iget v4, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-direct {v0, v4, p1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p1

    move-object v10, v0

    move v0, p1

    move-object p1, v10

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    div-float v0, v4, v0

    :cond_1
    cmpg-float v2, v0, v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-gez v2, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/camera/VideoHelper;->ANAMORPHIC_VIDEO_SIZES:Ljava/util/List;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/VideoFormat;

    iget-object v7, v7, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    if-nez v2, :cond_5

    div-float v2, v0, v1

    sub-float v2, v4, v2

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->getData()[F

    move-result-object v7

    move-object v8, v6

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p2, v9}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    const/4 v9, 0x4

    aput v2, v7, v9

    const/16 v9, 0x9

    aput v2, v7, v9

    :cond_4
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-nez v2, :cond_5

    array-length v2, v7

    new-array v8, v2, [F

    iput-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVerticesData:[F

    invoke-static {v7, v5, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mUpdateVbo:Z

    :cond_5
    const v2, 0x3cf5c28f    # 0.03f

    sub-float v7, v0, v2

    cmpg-float v7, v1, v7

    if-gez v7, :cond_6

    div-float v7, v1, v0

    goto :goto_1

    :cond_6
    move v7, v4

    :goto_1
    sub-float v2, v1, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_7

    div-float/2addr v0, v1

    goto :goto_2

    :cond_7
    move v0, v4

    :goto_2
    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/CameraKpi;

    move-result-object p2

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_8

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->getData()[F

    move-result-object v1

    array-length v6, v1

    new-array v8, v6, [F

    iput-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVerticesData:[F

    invoke-static {v1, v5, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mUpdateVbo:Z

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    mul-float/2addr v3, v0

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    mul-float/2addr p1, v7

    invoke-direct {v1, v3, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewRotation:I

    iget-object p1, p2, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    goto :goto_4

    :cond_9
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    mul-float/2addr v3, v0

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    mul-float/2addr p1, v7

    invoke-direct {v1, v3, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    :goto_3
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p2, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    float-to-int p1, p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewRotation:I

    :goto_4
    return-void
.end method

.method public final unloadTexture()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mIsLoaded:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    return-void
.end method

.method public final updateVbo()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVerticesData:[F

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVerticesData:[F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->generateVbo([F)I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mUpdateVbo:Z

    return-void
.end method
