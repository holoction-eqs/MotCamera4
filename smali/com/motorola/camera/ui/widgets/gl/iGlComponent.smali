.class public abstract Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"


# static fields
.field public static final NO_COLLISION_POLICY:Lcom/motorola/camera/ui/widgets/gl/collision/NoCollisionPolicy;


# instance fields
.field public mCollisionPolicy:Lcom/google/common/collect/ImmutableCollection$Builder;

.field public final mHandler:Landroid/os/Handler;

.field public mOrientation:I

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public volatile mTexInitState:I

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/collision/NoCollisionPolicy;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/collision/NoCollisionPolicy;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->NO_COLLISION_POLICY:Lcom/motorola/camera/ui/widgets/gl/collision/NoCollisionPolicy;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->ulp(F)F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->NO_COLLISION_POLICY:Lcom/motorola/camera/ui/widgets/gl/collision/NoCollisionPolicy;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mCollisionPolicy:Lcom/google/common/collect/ImmutableCollection$Builder;

    return-void
.end method


# virtual methods
.method public final declared-synchronized doLoadTextures()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->loadTextures()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    :cond_0
    return-void
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public final isTexInitialized()Z
    .locals 1

    const/4 v0, 0x3

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadTextures()Z
    .locals 0

    instance-of p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    return p0
.end method

.method public abstract onDraw([F[F[F)V
.end method

.method public onDrawFbo([F[F[F)V
    .locals 0

    return-void
.end method

.method public onKeyEvent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onPreDraw([F[F[F)Z
.end method

.method public onRotate(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    return-void
.end method

.method public abstract onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract unloadTextures()V
.end method
