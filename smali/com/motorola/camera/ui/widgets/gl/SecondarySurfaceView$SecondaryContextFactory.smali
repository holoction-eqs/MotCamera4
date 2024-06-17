.class public final Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# instance fields
.field public final sharedContext:Lkotlin/DeepRecursiveFunction;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;Lkotlin/DeepRecursiveFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryContextFactory;->sharedContext:Lkotlin/DeepRecursiveFunction;

    return-void
.end method


# virtual methods
.method public final createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    const-string v0, "egl"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryContextFactory;->sharedContext:Lkotlin/DeepRecursiveFunction;

    iget-object v0, v0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    invoke-static {p1, p2, p3, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    sget-object p2, Lkotlin/UInt$Companion;->INSTANCE:Lkotlin/UInt$Companion;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->secondaryRenderer:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;

    if-eqz p0, :cond_0

    monitor-enter p2

    :try_start_0
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p3, Lkotlin/UInt$Companion;->secondaryListenerWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_0
    const-string p0, "secondaryRenderer"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    const-string p0, "egl"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "display"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p3, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/UInt$Companion;->INSTANCE:Lkotlin/UInt$Companion;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lkotlin/UInt$Companion;->secondaryListenerWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p0

    const-string p2, "eglDestroyContext"

    invoke-static {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "SecondarySurfaceView"

    const-string p1, "Failed to destroy OpenGL ES context"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
