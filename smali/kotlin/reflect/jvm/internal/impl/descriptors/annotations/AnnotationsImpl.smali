.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;


# instance fields
.field public final synthetic $r8$classId:I

.field public final annotations:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    .line 4
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final findAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;
    .locals 4

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    const-string v3, "fqName"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Landroidx/core/view/ViewGroupKt$children$1;

    move-result-object p0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderImpl$getSubPackagesOf$2;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderImpl$getSubPackagesOf$2;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;I)V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    new-instance p1, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {p1, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    return-object v1

    :pswitch_1
    invoke-static {p0, p1}, Lkotlinx/coroutines/SupervisorKt;->findAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    move-result-object p0

    return-object p0

    :goto_1
    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotationDescriptor;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotationDescriptor;

    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Landroidx/core/view/ViewGroupKt$children$1;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_1
    invoke-static {p0, p1}, Lkotlinx/coroutines/SupervisorKt;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result p0

    return p0

    :goto_1
    invoke-static {p0, p1}, Lkotlinx/coroutines/SupervisorKt;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :pswitch_1
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lkotlin/collections/EmptyIterator;->INSTANCE:Lkotlin/collections/EmptyIterator;

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Landroidx/core/view/ViewGroupKt$children$1;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations$iterator$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations$iterator$1;

    new-instance v1, Lkotlin/sequences/FlatteningSequence;

    sget-object v2, Lkotlin/sequences/SequencesKt___SequencesKt$flatMap$2;->INSTANCE:Lkotlin/sequences/SequencesKt___SequencesKt$flatMap$2;

    invoke-direct {v1, p0, v0, v2}, Lkotlin/sequences/FlatteningSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    new-instance p0, Lkotlin/sequences/FlatteningSequence$iterator$1;

    invoke-direct {p0, v1}, Lkotlin/sequences/FlatteningSequence$iterator$1;-><init>(Lkotlin/sequences/FlatteningSequence;)V

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
