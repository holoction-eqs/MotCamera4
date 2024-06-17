.class public abstract Lkotlin/reflect/jvm/internal/KCallableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KCallable;
.implements Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;


# instance fields
.field public final _parameters:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;I)V

    invoke-static {v0}, Lkotlin/TuplesKt;->lazySoft(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;I)V

    invoke-static {v0}, Lkotlin/TuplesKt;->lazySoft(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl;->_parameters:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;I)V

    invoke-static {v0}, Lkotlin/TuplesKt;->lazySoft(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;I)V

    invoke-static {v0}, Lkotlin/TuplesKt;->lazySoft(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;I)V

    invoke-static {v0}, Lkotlin/TuplesKt;->lazySoft(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    return-void
.end method


# virtual methods
.method public final varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/calls/Caller;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/window/core/WindowStrictModeException;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/window/core/WindowStrictModeException;-><init>(Ljava/lang/IllegalAccessException;I)V

    throw p1
.end method

.method public abstract getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;
.end method

.method public abstract getContainer()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;
.end method

.method public abstract getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
.end method

.method public final getParameters()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl;->_parameters:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_parameters()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final isAnnotationConstructor()Z
    .locals 2

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getContainer()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isBound()Z
.end method
