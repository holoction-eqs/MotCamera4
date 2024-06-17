.class public final Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;
.super Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;
.source "SourceFile"


# instance fields
.field public final index:I

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;I)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->value:Ljava/lang/Object;

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->index:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->index:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSize()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
