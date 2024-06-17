.class public final Lcom/motorola/camera/ui/widgets/gl/TextureManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# static fields
.field public static final STAGE_DEFERRED_LOAD:Ljava/util/List;

.field public static final STAGE_MAIN_UI_LOAD:Ljava/util/List;


# instance fields
.field public final mClearColor:[F

.field public final mComponents:Ljava/util/EnumMap;

.field public mDefaultClearColor:I

.field public final mDrawComponents:Ljava/util/ArrayList;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final mHandler:Landroid/os/Handler;

.field public final mLoadComponents:Ljava/util/ArrayList;

.field public mMatrices:Landroidx/appcompat/widget/Toolbar$1;

.field public mOrientation:I

.field public mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mProjection:I

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public mTranslucent:Z

.field public final mVMatrix:[F

.field public mVboManager:Lcom/adobe/xmp/impl/xpath/XMPPath;

.field public mViewPort:[I

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static $r8$lambda$gIJSkKcI-tThnvzTHp91NvVZEKM(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SESSION_CREATED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->WAIT_LOADING_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_DEFERRED_LOAD:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static constructor <clinit>()V
    .locals 29

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HDR10:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_MAIN_UI_LOAD:Ljava/util/List;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_FRONT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->NAV_BAR_BACKGROUND:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DEBUG_ID:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MOTION_PHOTOS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CINEMAGRAPH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MEDIA_CODEC:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v11, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DOC_SCAN_UI:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v12, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FOCUS_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v13, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SHUTTER_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v16, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ALWAYS_AWARE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v17, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CALIBRATION_ERROR_MESSAGE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v18, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v19, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TIMER_COUNTDOWN:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v20, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HOLD_STILL:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v21, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PANO_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v22, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->GROUP_SELFIE_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v23, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->COMPOSITION_GUIDE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v24, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MLRN_GROUND_TRUTHS_SELECTOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v25, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FRONT_FLASH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v26, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HELP_TOOLTIPS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v27, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SIMPLE_TOAST:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v28, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->UX_DUMP:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    filled-new-array/range {v1 .. v28}, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_DEFERRED_LOAD:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 4

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->values()[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->values()[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    new-instance v1, Landroidx/appcompat/widget/Toolbar$1;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/Toolbar$1;-><init>(I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Landroidx/appcompat/widget/Toolbar$1;

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    new-instance v1, Lcom/motorola/camera/utility/Flags;

    const-class v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-direct {v1, v2}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColor:[F

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    invoke-direct {v3, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-direct {v3, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-direct {v3, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    invoke-direct {v3, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;

    invoke-direct {v2, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    invoke-direct {v2, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    :goto_0
    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HDR10:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    invoke-direct {v3, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f06040b

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDefaultClearColor:I

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result p1

    const/4 v0, 0x0

    aput p1, v1, v0

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v0

    aput v0, v1, p1

    const/4 p1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    aput p0, v1, p1

    return-void
.end method


# virtual methods
.method public final declared-synchronized checkMainUiLoading()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_MAIN_UI_LOAD:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;)Z
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v3, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    const/high16 v4, -0x40000000    # -2.0f

    div-float/2addr v3, v4

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onUiEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_6

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_5

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onUiEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v1
.end method

.method public final declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/PreviewSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreviewSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_2

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {p2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 11

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColor:[F

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    move-object p1, v5

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f06040b

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDefaultClearColor:I

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Color;->red()F

    move-result v0

    aput v0, v1, v4

    invoke-virtual {p1}, Landroid/graphics/Color;->green()F

    move-result v0

    aput v0, v1, v3

    invoke-virtual {p1}, Landroid/graphics/Color;->blue()F

    move-result p1

    aput p1, v1, v2

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v7, v6}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SESSION_CREATED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v9, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7, v8}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->WAIT_LOADING_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v10, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v7, v9}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    invoke-virtual {v7, v8}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;I)V

    :goto_0
    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDefaultClearColor:I

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result p1

    aput p1, v1, v4

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result p1

    aput p1, v1, v3

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    aput p0, v1, v2

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v7, p0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v7, p0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v7, v9}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v7, v6}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-void
.end method
