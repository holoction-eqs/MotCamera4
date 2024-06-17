.class public final Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    const-string v1, "PreviewSurfaceView"

    const/4 v2, 0x3

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_1

    aget v7, v2, v5

    :try_start_0
    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->TAG:Ljava/lang/String;

    const-string v8, "egl"

    invoke-static {p1, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "display"

    invoke-static {p2, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "config"

    invoke-static {p3, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v9, "EGL_NO_CONTEXT"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, v8, v7}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v8

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v8, v9, :cond_0

    sput v7, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    goto :goto_2

    :cond_0
    sget v8, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    const-string v8, "Failed to create OpenGL ES context with version:%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    sget v8, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Failed to create OpenGL ES context with version:%s,%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    :goto_2
    iput-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1, v6, p2}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->FIRST_FRAME:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {p1, v6, p2}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    monitor-enter p1

    :try_start_1
    sget-object p2, Lcom/motorola/camera/utility/TouchKeepOutHelper;->sTouchKeepOuts:Ljava/util/Map;

    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->checkMainUiLoading()V

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p3, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p3, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const-class p2, Lkotlin/UInt$Companion;

    monitor-enter p2

    :try_start_4
    const-string p3, "sharedContextProvider"

    invoke-static {p1, p3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p3, Lkotlin/UInt$Companion;->sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p2

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    monitor-enter v0

    :try_start_0
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->unloadTextures()V

    const/4 v4, 0x1

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    iput-object v1, v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v1, v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->unregisterStateChangeListener(Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/adobe/xmp/impl/xpath/XMPPath;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumMap;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v2, v2, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->clear()V

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2}, Lcom/motorola/camera/utility/Flags;->clear()V

    sget v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const-class v2, Lkotlin/UInt$Companion;

    monitor-enter v2

    :try_start_3
    const-string v3, "sharedContextProvider"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/UInt$Companion;->sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SharedContextProvider;

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput-object v1, Lkotlin/UInt$Companion;->sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_6
    monitor-exit v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->TAG:Ljava/lang/String;

    const-string v0, "egl"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p2

    const-string p3, "eglDestroyContext"

    invoke-static {p1, p3}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    if-nez p2, :cond_7

    sget p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    const-string p1, "PreviewSurfaceView"

    const-string p2, "Failed to destroy OpenGL ES context"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->FIRST_FRAME:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v2

    throw p0
.end method
