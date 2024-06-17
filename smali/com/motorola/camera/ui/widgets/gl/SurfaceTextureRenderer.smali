.class public final Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/motorola/camera/ui/widgets/gl/iRenderer;
.implements Lcom/motorola/camera/ui/widgets/gl/SharedContextProvider;
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

.field public mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

.field public final mDrawLock:Ljava/lang/Object;

.field public mFrameCount:I

.field public mFrameTimeEnable:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mPresentationLock:Ljava/lang/Object;

.field public mPresentationTime:J

.field public final mRenderContinuousComps:Ljava/util/Set;

.field public mRenderRequest:Z

.field public mStartTime:J

.field public mSurfaceReCreated:Z

.field public final mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mDrawLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuousComps:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameCount:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    return-void
.end method


# virtual methods
.method public final dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final doDrawFrame()V
    .locals 12

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_c

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_12

    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->FIRST_FRAME:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;

    const/16 v6, 0xb

    invoke-direct {v5, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    :goto_2
    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_6

    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/adobe/xmp/impl/xpath/XMPPath;

    if-nez v1, :cond_3

    new-instance v1, Lcom/adobe/xmp/impl/xpath/XMPPath;

    const/16 v4, 0x13

    invoke-direct {v1, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/adobe/xmp/impl/xpath/XMPPath;

    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/adobe/xmp/impl/xpath/XMPPath;

    iget-object v4, v1, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->values()[Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    iget-object v8, v1, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast v8, Ljava/util/EnumMap;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->getData()[F

    move-result-object v9

    invoke-static {v9}, Lcom/adobe/xmp/impl/xpath/XMPPath;->generateVbo([F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v1, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doLoadTextures()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doLoadTextures()V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_7
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :cond_8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    goto/16 :goto_2

    :cond_9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->_values()[I

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_5
    if-ge v6, v5, :cond_a

    aget v7, v4, v6

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    invoke-static {v7}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v9

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/Shader;

    invoke-static {v7}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMVshaderSourceId(I)I

    move-result v11

    invoke-static {v7}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMFshaderSourceId(I)I

    move-result v7

    invoke-direct {v10, v11, v7}, Lcom/motorola/camera/ui/widgets/gl/Shader;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :cond_b
    :goto_6
    monitor-exit v0

    goto/16 :goto_10

    :cond_c
    :goto_7
    :try_start_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v8

    if-eqz v8, :cond_e

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->unloadTextures()V

    iput v2, v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v7

    goto :goto_8

    :catchall_1
    move-exception p0

    monitor-exit v7

    throw p0

    :cond_e
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doLoadTextures()V

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    const-wide/16 v9, 0x21

    cmp-long v7, v7, v9

    if-lez v7, :cond_d

    :cond_10
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_9

    :cond_11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_12
    :goto_9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Landroidx/appcompat/widget/Toolbar$1;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    if-ne v5, v2, :cond_13

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    goto :goto_a

    :cond_13
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    :goto_a
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar$1;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v4

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Landroidx/appcompat/widget/Toolbar$1;

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    if-ne v6, v2, :cond_14

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    goto :goto_b

    :cond_14
    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    :goto_b
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/Toolbar$1;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v5

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v6}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v7, :cond_16

    goto :goto_c

    :cond_16
    iget v9, v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    if-ne v8, v9, :cond_15

    invoke-virtual {v7, v1, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onPreDraw([F[F[F)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_17
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDrawFbo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onDrawFbo([F[F[F)V

    sget-object v7, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_d

    :cond_18
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    iget-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mTranslucent:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_19

    const/4 v6, 0x0

    invoke-static {v6, v6, v6, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    goto :goto_e

    :cond_19
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColor:[F

    aget v9, v6, v3

    aget v10, v6, v2

    aget v6, v6, v7

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v9, v10, v6, v11}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    :goto_e
    const/16 v6, 0x4100

    invoke-static {v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    if-eqz v6, :cond_1a

    aget v9, v6, v3

    aget v10, v6, v2

    aget v7, v6, v7

    aget v6, v6, v8

    invoke-static {v9, v10, v7, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v6, "glViewport"

    invoke-static {v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_1a
    const/16 v6, 0x303

    invoke-static {v2, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDraw: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onDraw([F[F[F)V

    sget-object v7, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_f

    :cond_1b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_6

    :goto_10
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getPixelColor()V

    :cond_1c
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameTimeEnable:Z

    if-nez v0, :cond_1d

    goto :goto_11

    :cond_1d
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameCount:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mStartTime:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_1e

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameCount:I

    int-to-double v6, v2

    div-double/2addr v6, v4

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->GL_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    double-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameCount:I

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mStartTime:J

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    :goto_11
    return-void

    :goto_12
    monitor-exit v0

    throw p0
.end method

.method public final doFrame(J)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuousComps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-wide v2, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxPresentationTimeNsec:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VSyncManager;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/VSyncManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/Choreographer$FrameCallback;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/ColorToolbox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

    return-object p0
.end method

.method public final getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public final getNavBarSize()Landroid/graphics/PointF;
    .locals 5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    int-to-float v1, v1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget v3, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    mul-float/2addr p0, v1

    mul-float/2addr v1, v3

    invoke-virtual {v2, p0, v1}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-object v2
.end method

.method public final getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/Shader;

    :goto_0
    return-object v1

    :cond_1
    throw v1
.end method

.method public final getSurfaceDensity()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    return p0
.end method

.method public final getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    :goto_0
    return-object p0
.end method

.method public final getTsbOffsetBasedOnOrientation()Landroid/graphics/PointF;
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getNavBarSize()Landroid/graphics/PointF;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_1
    iput v2, p0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public final getUiContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/adobe/xmp/impl/xpath/XMPPath;

    :goto_0
    return-object p0
.end method

.method public final isCliDisplay()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->isCliDisplay()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSplitScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->isSplitScreen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mDrawLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz v0, :cond_1

    const-class v0, Lkotlin/UInt$Companion;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v1, Lkotlin/UInt$Companion;->secondaryListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->getCameraPreviewTexture()Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;

    const/16 v4, 0x9

    invoke-direct {v3, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->doDrawFrame()V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    const/16 v1, 0x3059

    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    invoke-static {p1, v1, v2, v3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GL_URGENT_THREAD:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x8

    goto :goto_0

    :cond_0
    const/4 p1, -0x4

    :goto_0
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    sget p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v0, "glViewport"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    filled-new-array {p1, p1, p2, p3}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v2

    iput-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0, p2, p3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceReCreated:Z

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceReCreated:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v2, p2, p3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v2, v0, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    iput p3, v0, Lcom/motorola/camera/CameraApp;->mNotchScreenUnuseHeight:I

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    sget p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/16 p1, 0x1f03

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "glGetString"

    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const-string p2, "OES_EGL_image_external"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SurfaceTextureRenderer"

    const-string p2, "OES_EGL_image_external GL extension is not supported!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0xbe2

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    invoke-static {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final playHaptic(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->playHaptic(I)V

    goto :goto_0

    :cond_0
    const-string p0, "SurfaceTextureRenderer"

    const-string p1, "Tried to perform haptics but previewComponent is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    return-void
.end method

.method public final registerStateChangeListener(Ljava/util/Collection;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->registerStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method

.method public final requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final requestRenderSurface()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public final requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final resetBlendFunc()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    const/16 v0, 0x303

    invoke-static {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    :cond_0
    return-void
.end method

.method public final runOnGlThread(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_0
    return-void
.end method

.method public final unregisterStateChangeListener(Ljava/util/Collection;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->unregisterStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method
