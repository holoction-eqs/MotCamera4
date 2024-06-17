.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;
.source "SourceFile"


# static fields
.field public static final EPSILON_1:F


# instance fields
.field public mAction:I

.field public final mAnimFade:I

.field public final mAnimRotate:I

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mFadeAnimation:I

.field public final mHideRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

.field public final mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

.field public final mShowRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->EPSILON_1:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 1

    .line 1
    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "component"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mComponent"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I

    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    invoke-direct {p3, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mShowRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mHideRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    const/4 p3, 0x2

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    .line 3
    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->nextUniqueId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p3

    .line 4
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 6
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimRotate:I

    .line 7
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    return-void
.end method


# virtual methods
.method public onPreDraw([F[F)V
    .locals 1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ContinuouslyRenderingAnimationTracker"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationUpdate([F)Z

    monitor-enter p0

    :try_start_0
    monitor-enter p0

    monitor-exit p0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->cancelAnimation(I)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mShowRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mHideRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->run()V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I
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

.method public setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
