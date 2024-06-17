.class public final Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$ArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final arrayIterator:Lkotlin/UIntArray$Iterator;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/text/StringsKt__IndentKt;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$ArrayIterator;->arrayIterator:Lkotlin/UIntArray$Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$ArrayIterator;->arrayIterator:Lkotlin/UIntArray$Iterator;

    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$ArrayIterator;->arrayIterator:Lkotlin/UIntArray$Iterator;

    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
