.class public final Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $cameraData:Ljava/util/List;

.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->this$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->$cameraData:Ljava/util/List;

    invoke-direct {p0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->this$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->$cameraData:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->Companion:Lkotlin/ULong$Companion;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->this$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xb40

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v0, "createBitmap(FRAME_SIZE,\u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {v4, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;->$cameraData:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    if-ltz v2, :cond_9

    check-cast v3, Lcom/motorola/camera/CameraData;

    new-instance v7, Landroid/util/Size;

    iget-object v8, v3, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v9, "THUMB_WIDTH"

    invoke-virtual {v8, v9}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, v3, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v10, "THUMB_HEIGHT"

    invoke-virtual {v9, v10}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    invoke-static {v7}, Lkotlin/collections/ArraysUtilJVM;->getAspectRatio(Landroid/util/Size;)F

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/16 v10, 0x55a

    if-le v9, v7, :cond_0

    new-instance v7, Landroid/util/Size;

    int-to-float v9, v10

    mul-float/2addr v9, v8

    float-to-int v8, v9

    invoke-direct {v7, v8, v10}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    :cond_0
    new-instance v7, Landroid/util/Size;

    int-to-float v9, v10

    mul-float/2addr v9, v8

    float-to-int v8, v9

    invoke-direct {v7, v10, v8}, Landroid/util/Size;-><init>(II)V

    :goto_1
    iget-object v8, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v8}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v8

    sget-boolean v9, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v12

    if-ge v11, v12, :cond_1

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v11

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_2

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v11

    const/16 v12, 0x10e

    if-eq v11, v12, :cond_2

    :cond_1
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-le v11, v7, :cond_3

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v7

    const/16 v11, 0xb4

    if-ne v7, v11, :cond_3

    :cond_2
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v10, v9}, Landroid/util/Size;-><init>(II)V

    goto :goto_2

    :cond_3
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v9, v10}, Landroid/util/Size;-><init>(II)V

    :goto_2
    invoke-static {v8, v3, v7}, Lcom/motorola/camera/Util;->loadThumbnailByTargetSize(Landroid/content/Context;Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x2

    div-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-lt v9, v10, :cond_4

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v9, v7, v1, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_4
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-direct {v9, v1, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_3
    const/16 v7, 0x592

    const/16 v10, 0x38

    if-eqz v2, :cond_8

    const/4 v11, 0x1

    const/16 v12, 0xb08

    const/16 v13, 0x5ae

    if-eq v2, v11, :cond_7

    if-eq v2, v8, :cond_6

    const/4 v7, 0x3

    if-eq v2, v7, :cond_5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto :goto_4

    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v13, v13, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_6
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v10, v13, v7, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v13, v10, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_8
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v10, v10, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_4
    invoke-virtual {v0, v3, v9, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move v2, v5

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    throw v6

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v3, Lcom/motorola/camera/saving/FileName;

    sget-object p0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-direct {v3, p0, v5, v6}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    iget-object v7, p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->saveCollageCallback:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1;

    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/saving/FileName;Landroid/graphics/Bitmap;JLcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
