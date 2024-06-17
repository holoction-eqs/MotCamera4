.class public final Landroidx/appcompat/widget/ResourceManagerInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

.field public static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field public static INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;


# instance fields
.field public final mDrawableCaches:Ljava/util/WeakHashMap;

.field public mHasCheckedVectorDrawableSetup:Z

.field public mHooks:Lcom/airbnb/lottie/manager/FontAssetManager;

.field public mTintLists:Ljava/util/WeakHashMap;

.field public mTypedValue:Landroid/util/TypedValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    invoke-direct {v0}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized get()Landroidx/appcompat/widget/ResourceManagerInternal;
    .locals 2

    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-direct {v1}, Landroidx/appcompat/widget/ResourceManagerInternal;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    :cond_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 4

    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, p0, 0x1f

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v3, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long v5, v1

    or-long/2addr v3, v5

    invoke-virtual {p0, p1, v3, v4}, Landroidx/appcompat/widget/ResourceManagerInternal;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x7f080058

    if-ne p2, v1, :cond_3

    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const v5, 0x7f080057

    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const v5, 0x7f080059

    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-direct {p2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    const v1, 0x7f08007b

    if-ne p2, v1, :cond_4

    const p2, 0x7f07003b

    goto :goto_0

    :cond_4
    const v1, 0x7f08007a

    if-ne p2, v1, :cond_5

    const p2, 0x7f07003c

    goto :goto_0

    :cond_5
    const v1, 0x7f08007c

    if-ne p2, v1, :cond_6

    const p2, 0x7f07003d

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p2

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_7

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {p0, p1, v3, v4, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    :cond_7
    return-object p2
.end method

.method public final declared-synchronized getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, v1}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->remove(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 11

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean v2, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    const v0, 0x7f080096

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3
    instance-of v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_e

    .line 4
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 5
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_c

    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    sget-object p1, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 7
    invoke-static {p1, v3}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object p3, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    const p3, 0x7f080089

    if-ne p2, p3, :cond_5

    .line 9
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    .line 10
    invoke-static {p1, v4}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_6
    :goto_4
    move-object v0, p1

    goto/16 :goto_6

    .line 11
    :cond_7
    iget-object v3, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-eqz v3, :cond_b

    const v3, 0x7f080084

    const v5, 0x102000d

    const v6, 0x102000f

    const/high16 v7, 0x1020000

    const v8, 0x7f040107

    const v9, 0x7f040109

    if-ne p2, v3, :cond_8

    .line 12
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    .line 13
    sget-object v10, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 14
    invoke-static {v3, v7, v10}, Lcom/airbnb/lottie/manager/FontAssetManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v3, v6, v10}, Lcom/airbnb/lottie/manager/FontAssetManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v8}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1, v3, v10}, Lcom/airbnb/lottie/manager/FontAssetManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_5

    :cond_8
    const v3, 0x7f08007b

    if-eq p2, v3, :cond_9

    const v3, 0x7f08007a

    if-eq p2, v3, :cond_9

    const v3, 0x7f08007c

    if-ne p2, v3, :cond_a

    :cond_9
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v9}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    .line 15
    sget-object v9, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 16
    invoke-static {v3, v7, v9}, Lcom/airbnb/lottie/manager/FontAssetManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v8}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v3, v6, v9}, Lcom/airbnb/lottie/manager/FontAssetManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v8}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1, v3, v9}, Lcom/airbnb/lottie/manager/FontAssetManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :goto_5
    move v1, v2

    :cond_a
    if-eqz v1, :cond_b

    goto :goto_6

    .line 17
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz p3, :cond_c

    move-object v0, v4

    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    .line 18
    sget-object p1, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    monitor-exit p0

    return-object v0

    .line 19
    :cond_e
    :try_start_1
    iput-boolean v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, v1}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0, p2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v1

    :cond_5
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 5

    iget-object p0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Lcom/airbnb/lottie/manager/FontAssetManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    iget-object v2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v2, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->arrayContains([II)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    const p0, 0x7f040109

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v2, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_1

    const p0, 0x7f040107

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {p0, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->arrayContains([II)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    const p0, 0x7f08006d

    if-ne p2, p0, :cond_3

    const p0, 0x42233333    # 40.8f

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const p2, 0x1010030

    move-object v2, v1

    move v1, p2

    move p2, p0

    move p0, v3

    goto :goto_3

    :cond_3
    const p0, 0x7f08005b

    if-ne p2, p0, :cond_4

    :goto_0
    const p0, 0x1010031

    :goto_1
    move p2, p0

    move p0, v3

    goto :goto_2

    :cond_4
    move p0, v0

    move p2, p0

    :goto_2
    move-object v2, v1

    move v1, p2

    move p2, v4

    :goto_3
    if-eqz p0, :cond_6

    sget-object p0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1, v1}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq p2, v4, :cond_5

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    move p0, v3

    goto :goto_4

    :cond_6
    move p0, v0

    :goto_4
    if-eqz p0, :cond_7

    move v0, v3

    :cond_7
    return v0
.end method
