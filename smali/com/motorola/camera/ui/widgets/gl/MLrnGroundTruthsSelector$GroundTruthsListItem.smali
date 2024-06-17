.class public final Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mBackgroundColor:I

.field public final mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mDensity:F

.field public final mIsRTL:Z

.field public mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public mSelected:Z

.field public final mSelectedColor:I

.field public final mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mValue:Ljava/lang/Object;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 7

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object p1, p2

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelectedColor:I

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f060079

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mBackgroundColor:I

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    filled-new-array {p1, p1, p1, p1}, [I

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v3, ""

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mIsRTL:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final declared-synchronized getRect()Lcom/google/common/base/Splitter$1;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v1

    new-instance v1, Lcom/google/common/base/Splitter$1;

    neg-float v3, v0

    neg-float v4, v2

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final layout()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mIsRTL:Z

    const/high16 v2, 0x41800000    # 16.0f

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mDensity:F

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mDensity:F

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized loadTexture()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mDensity:F

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mDensity:F

    const/high16 v2, 0x438c0000    # 280.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/high16 v3, 0x42600000    # 56.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->layout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onDraw([F[F)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->setSelected$com$motorola$camera$ui$widgets$gl$textures$PopupListItem(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;

    iget-boolean p3, p2, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    if-eqz p3, :cond_0

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setSelected$com$motorola$camera$ui$widgets$gl$textures$PopupListItem(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelectedColor:I

    filled-new-array {p1, p1, p1, p1}, [I

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColors([I)V

    const/high16 p1, -0x1000000

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mBackgroundColor:I

    filled-new-array {p1, p1, p1, p1}, [I

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColors([I)V

    const/4 p1, -0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_1
    return-void
.end method

.method public final setValueAndText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mValue:Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mIsRTL:Z

    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p2, p2

    div-float/2addr p2, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mDensity:F

    mul-float/2addr v2, v0

    sub-float/2addr p2, v2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p2, p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mDensity:F

    mul-float/2addr v2, v0

    add-float/2addr v2, p2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    div-float/2addr p2, v1

    add-float/2addr p2, v2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_1
    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
