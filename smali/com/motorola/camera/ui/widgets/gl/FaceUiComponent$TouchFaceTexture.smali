.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;
.source "SourceFile"


# instance fields
.field public final mDensity:F

.field public final mFaceMatrix:[F

.field public mMirror:Z

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public final mTouchRect:Lcom/google/common/base/Splitter$1;

.field public final mVertices:[F

.field public mViewSize:Lcom/motorola/camera/PreviewSize;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-direct {p0, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    new-instance p1, Lcom/google/common/base/Splitter$1;

    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    const/16 v0, 0x12

    invoke-direct {p1, p4, v0}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTouchRect:Lcom/google/common/base/Splitter$1;

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mFaceMatrix:[F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    const/16 p1, 0xc

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices:[F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDensity:F

    return-void
.end method


# virtual methods
.method public final cancelTouch()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    return-void
.end method

.method public final declared-synchronized getRect()Lcom/google/common/base/Splitter$1;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTouchRect:Lcom/google/common/base/Splitter$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDensity:F

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 2

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->-$$Nest$misPhotoTapAnywhere(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget p4, p2, Landroid/graphics/PointF;->x:F

    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p4

    const-string p4, "x"

    invoke-virtual {p1, p4, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p3, p3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p3, p3

    div-float/2addr p3, v1

    sub-float/2addr p2, p3

    neg-float p2, p2

    const-string p3, "y"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->FACE_MOVE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    const/16 v1, 0xc11

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const-string v0, "glScissor"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string p1, "glDisable"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->onTouch(Landroid/view/MotionEvent;)Z

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic unloadTexture()V
    .locals 0

    return-void
.end method

.method public final updateTouchRect()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Landroidx/appcompat/widget/Toolbar$1;

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar$1;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v3

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    const/16 v4, 0x10

    new-array v4, v4, [F

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v17, v7, v8

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    div-float v18, v6, v8

    const/4 v6, 0x3

    new-array v15, v6, [F

    const/4 v14, 0x0

    invoke-static {v4, v14}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mFaceMatrix:[F

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v4, v6, v7, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mMirror:Z

    const/16 v19, 0x6

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices:[F

    if-eqz v2, :cond_2

    aget v2, v13, v19

    goto :goto_1

    :cond_2
    aget v2, v13, v14

    :goto_1
    move v6, v2

    const/4 v2, 0x4

    aget v7, v13, v2

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object v9, v4

    move-object v11, v3

    move-object/from16 v20, v13

    move-object v13, v1

    move/from16 v21, v14

    move v14, v2

    move-object v2, v15

    invoke-static/range {v6 .. v16}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTouchRect:Lcom/google/common/base/Splitter$1;

    iget-object v6, v15, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    aget v7, v2, v21

    sub-float v7, v7, v17

    iput v7, v6, Landroid/graphics/RectF;->left:F

    aget v7, v2, v5

    sub-float v7, v7, v18

    iput v7, v6, Landroid/graphics/RectF;->top:F

    iget-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mMirror:Z

    if-eqz v6, :cond_3

    aget v6, v20, v21

    goto :goto_2

    :cond_3
    aget v6, v20, v19

    :goto_2
    aget v7, v20, v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v9, v4

    move-object v11, v3

    move-object v13, v1

    move-object v1, v15

    move-object v15, v2

    invoke-static/range {v6 .. v16}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    iget-object v3, v1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    aget v4, v2, v21

    sub-float v4, v4, v17

    iput v4, v3, Landroid/graphics/RectF;->right:F

    aget v2, v2, v5

    sub-float v2, v2, v18

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v5, :cond_5

    iget v5, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v5, v4

    if-lez v6, :cond_4

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v6, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_4
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v2, v4

    if-lez v5, :cond_5

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v5, v2, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_5
    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result v3

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/high16 v4, 0x42480000    # 50.0f

    :goto_3
    invoke-virtual {v0, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3e23d70a    # 0.16f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDensity:F

    mul-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    :goto_4
    return-void
.end method
