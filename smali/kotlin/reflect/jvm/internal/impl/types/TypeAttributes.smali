.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
.super Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;
.source "SourceFile"


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

.field public static final Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Ljava/util/List;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "tClass"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getId(Lkotlin/reflect/KClass;)I

    move-result v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->getSize()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;

    iget v3, v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->index:I

    if-ne v3, v1, :cond_1

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;

    invoke-direct {v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;I)V

    goto :goto_2

    :cond_1
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;

    invoke-direct {v4}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;-><init>()V

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->value:Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->set(ILjava/lang/Object;)V

    :goto_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->set(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;

    invoke-direct {v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;I)V

    :goto_2
    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    goto :goto_0

    :cond_3
    return-void
.end method
