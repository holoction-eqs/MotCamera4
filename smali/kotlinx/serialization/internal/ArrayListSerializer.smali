.class public final Lkotlinx/serialization/internal/ArrayListSerializer;
.super Lkotlinx/serialization/internal/CollectionLikeSerializer;
.source "SourceFile"


# instance fields
.field public final descriptor:Lkotlinx/serialization/internal/ArrayListClassDesc;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/CollectionLikeSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    new-instance v0, Lkotlinx/serialization/internal/ArrayListClassDesc;

    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/ArrayListSerializer;->descriptor:Lkotlinx/serialization/internal/ArrayListClassDesc;

    return-void
.end method


# virtual methods
.method public final builder()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final builderSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    check-cast p1, Ljava/util/Collection;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/Collection;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/ArrayListSerializer;->descriptor:Lkotlinx/serialization/internal/ArrayListClassDesc;

    return-object p0
.end method

.method public final insert(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    const-string p0, "<this>"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p0, "<this>"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public final toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
