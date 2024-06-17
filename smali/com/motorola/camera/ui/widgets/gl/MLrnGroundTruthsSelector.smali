.class public final Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public mButton:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

.field public mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

.field public mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MLrnGroundTruthsSelector"

    return-object p0
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setButtonResources(II)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->mObservers:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->loadTexture()V

    sget-object v1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v4, v3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "\\s*,\\s*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v5, p0, v6}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;-><init>(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->loadTexture()V

    new-instance v4, Lcom/motorola/camera/PreviewSize;

    const/high16 v6, 0x430c0000    # 140.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    const/high16 v7, 0x41f00000    # 30.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-direct {v4, v6, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->layout()V

    invoke-virtual {v5, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->setValueAndText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    iput-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v5, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->setSelected$com$motorola$camera$ui$widgets$gl$textures$PopupListItem(Z)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onDrawFbo([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onDrawFbo([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onPreDraw([F[F)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onRotate(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "\\s*,\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->setSelected$com$motorola$camera$ui$widgets$gl$textures$PopupListItem(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v4, v3, v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;I)V

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setAlpha(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    monitor-exit v3

    iput v1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit v3

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v3

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    monitor-enter p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v0, 0x3

    :try_start_8
    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit p1

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit p1

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->unloadTexture()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
