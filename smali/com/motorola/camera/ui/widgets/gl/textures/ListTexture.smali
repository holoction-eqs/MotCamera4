.class public Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;


# instance fields
.field public mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

.field public final mBackgroundColor:[F

.field public mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mContinuousTextures:Ljava/util/HashSet;

.field public volatile mDirty:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLayoutSpec:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;

.field public final mOffScreenProj:[F

.field public final mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public volatile mResizeFbo:Z

.field public final mSize:Landroid/graphics/PointF;

.field public mTouchDownItem:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p2, 0x4

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mBackgroundColor:[F

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;-><init>(FFI)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mLayoutSpec:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenProj:[F

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mContinuousTextures:Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized doLayout()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->layout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final drawFbo([F[F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onDrawFbo([F[F)V

    return-void
.end method

.method public getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    return-object p0
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getOnScreenSize()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final declared-synchronized getRect()Lcom/google/common/base/Splitter$1;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    new-instance v1, Lcom/google/common/base/Splitter$1;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v5, v0, v4

    div-float/2addr v2, v4

    neg-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getViewMatrixOffset()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 1

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0
.end method

.method public declared-synchronized layout()V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_1

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    :cond_1
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_2

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mLayoutSpec:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;->mItemPadding:F

    add-float/2addr v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mLayoutSpec:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;->mBottomPadding:F

    add-float/2addr v3, v2

    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mLayoutSpec:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;->mJustify:I

    const/4 v7, 0x2

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v8

    div-float v7, v4, v8

    goto :goto_3

    :cond_5
    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    div-float v6, v4, v8

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, v8

    :goto_3
    sub-float/2addr v6, v7

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v1

    :goto_5
    neg-float v7, v2

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    div-float/2addr v9, v8

    sub-float/2addr v7, v9

    div-float v8, v3, v8

    add-float/2addr v8, v7

    invoke-virtual {v5, v6, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_7

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mLayoutSpec:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;->mItemPadding:F

    add-float/2addr v2, v5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mLayoutSpec:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;->mBottomPadding:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iput v4, v0, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->y:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadTexture()V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setupFboProjection()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void
.end method

.method public final mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getViewMatrixOffset()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, v2

    neg-float v1, v1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p0, p1

    neg-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/4 p0, 0x2

    new-array p0, p0, [F

    iget p1, p2, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    aput p1, p0, v1

    iget p1, p2, Landroid/graphics/PointF;->y:F

    const/4 p2, 0x1

    aput p1, p0, p2

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p1, Landroid/graphics/PointF;

    aget v0, p0, v1

    aget p0, p0, p2

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public onChanged$1()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->doLayout()V

    return-void
.end method

.method public onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    if-eqz p4, :cond_1

    new-instance p1, Landroid/graphics/PointF;

    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p4, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {p1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object p3

    iget p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    invoke-virtual {p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object p4

    invoke-virtual {p0, p3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4, v0, p1}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/google/common/base/Joiner;

    iget p1, p1, Lcom/google/common/base/Joiner;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of p1, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setPress()V

    :cond_0
    :goto_0
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onDrawFbo([F[F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setupFboProjection()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    :cond_2
    :goto_1
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mContinuousTextures:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenProj:[F

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onDrawFboContents([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDrawFboContents([F[F)V
    .locals 6

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mBackgroundColor:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-static {v2, v3, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/16 v0, 0x4100

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    return-void
.end method

.method public final onLongPress(ZLandroid/graphics/PointF;)V
    .locals 9

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p1, Lcom/google/common/base/Joiner;

    iget v1, p1, Lcom/google/common/base/Joiner;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->GAO_DING:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    const/16 v3, 0x12

    if-ne v0, v3, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->mAnimationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v8

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-direct {v3, v5, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->beginEdit()V

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_3
    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_4
    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    iget-object p1, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_5
    :goto_0
    :pswitch_0
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onPreDraw([F[F)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onPreDraw([F[F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, p5, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    if-eqz p0, :cond_9

    check-cast p0, Lcom/google/common/base/Joiner;

    iget p1, p0, Lcom/google/common/base/Joiner;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    instance-of p1, p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    check-cast p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {p0, p5}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto/16 :goto_3

    :goto_1
    instance-of p1, p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/4 p2, -0x1

    if-eqz p1, :cond_6

    check-cast p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object p1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget p1, p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne p1, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p2, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x13

    if-ne p2, p1, :cond_2

    sget-object p4, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->CINEMAGRAPH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {p4}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result p4

    goto :goto_2

    :cond_2
    move p4, p3

    :goto_2
    if-eqz p4, :cond_4

    if-ne p1, p2, :cond_3

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const p2, 0x7f1200a1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p5, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget p1, p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setClickable(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p2

    if-ne p1, p2, :cond_5

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    :cond_5
    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/16 p3, 0x3e8

    invoke-static {p0, p3, p1, p2}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z

    goto :goto_3

    :cond_6
    instance-of p1, p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    if-eqz p1, :cond_9

    check-cast p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    iget p1, p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne p1, p2, :cond_7

    goto :goto_3

    :cond_7
    const/16 p2, 0x7d0

    if-ne p1, p2, :cond_8

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_OPEN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_3

    :cond_8
    const/16 p2, 0xbb8

    if-ne p1, p2, :cond_9

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-static {}, Lkotlin/TuplesKt;->createFeebackIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 p4, 0x0

    const/16 p5, 0xe

    invoke-direct {p1, p2, p5, p3, p4}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_9
    :goto_3
    return-void

    :cond_a
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    :cond_b
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    if-eqz p0, :cond_d

    check-cast p0, Lcom/google/common/base/Joiner;

    iget p2, p0, Lcom/google/common/base/Joiner;->$r8$classId:I

    packed-switch p2, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    const/4 p4, 0x0

    cmpg-float p2, p2, p4

    const/4 p4, 0x4

    iget p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    const/high16 v0, 0x42800000    # 64.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-gez p2, :cond_c

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p2, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p2, :cond_d

    invoke-virtual {p2, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p3

    iget p3, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p4, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr p4, v1

    sub-float/2addr p3, p4

    iget p1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p5, v0

    sub-float p4, p3, p5

    cmpl-float p4, p1, p4

    if-lez p4, :cond_d

    cmpg-float p1, p1, p3

    if-gez p1, :cond_d

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_4

    :cond_c
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    invoke-virtual {p2, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    iget p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr p4, v1

    add-float/2addr p4, p2

    iget p1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float p2, p1, p4

    if-lez p2, :cond_d

    mul-float/2addr p5, v0

    add-float/2addr p5, p4

    cmpg-float p1, p1, p5

    if-gez p1, :cond_d

    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    :cond_d
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchDown(JLandroid/graphics/PointF;)V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    if-eqz p1, :cond_1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    check-cast p1, Lcom/google/common/base/Joiner;

    iget p0, p1, Lcom/google/common/base/Joiner;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    instance-of p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p0, :cond_1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setPress()V

    goto :goto_2

    :goto_1
    instance-of p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p0, :cond_1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 p2, -0x1

    if-ne p0, p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mContinuousTextures:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public final onTouchUp$1()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast v0, Lcom/google/common/base/Joiner;

    iget v0, v0, Lcom/google/common/base/Joiner;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz v0, :cond_0

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setPress()V

    :cond_0
    :goto_0
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getViewMatrixOffset()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v4, v4

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    :goto_0
    return v1
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setDirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDisplayOrientation(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setupFboProjection()V
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v7, v2, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float v9, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenProj:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenProj:[F

    const/4 v5, 0x0

    neg-float v6, v7

    neg-float v8, v9

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ListTexture("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " layoutSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " offscreenSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " resize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " dirty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " FBO:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unloadTexture()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->unloadTexture()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    return-void
.end method
