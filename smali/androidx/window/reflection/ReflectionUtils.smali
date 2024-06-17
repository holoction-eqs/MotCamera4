.class public abstract Landroidx/window/reflection/ReflectionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static doesReturn$window_release(Ljava/lang/reflect/Method;Lkotlin/reflect/KClass;)Z
    .locals 1

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final validateReflection$window_release(Ljava/lang/String;Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;)Z
    .locals 2

    const-string v0, ""

    const-string v1, "ReflectionGuard"

    :try_start_0
    invoke-virtual {p1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->invoke$2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-nez p0, :cond_0

    move-object p0, v0

    :cond_0
    const-string p1, "NoSuchMethod: "

    goto :goto_0

    :catch_1
    if-nez p0, :cond_1

    move-object p0, v0

    :cond_1
    const-string p1, "ClassNotFound: "

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_2
    :goto_1
    return p1
.end method
