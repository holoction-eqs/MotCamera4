.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final arguments:Ljava/util/List;

.field public final descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

.field public final mapping:Ljava/util/Map;

.field public final parent:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->parent:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->arguments:Ljava/util/List;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->mapping:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final isRecursion(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->parent:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->isRecursion(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
