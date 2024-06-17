.class public Lkotlin/reflect/jvm/internal/KProperty1Impl;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KProperty1;


# instance fields
.field public final _getter:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;I)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->_getter:Lkotlin/Lazy;

    new-instance p1, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;I)V

    invoke-static {p2, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V
    .locals 1

    .line 2
    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;I)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->_getter:Lkotlin/Lazy;

    new-instance p1, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;I)V

    invoke-static {p2, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getGetter()Lkotlin/reflect/KProperty1$Getter;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->_getter:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;

    return-object p0
.end method

.method public final getGetter()Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;
    .locals 0

    .line 2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->_getter:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->_getter:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
