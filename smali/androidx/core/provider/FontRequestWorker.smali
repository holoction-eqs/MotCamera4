.class public abstract Landroidx/core/provider/FontRequestWorker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final LOCK:Ljava/lang/Object;

.field public static final PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

.field public static final sTypefaceCache:Landroidx/collection/LruCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    new-instance v9, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;

    invoke-direct {v9}, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;-><init>()V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v1, 0x2710

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method public static getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    .locals 7

    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {p0, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Lcom/adobe/xmp/impl/ParseState;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p2, Lcom/adobe/xmp/impl/ParseState;->pos:I

    const/4 v2, 0x1

    const/4 v3, -0x3

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x2

    goto :goto_3

    :cond_2
    iget-object v1, p2, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v1, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    if-eqz v1, :cond_7

    array-length v4, v1

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_6

    aget-object v6, v1, v5

    iget v6, v6, Landroidx/core/provider/FontsContractCompat$FontInfo;->mResultCode:I

    if-eqz v6, :cond_5

    if-gez v6, :cond_4

    :goto_1
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    move v2, v4

    :cond_7
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v1, :cond_8

    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {p0, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    return-object p0

    :cond_8
    iget-object p2, p2, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast p2, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    sget-object v1, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatApi29Impl;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->createFromFontInfo(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {v0, p0, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {p0, p1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_9
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {p0, v3}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    return-object p0

    :catch_0
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    return-object p0
.end method
