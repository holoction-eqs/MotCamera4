.class public abstract Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/HardwareFoldingFeature;
    .locals 10

    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Landroidx/window/layout/HardwareFoldingFeature$Type;->HINGE:Landroidx/window/layout/HardwareFoldingFeature$Type;

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/window/layout/HardwareFoldingFeature$Type;->FOLD:Landroidx/window/layout/HardwareFoldingFeature$Type;

    :goto_0
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getState()I

    move-result v4

    if-eq v4, v3, :cond_3

    if-eq v4, v1, :cond_2

    return-object v2

    :cond_2
    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    goto :goto_1

    :cond_3
    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    :goto_1
    new-instance v4, Landroidx/window/core/Bounds;

    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const-string v6, "oemFeature.bounds"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    .line 1
    iget-object p0, p0, Landroidx/window/layout/WindowMetrics;->_bounds:Landroidx/window/core/Bounds;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Landroidx/window/core/Bounds;->right:I

    iget v8, p0, Landroidx/window/core/Bounds;->bottom:I

    iget v9, p0, Landroidx/window/core/Bounds;->left:I

    iget p0, p0, Landroidx/window/core/Bounds;->top:I

    invoke-direct {v5, v9, p0, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3
    iget p0, v4, Landroidx/window/core/Bounds;->bottom:I

    iget v7, v4, Landroidx/window/core/Bounds;->top:I

    sub-int/2addr p0, v7

    iget v7, v4, Landroidx/window/core/Bounds;->left:I

    iget v4, v4, Landroidx/window/core/Bounds;->right:I

    const/4 v8, 0x0

    if-nez p0, :cond_4

    sub-int v9, v4, v7

    if-nez v9, :cond_4

    move v9, v3

    goto :goto_2

    :cond_4
    move v9, v8

    :goto_2
    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    sub-int/2addr v4, v7

    .line 4
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-eq v4, v7, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eq p0, v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v4, v7, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge p0, v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v4, v7, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne p0, v4, :cond_8

    :goto_3
    move v3, v8

    :cond_8
    if-eqz v3, :cond_9

    .line 5
    new-instance v2, Landroidx/window/layout/HardwareFoldingFeature;

    new-instance p0, Landroidx/window/core/Bounds;

    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v2, p0, v0, v1}, Landroidx/window/layout/HardwareFoldingFeature;-><init>(Landroidx/window/core/Bounds;Landroidx/window/layout/HardwareFoldingFeature$Type;Landroidx/window/layout/FoldingFeature$State;)V

    :cond_9
    return-object v2
.end method

.method public static translate$window_release(Landroid/content/Context;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->$r8$clinit:I

    .line 6
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 8
    new-instance v1, Landroidx/window/layout/WindowMetrics;

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const-string v2, "wm.currentWindowMetrics.bounds"

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Landroidx/window/layout/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroidx/core/view/WindowInsetsCompat;)V

    .line 9
    invoke-static {v1, p1}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;
    .locals 3

    .line 10
    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    const-string v0, "info.displayFeatures"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/layout/DisplayFeature;

    instance-of v2, v1, Landroidx/window/extensions/layout/FoldingFeature;

    if-eqz v2, :cond_1

    const-string v2, "feature"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/window/extensions/layout/FoldingFeature;

    invoke-static {p0, v1}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/HardwareFoldingFeature;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    invoke-direct {p0, v0}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object p0
.end method
