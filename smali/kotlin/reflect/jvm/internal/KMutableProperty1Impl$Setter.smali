.class public final Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KMutableProperty1$Setter;


# instance fields
.field public final property:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->property:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    return-void
.end method


# virtual methods
.method public final getProperty()Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->property:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->property:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;->_setter:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->call([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
