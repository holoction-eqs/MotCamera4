.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $c:Lcom/airbnb/lottie/parser/DropShadowEffect;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$c:Lcom/airbnb/lottie/parser/DropShadowEffect;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;Lcom/airbnb/lottie/parser/DropShadowEffect;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$c:Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$r8$classId:I

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$c:Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v26, v0

    goto/16 :goto_f

    :pswitch_0
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->jClass:Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->klass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    const-string v3, "klass.declaredConstructors"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass$constructors$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass$constructors$1;

    new-instance v4, Lkotlin/sequences/FilteringSequence;

    const/4 v10, 0x0

    invoke-direct {v4, v1, v10, v3}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass$constructors$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass$constructors$2;

    invoke-static {v4, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->optimizeReadOnlyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v11, 0x1

    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->c:Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaConstructor;

    invoke-static {v12, v4}, Lkotlinx/coroutines/JobKt;->resolveAnnotations(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    move-result-object v5

    iget-object v6, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;

    check-cast v6, Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {v6, v4}, Lkotlin/UNINITIALIZED_VALUE;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    move-result-object v6

    invoke-static {v13, v5, v10, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->createJavaConstructor(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;

    move-result-object v5

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    check-cast v7, Lkotlin/Lazy;

    iget-object v8, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaTypeParameterResolver;

    invoke-direct {v9, v12, v5, v4, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaTypeParameterResolver;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaTypeParameterListOwner;I)V

    new-instance v6, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-direct {v6, v8, v9, v7}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V

    iget-object v7, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaConstructor;->member:Ljava/lang/reflect/Constructor;

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v8

    const-string v9, "types"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v8

    if-nez v9, :cond_0

    move v9, v11

    goto :goto_1

    :cond_0
    move v9, v10

    :goto_1
    if-eqz v9, :cond_1

    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v9}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_2

    array-length v9, v8

    invoke-static {v11, v9, v8}, Lkotlin/collections/ArraysKt___ArraysKt;->copyOfRange(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/reflect/Type;

    :cond_2
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    array-length v11, v9

    array-length v12, v8

    if-lt v11, v12, :cond_5

    array-length v11, v9

    array-length v12, v8

    if-le v11, v12, :cond_3

    array-length v11, v9

    array-length v12, v8

    sub-int/2addr v11, v12

    array-length v12, v9

    invoke-static {v11, v12, v9}, Lkotlin/collections/ArraysKt___ArraysKt;->copyOfRange(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/annotation/Annotation;

    :cond_3
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v7

    invoke-virtual {v4, v8, v9, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getValueParameters([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/ArrayList;

    move-result-object v7

    :goto_2
    invoke-static {v6, v5, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->resolveValueParameters(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;Ljava/util/List;)Landroidx/media3/common/FlagSet$Builder;

    move-result-object v7

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v8

    const-string v9, "classDescriptor.declaredTypeParameters"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaConstructor;->getTypeParameters()Ljava/util/ArrayList;

    move-result-object v9

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v9, v12}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;

    iget-object v14, v6, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    invoke-interface {v14, v12}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;->resolveTypeParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v12

    invoke-static {v12}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-static {v11, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, v7, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/KCallablesJvm;->toDescriptorVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;

    move-result-object v4

    invoke-virtual {v5, v9, v4, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;Ljava/util/List;)V

    invoke-virtual {v5, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasStableParameterNames(Z)V

    iget-boolean v4, v7, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasSynthesizedParameterNames(Z)V

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    iget-object v4, v6, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaResolverCache:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;

    check-cast v4, Lkotlin/time/Duration$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal generic signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->jClass:Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->isRecord()Z

    move-result v5

    sget-object v6, Lkotlin/UInt$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    const-string v9, "PROTECTED_AND_PACKAGE"

    const-string v8, "classDescriptor.visibility"

    const/4 v7, 0x6

    const/4 v15, 0x2

    const/4 v14, 0x0

    if-eqz v5, :cond_c

    iget-object v5, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;

    check-cast v5, Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {v5, v1}, Lkotlin/UNINITIALIZED_VALUE;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    move-result-object v5

    invoke-static {v13, v6, v11, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->createJavaConstructor(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;

    move-result-object v5

    move-object/from16 v16, v1

    check-cast v16, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getRecordComponents()Ljava/util/ArrayList;

    move-result-object v16

    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v15, v10, v10, v14, v7}, Lkotlinx/coroutines/SupervisorKt;->toAttributes$default(IZZLkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move/from16 v17, v10

    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    add-int/lit8 v28, v17, 0x1

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;

    iget-object v15, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    check-cast v15, Landroidx/work/WorkQuery;

    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;->getType()Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;

    move-result-object v7

    invoke-virtual {v15, v7, v0}, Landroidx/work/WorkQuery;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v20

    const/16 v24, 0x0

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    const/16 v19, 0x0

    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    iget-object v15, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v15, v15, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;

    check-cast v15, Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {v15, v14}, Lkotlin/UNINITIALIZED_VALUE;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    move-result-object v29

    const/4 v15, 0x0

    move-object v14, v7

    move-object v15, v5

    move-object/from16 v16, v19

    move-object/from16 v18, v6

    move-object/from16 v19, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v25

    move-object/from16 v25, v29

    invoke-direct/range {v14 .. v25}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;ILkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v28

    const/4 v7, 0x6

    const/4 v14, 0x0

    const/4 v15, 0x2

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasSynthesizedParameterNames(Z)V

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities;->PROTECTED_STATIC_VISIBILITY:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    invoke-static {v0, v7}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities;->PROTECTED_AND_PACKAGE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    invoke-static {v0, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v5, v11, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;)V

    invoke-virtual {v5, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasStableParameterNames(Z)V

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    const/4 v0, 0x2

    invoke-static {v5, v0}, Lkotlin/reflect/jvm/KCallablesJvm;->computeJvmDescriptor$default(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    invoke-static {v14, v0}, Lkotlin/reflect/jvm/KCallablesJvm;->computeJvmDescriptor$default(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v7}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    move v7, v10

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v7, 0x1

    :goto_6
    if-eqz v7, :cond_d

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaResolverCache:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;

    check-cast v5, Lkotlin/time/Duration$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :cond_c
    move-object/from16 v26, v0

    move v0, v15

    :cond_d
    :goto_7
    iget-object v5, v2, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->syntheticPartsProvider:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;

    invoke-virtual {v5, v2, v13, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;->generateConstructors(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/util/ArrayList;)V

    iget-object v5, v2, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v11, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->signatureEnhancement:Lcom/google/common/base/Splitter$1;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->isAnnotationType()Z

    move-result v3

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->klass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_e
    if-nez v3, :cond_f

    const/4 v14, 0x0

    goto/16 :goto_e

    :cond_f
    iget-object v4, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;

    check-cast v4, Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {v4, v1}, Lkotlin/UNINITIALIZED_VALUE;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v13, v6, v5, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->createJavaConstructor(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;

    move-result-object v14

    if-eqz v3, :cond_15

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getMethods()Ljava/util/Collection;

    move-result-object v1

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v0, v5, v10, v4, v3}, Lkotlinx/coroutines/SupervisorKt;->toAttributes$default(IZZLkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->DEFAULT_ANNOTATION_MEMBER_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-static {v6, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    const/4 v10, 0x0

    goto :goto_8

    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getReturnType$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    move-result-object v3

    instance-of v5, v3, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaArrayType;

    if-eqz v5, :cond_12

    new-instance v4, Lkotlin/Pair;

    iget-object v5, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    check-cast v5, Landroidx/work/WorkQuery;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaArrayType;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v0, v6}, Landroidx/work/WorkQuery;->transformArrayType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaArrayType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v5

    iget-object v6, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    check-cast v6, Landroidx/work/WorkQuery;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;->componentType:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    invoke-virtual {v6, v3, v0}, Landroidx/work/WorkQuery;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_12
    new-instance v5, Lkotlin/Pair;

    iget-object v6, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    check-cast v6, Landroidx/work/WorkQuery;

    invoke-virtual {v6, v3, v0}, Landroidx/work/WorkQuery;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v5

    :goto_a
    iget-object v3, v4, Lkotlin/Pair;->first:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object v3, v4, Lkotlin/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v3

    check-cast v17, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const/4 v6, 0x0

    move-object/from16 v3, v26

    move-object v4, v15

    move-object v5, v14

    move-object/from16 v18, v7

    move-object v7, v1

    move-object/from16 v30, v8

    move-object v8, v10

    move-object v10, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->addAnnotationValueParameter(Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;ILkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    goto :goto_b

    :cond_13
    move-object/from16 v18, v7

    move-object/from16 v30, v8

    move-object v10, v9

    :goto_b
    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    :goto_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/4 v3, 0x0

    :goto_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    add-int/lit8 v18, v3, 0x1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;

    iget-object v4, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    check-cast v4, Landroidx/work/WorkQuery;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getReturnType$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroidx/work/WorkQuery;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v8

    add-int v6, v3, v1

    const/4 v9, 0x0

    move-object/from16 v3, v26

    move-object v4, v15

    move-object v5, v14

    invoke-virtual/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->addAnnotationValueParameter(Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;ILkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    move/from16 v3, v18

    goto :goto_d

    :cond_15
    move-object/from16 v30, v8

    move-object v10, v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    :cond_16
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasSynthesizedParameterNames(Z)V

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;

    move-result-object v0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities;->PROTECTED_STATIC_VISIBILITY:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities;->PROTECTED_AND_PACKAGE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    invoke-static {v0, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v14, v15, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasStableParameterNames(Z)V

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-virtual {v14, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    iget-object v0, v12, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaResolverCache:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;

    check-cast v0, Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_e
    invoke-static {v14}, Lkotlin/jvm/JvmClassMappingKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    :cond_18
    invoke-virtual {v11, v2, v3}, Lcom/google/common/base/Splitter$1;->enhanceSignatures(Lcom/airbnb/lottie/parser/DropShadowEffect;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :goto_f
    iget-object v0, v2, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->syntheticPartsProvider:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider;

    move-object/from16 v1, v26

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;

    invoke-virtual {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;->getNestedClassNames(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
