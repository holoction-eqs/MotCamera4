.class public abstract Landroidx/core/graphics/TypefaceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sTypefaceCache:Landroidx/collection/LruCache;

.field public static final sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatApi29Impl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/graphics/TypefaceCompatApi29Impl;

    invoke-direct {v0}, Landroidx/core/graphics/TypefaceCompatApi29Impl;-><init>()V

    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatApi29Impl;

    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    return-void
.end method

.method public static createFromResourcesFamilyXml(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;ILjava/lang/String;IIL_COROUTINE/_BOUNDARY;Z)Landroid/graphics/Typeface;
    .locals 14

    move-object v0, p1

    move/from16 v6, p6

    move-object/from16 v1, p7

    instance-of v2, v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    const/4 v7, -0x3

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_d

    check-cast v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    iget-object v2, v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mSystemFontFamilyName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v8

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, L_COROUTINE/_BOUNDARY;->callbackSuccessAsync(Landroid/graphics/Typeface;)V

    :cond_2
    return-object v2

    :cond_3
    if-eqz p8, :cond_4

    iget v2, v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    if-nez v2, :cond_5

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    :goto_2
    move v2, v9

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    const/4 v4, -0x1

    if-eqz p8, :cond_6

    iget v5, v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    move v10, v5

    goto :goto_4

    :cond_6
    move v10, v4

    :goto_4
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v11, Lkotlin/DeepRecursiveFunction;

    invoke-direct {v11, v1}, Lkotlin/DeepRecursiveFunction;-><init>(L_COROUTINE/_BOUNDARY;)V

    iget-object v12, v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Landroidx/core/provider/FontRequest;

    new-instance v13, Landroidx/work/impl/StartStopTokens;

    const/4 v0, 0x2

    invoke-direct {v13, v0, v11, v5}, Landroidx/work/impl/StartStopTokens;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_9

    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v12, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_7

    iget-object v1, v13, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v1, Lkotlin/DeepRecursiveFunction;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$7;

    invoke-direct {v2, v9, v13, v1, v0}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_7
    if-ne v10, v4, :cond_8

    move-object v2, p0

    invoke-static {v1, p0, v12, v6}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/work/impl/StartStopTokens;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    iget-object v8, v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_7

    :cond_8
    move-object v2, p0

    new-instance v9, Landroidx/core/provider/FontRequestWorker$1;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v3, v12

    move/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Landroidx/core/provider/FontRequestWorker$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;II)V

    :try_start_0
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v1, v10

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    check-cast v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-virtual {v13, v0}, Landroidx/work/impl/StartStopTokens;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    iget-object v8, v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_7

    :catch_0
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    iget-object v0, v13, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, Lkotlin/DeepRecursiveFunction;

    iget-object v1, v13, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$9;

    const/4 v3, 0x5

    invoke-direct {v2, v13, v0, v7, v3}, Lcom/motorola/camera/mcf/Mcf$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_9
    move-object v2, p0

    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v12, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, v7}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_a

    iget-object v1, v13, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v1, Lkotlin/DeepRecursiveFunction;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$7;

    invoke-direct {v2, v9, v13, v1, v0}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    move-object v8, v0

    goto :goto_7

    :cond_a
    new-instance v0, Landroidx/core/provider/FontRequestWorker$2;

    invoke-direct {v0, v13, v3}, Landroidx/core/provider/FontRequestWorker$2;-><init>(Ljava/lang/Object;I)V

    sget-object v4, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    sget-object v1, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v7, v8}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    goto :goto_7

    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v10, Landroidx/core/provider/FontRequestWorker$1;

    const/4 v5, 0x1

    move-object v0, v10

    move-object v1, v7

    move-object v2, p0

    move-object v3, v12

    move/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Landroidx/core/provider/FontRequestWorker$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;II)V

    sget-object v0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroidx/core/provider/FontRequestWorker$2;

    invoke-direct {v1, v7, v9}, Landroidx/core/provider/FontRequestWorker$2;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_c

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_6

    :cond_c
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    :goto_6
    new-instance v3, Lcom/motorola/camera/mcf/Mcf$7;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v2, v10, v1}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_7
    move-object/from16 v13, p2

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_d
    sget-object v2, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatApi29Impl;

    check-cast v0, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    iget-object v0, v0, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->mEntries:[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    array-length v2, v0

    move v4, v3

    move-object v5, v8

    :goto_8
    if-ge v4, v2, :cond_10

    aget-object v10, v0, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    new-instance v11, Landroid/graphics/fonts/Font$Builder;

    iget v12, v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v13, p2

    :try_start_7
    invoke-direct {v11, v13, v12}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    iget v12, v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v11

    iget-boolean v12, v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    if-eqz v12, :cond_e

    move v12, v9

    goto :goto_9

    :cond_e
    move v12, v3

    :goto_9
    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v11

    iget v12, v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v11

    iget-object v10, v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v10

    if-nez v5, :cond_f

    new-instance v11, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v11, v10}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v5, v11

    goto :goto_a

    :cond_f
    invoke-virtual {v5, v10}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_a

    :catch_4
    move-object/from16 v13, p2

    :catch_5
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_10
    move-object/from16 v13, p2

    if-nez v5, :cond_11

    goto :goto_b

    :cond_11
    :try_start_8
    invoke-virtual {v5}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    new-instance v2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-static {v0, v6}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_b

    :catch_6
    move-object/from16 v13, p2

    :catch_7
    :goto_b
    if-eqz v1, :cond_13

    if-eqz v8, :cond_12

    invoke-virtual {v1, v8}, L_COROUTINE/_BOUNDARY;->callbackSuccessAsync(Landroid/graphics/Typeface;)V

    goto :goto_c

    :cond_12
    invoke-virtual {v1, v7}, L_COROUTINE/_BOUNDARY;->callbackFailAsync(I)V

    :cond_13
    :goto_c
    if-eqz v8, :cond_14

    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-static/range {p2 .. p6}, Landroidx/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v8
.end method

.method public static createResourceUid(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
