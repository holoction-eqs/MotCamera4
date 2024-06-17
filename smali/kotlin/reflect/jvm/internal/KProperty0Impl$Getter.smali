.class public final Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final property:Lkotlin/reflect/jvm/internal/KProperty0Impl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KProperty0Impl;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;->property:Lkotlin/reflect/jvm/internal/KProperty0Impl;

    return-void
.end method


# virtual methods
.method public final getProperty()Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;->property:Lkotlin/reflect/jvm/internal/KProperty0Impl;

    return-object p0
.end method

.method public final invoke$2()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;->property:Lkotlin/reflect/jvm/internal/KProperty0Impl;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl;->_getter:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
