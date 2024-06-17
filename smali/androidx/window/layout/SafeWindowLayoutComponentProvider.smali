.class public final Landroidx/window/layout/SafeWindowLayoutComponentProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final consumerAdapter:Lkotlin/DeepRecursiveFunction;

.field public final loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lkotlin/DeepRecursiveFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->consumerAdapter:Lkotlin/DeepRecursiveFunction;

    return-void
.end method


# virtual methods
.method public final getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;
    .locals 5

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->invoke$2()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    const-string v3, "WindowExtensionsProvider#getWindowExtensions is not valid"

    invoke-static {v3, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    const/4 v3, 0x5

    invoke-direct {v0, p0, v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    const-string v3, "WindowExtensions#getWindowLayoutComponent is not valid"

    invoke-static {v3, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    invoke-direct {v0, p0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    const-string v3, "FoldingFeature class is not valid"

    invoke-static {v3, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel1()Z

    move-result v2

    goto :goto_3

    :cond_1
    const/4 v3, 0x2

    if-gt v3, v0, :cond_2

    const v4, 0x7fffffff

    if-gt v0, v4, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel1()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "WindowLayoutComponent#addWindowLayoutInfoListener("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", androidx.window.extensions.core.util.function.Consumer) is not valid"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    invoke-direct {v4, p0, v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    invoke-static {v0, v4}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    move v2, v1

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    :try_start_1
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object p0

    invoke-interface {p0}, Landroidx/window/extensions/WindowExtensions;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    :cond_5
    const/4 p0, 0x0

    :goto_4
    return-object p0
.end method

.method public final hasValidVendorApiLevel1()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowLayoutComponent#addWindowLayoutInfoListener("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", java.util.function.Consumer) is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    invoke-static {v0, v1}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;)Z

    move-result p0

    return p0
.end method
