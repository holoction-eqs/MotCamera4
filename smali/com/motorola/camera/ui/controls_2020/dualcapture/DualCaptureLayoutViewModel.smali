.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public volatile initialized:Z

.field public final layoutLiveData:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->layoutLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static getBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/tracing/Trace;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final init()V
    .locals 6

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lkotlin/Triple;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1204f7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstance().baseContext.getString(resId)"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f08011c

    invoke-static {v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    const v5, 0x7f08011d

    invoke-static {v5}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lkotlin/Triple;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f1204f8

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f08011e

    invoke-static {v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    const v4, 0x7f08011f

    invoke-static {v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->layoutLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewModel;->initialized:Z

    return-void
.end method
