.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final reportStrategy:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

.field public final shouldCheckBounds:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/CoroutineId$Key;->INSTANCE$5:Lkotlinx/coroutines/CoroutineId$Key;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->reportStrategy:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->shouldCheckBounds:Z

    return-void
.end method


# virtual methods
.method public final checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->reportStrategy:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

    check-cast p2, Lkotlinx/coroutines/CoroutineId$Key;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final expandRecursively(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 7

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->getUnderlyingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p4

    invoke-interface {p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    const-string v3, "expandedProjection.type"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p4

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttributeKt;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    invoke-virtual {p0, p4, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p4

    if-eqz p0, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string p0, "other"

    invoke-static {p4, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p4, p2

    goto/16 :goto_3

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idPerType:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    const-string v4, "idPerType.values"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, p2, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    iget-object v6, p4, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v6, v4}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    if-nez v5, :cond_6

    if-eqz v4, :cond_5

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-static {v4, v5}, Lkotlin/UnsignedKt;->composeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-direct {v6, v4}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    goto :goto_1

    :cond_5
    move-object v4, v1

    goto :goto_2

    :cond_6
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    if-nez v4, :cond_7

    move-object v4, v5

    goto :goto_2

    :cond_7
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-static {v5, v4}, Lkotlin/UnsignedKt;->composeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-direct {v6, v4}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    :goto_1
    move-object v4, v6

    :goto_2
    invoke-static {v4, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->addIfNotNull(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p0

    move-object p4, p0

    :goto_3
    const/4 p0, 0x1

    invoke-static {v0, v1, p4, p0}, Lkotlinx/coroutines/DelayKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    :goto_4
    invoke-static {v0, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    const-string p4, "expandedType.combineAttr\u2026fNeeded(it, isNullable) }"

    invoke-static {p0, p4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_9

    iget-object p4, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;

    const-string p5, "descriptor.typeConstructor"

    invoke-static {p4, p5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p5, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->arguments:Ljava/util/List;

    invoke-static {p1, p5, p2, p4, p3}, Lokio/Timeout;->simpleTypeWithNonTrivialMemberScope(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/text/UStringsKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    :cond_9
    return-object p0
.end method

.method public final expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .locals 13

    move-object v6, p0

    move-object v7, p2

    move/from16 v8, p4

    const/16 v0, 0x64

    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    if-gt v8, v0, :cond_1e

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    const-string v2, "underlyingProjection.type"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    const-string v3, "constructor"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v2

    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v7, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->mapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    iget-object v5, v6, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->reportStrategy:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

    if-nez v2, :cond_c

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v9

    invoke-static {v9}, Lkotlin/text/StringsKt__IndentKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$requiresTypeAliasExpansion$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$requiresTypeAliasExpansion$1;

    invoke-static {v9, v0, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v1

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_3
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    const/4 v10, 0x0

    if-eqz v2, :cond_7

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    invoke-virtual {p2, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->isRecursion(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast v5, Lkotlinx/coroutines/CoroutineId$Key;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->RECURSIVE_TYPE_ALIAS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/name/Name;->name:Ljava/lang/String;

    const-string v4, "typeDescriptor.name.toString()"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v11, v10, 0x1

    if-ltz v10, :cond_5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {p0, v5, p2, v10, v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v11

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    throw v4

    :cond_6
    invoke-static {p2, v1, v3}, Lkotlin/text/Regex$Companion;->create(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;

    move-result-object v1

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v2

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v3

    add-int/lit8 v4, v8, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandRecursively(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-virtual {p0, v9, p2, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/text/UStringsKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p0, v9, p2, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v10, 0x1

    if-ltz v10, :cond_9

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    const-string v8, "substitutedArgument.type"

    invoke-static {v7, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$containsTypeAliasParameters$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$containsTypeAliasParameters$1;

    invoke-static {v7, v11, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v11

    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    iget-boolean v11, v6, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->shouldCheckBounds:Z

    if-eqz v11, :cond_8

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    const-string v11, "unsubstitutedArgument.type"

    invoke-static {v7, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeParameter"

    invoke-static {v10, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v5

    check-cast v2, Lkotlinx/coroutines/CoroutineId$Key;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    move v10, v3

    goto :goto_2

    :cond_9
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    throw v4

    :cond_a
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    goto :goto_4

    :cond_b
    :goto_3
    move-object v1, p1

    :goto_4
    move-object v0, v1

    :goto_5
    return-object v0

    :cond_c
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v7

    if-eqz v7, :cond_d

    :goto_6
    invoke-static/range {p3 .. p3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v7

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v2

    const-string v8, "argument.projectionKind"

    invoke-static {v2, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v8

    const-string v9, "underlyingProjection.projectionKind"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "substitutedArgument"

    const-string v10, "typeAlias"

    if-ne v8, v2, :cond_e

    goto :goto_7

    :cond_e
    if-ne v8, v3, :cond_f

    goto :goto_7

    :cond_f
    if-ne v2, v3, :cond_10

    move-object v2, v8

    goto :goto_7

    :cond_10
    move-object v8, v5

    check-cast v8, Lkotlinx/coroutines/CoroutineId$Key;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v10}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    if-eqz p3, :cond_11

    invoke-interface/range {p3 .. p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v8

    if-nez v8, :cond_12

    :cond_11
    move-object v8, v3

    :cond_12
    if-ne v8, v2, :cond_13

    goto :goto_8

    :cond_13
    if-ne v8, v3, :cond_14

    goto :goto_8

    :cond_14
    if-ne v2, v3, :cond_15

    goto :goto_9

    :cond_15
    check-cast v5, Lkotlinx/coroutines/CoroutineId$Key;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v10}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    move-object v3, v2

    :goto_9
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v1

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    invoke-static {v7}, Lkotlinx/coroutines/DelayKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v2

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    const-string v2, "makeNullableIfNeeded(thi\u2026romType.isMarkedNullable)"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    invoke-static {v1}, Lkotlin/text/StringsKt__IndentKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_f

    :cond_16
    invoke-static {v1}, Lkotlin/text/StringsKt__IndentKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v5

    if-eqz v2, :cond_17

    goto/16 :goto_e

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "other"

    invoke-static {v5, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_d

    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idPerType:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    const-string v7, "idPerType.values"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget-object v8, v0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v8, v7}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    iget-object v9, v5, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v9, v7}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    if-nez v8, :cond_1b

    if-eqz v7, :cond_1a

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    if-nez v8, :cond_19

    goto :goto_c

    :cond_19
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-static {v7, v8}, Lkotlin/UnsignedKt;->composeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v7

    invoke-direct {v9, v7}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    goto :goto_b

    :cond_1a
    move-object v7, v4

    goto :goto_c

    :cond_1b
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    if-nez v7, :cond_1c

    move-object v7, v8

    goto :goto_c

    :cond_1c
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-static {v8, v7}, Lkotlin/UnsignedKt;->composeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v7

    invoke-direct {v9, v7}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    :goto_b
    move-object v7, v9

    :goto_c
    invoke-static {v7, v2}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->addIfNotNull(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    goto :goto_a

    :cond_1d
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    :goto_d
    move-object v5, v0

    :goto_e
    const/4 v0, 0x1

    invoke-static {v1, v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    :goto_f
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Too deep recursion while expanding type alias "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 8

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, v4, p2, v3, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v7

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-direct {v5, v3, v7}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    throw v5

    :cond_2
    const/4 p0, 0x2

    invoke-static {p1, v2, v5, p0}, Lkotlinx/coroutines/DelayKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method
