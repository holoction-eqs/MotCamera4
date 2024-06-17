.class public final Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;
.super Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/cli/VideoTimerCallback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public blackFrame:Landroid/view/View;

.field public recordingIcon:Landroid/widget/ImageView;

.field public recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public recordingTimer:Landroid/widget/TextView;

.field public secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

.field public videoState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/cli/CliEventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    return-void
.end method


# virtual methods
.method public final getRecordingIndicatorX(I)F
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_3

    const v5, 0x7f07019e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    iget-object v5, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    const/16 p0, 0x10e

    if-eq p1, p0, :cond_4

    goto :goto_3

    :cond_4
    sub-int/2addr v0, v1

    goto :goto_3

    :cond_5
    sub-int/2addr v0, v2

    :goto_3
    int-to-float p0, v0

    sub-float/2addr p0, v3

    return p0

    :cond_6
    return v4
.end method

.method public final getRecordingIndicatorY(I)F
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_2

    const v4, 0x7f07019e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget-object v4, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr v0, v1

    :goto_2
    int-to-float p0, v0

    sub-float/2addr p0, v2

    return p0

    :cond_4
    return v2

    :cond_5
    return v3
.end method

.method public final onOrientationChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->updateVideoIndicatorLayout(I)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/shared/OrientationEvent;->getCliDisplayRotation(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->displayRotation:F

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->PORTRAIT_LANDSCAPE_CLI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->displayRotation:F

    const/16 v1, 0x5a

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->displayRotation:F

    :cond_0
    return-void
.end method

.method public final onViewAdded()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->acquireCliWakeLock()V

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoTimerCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->videoState:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->updateVideoIndicator(I)V

    return-void
.end method

.method public final onViewInflated()V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0a0394

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    const-class v0, Lkotlin/UInt$Companion;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lkotlin/UInt$Companion;->sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SharedContextProvider;

    if-eqz v2, :cond_1

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v3, Lkotlin/DeepRecursiveFunction;

    const/16 v4, 0x16

    invoke-direct {v3, v2, v4}, Lkotlin/DeepRecursiveFunction;-><init>(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    monitor-exit v0

    if-nez v3, :cond_2

    sget-object v0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get SharedContext instance"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    if-eqz v0, :cond_3

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryContextFactory;

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryContextFactory;-><init>(Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;Lkotlin/DeepRecursiveFunction;)V

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$WindowSurfaceFactory;

    invoke-direct {v2}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$WindowSurfaceFactory;-><init>()V

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x10

    const/16 v10, 0x8

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;-><init>(Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;Lkotlin/DeepRecursiveFunction;)V

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->secondaryRenderer:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_5

    const v2, 0x7f0a009b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->blackFrame:Landroid/view/View;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_6

    const v2, 0x7f0a016b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_7

    const v2, 0x7f0a0169

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_4

    :cond_7
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_8

    const v1, 0x7f0a016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    :cond_8
    iput-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingTimer:Landroid/widget/TextView;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onViewRemoved()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoTimerCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void
.end method

.method public final presentationLayoutRes()I
    .locals 0

    const p0, 0x7f0d0037

    return p0
.end method

.method public final updateVideoIndicator(I)V
    .locals 4

    iput p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->videoState:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupportedVideoMode(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->videoState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingTimer:Landroid/widget/TextView;

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingTimer:Landroid/widget/TextView;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingTimer:Landroid/widget/TextView;

    if-nez p1, :cond_1

    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz p1, :cond_b

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->updateVideoIndicatorLayout(I)V

    goto :goto_7

    :cond_6
    new-instance v0, Landroidx/appcompat/widget/SearchView$4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/SearchView$4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_7

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingTimer:Landroid/widget/TextView;

    if-nez p0, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_7
    return-void
.end method

.method public final updateVideoIndicatorLayout(I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->getRecordingIndicatorX(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->getRecordingIndicatorY(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->getRecordingIndicatorX(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->getRecordingIndicatorY(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method
