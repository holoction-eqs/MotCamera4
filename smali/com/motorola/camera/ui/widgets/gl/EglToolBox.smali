.class public abstract Lcom/motorola/camera/ui/widgets/gl/EglToolBox;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const/16 v0, 0x3000

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->getEglErrorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ": "

    invoke-static {p1, v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    const-string v0, "egl"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareContext"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3098

    const/16 v1, 0x3038

    filled-new-array {v0, p4, v1}, [I

    move-result-object p4

    invoke-interface {p0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    const-string p2, "eglCreateContext"

    invoke-static {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const-string p0, "EGL_NO_CONTEXT"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public static final createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;Z)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 8

    const-string v0, "egl"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeWindow"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3055

    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extens"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, " "

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/16 v6, 0xa

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->requireNonNegativeLimit(I)V

    invoke-static {v2, v0, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->indexOf(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v2

    :cond_1
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v6, v0, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->indexOf(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_2

    :cond_3
    invoke-static {v0, v1, v2, v2}, Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/String;[Ljava/lang/String;ZI)Lkotlin/text/DelimitedRangesSequence;

    move-result-object v1

    new-instance v2, Lkotlin/collections/IndexingIterable;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lkotlin/collections/IndexingIterable;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/ranges/IntRange;

    invoke-static {v0, v2}, Lkotlin/text/StringsKt__StringsKt;->substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    const-string v0, "EGL_EXT_gl_colorspace_display_p3_passthrough"

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3038

    if-eqz v0, :cond_5

    if-eqz p4, :cond_5

    const/16 p4, 0x309d

    const/16 v0, 0x3490

    filled-new-array {p4, v0, v1}, [I

    move-result-object p4

    goto :goto_3

    :cond_5
    filled-new-array {v1}, [I

    move-result-object p4

    :goto_3
    invoke-interface {p0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    const/16 v3, 0x3000

    if-eq v2, v3, :cond_6

    array-length p4, p4

    if-le p4, v5, :cond_6

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->getEglErrorName(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "eglCreateWindowSurface: "

    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->TAG:Ljava/lang/String;

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v1}, [I

    move-result-object p4

    invoke-interface {p0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    :cond_6
    const-string p1, "eglCreateWindowSurface"

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    if-nez v0, :cond_7

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string p0, "EGL_NO_SURFACE"

    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method public static final destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 1

    const-string v0, "egl"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result p1

    const-string p2, "eglDestroySurface"

    invoke-static {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    return p1
.end method

.method public static getEglErrorName(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "eglGetError(%x)"

    const-string v2, "format(format, *args)"

    invoke-static {p0, v0, v1, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "EGL_CONTEXT_LOST"

    goto :goto_0

    :pswitch_1
    const-string p0, "EGL_BAD_SURFACE"

    goto :goto_0

    :pswitch_2
    const-string p0, "EGL_BAD_PARAMETER"

    goto :goto_0

    :pswitch_3
    const-string p0, "EGL_BAD_NATIVE_WINDOW"

    goto :goto_0

    :pswitch_4
    const-string p0, "EGL_BAD_NATIVE_PIXMAP"

    goto :goto_0

    :pswitch_5
    const-string p0, "EGL_BAD_MATCH"

    goto :goto_0

    :pswitch_6
    const-string p0, "EGL_BAD_DISPLAY"

    goto :goto_0

    :pswitch_7
    const-string p0, "EGL_BAD_CURRENT_SURFACE"

    goto :goto_0

    :pswitch_8
    const-string p0, "EGL_BAD_CONTEXT"

    goto :goto_0

    :pswitch_9
    const-string p0, "EGL_BAD_CONFIG"

    goto :goto_0

    :pswitch_a
    const-string p0, "EGL_BAD_ATTRIBUTE"

    goto :goto_0

    :pswitch_b
    const-string p0, "EGL_BAD_ALLOC"

    goto :goto_0

    :pswitch_c
    const-string p0, "EGL_BAD_ACCESS"

    goto :goto_0

    :pswitch_d
    const-string p0, "EGL_NOT_INITIALIZED"

    goto :goto_0

    :pswitch_e
    const-string p0, "EGL_SUCCESS"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final makeCurrent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    const-string v0, "egl"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const-string p1, "eglMakeCurrent"

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    return-void
.end method
