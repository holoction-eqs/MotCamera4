.class public final Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KCallableImpl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/util/List;
    .locals 5

    iget v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->$r8$classId:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->computeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.typeParameters"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    new-instance v3, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;

    const-string v4, "descriptor"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v2}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$2()Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x3

    iget v2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->$r8$classId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    new-instance p0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;

    invoke-direct {v2, v5, v1}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;I)V

    invoke-direct {p0, v0, v2}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V

    return-object p0

    :pswitch_1
    invoke-interface {v5}, Lkotlin/reflect/KCallable;->isSuspend()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getParameterTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    const-class v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "continuationType.actualTypeArguments"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/reflect/WildcardType;

    goto :goto_2

    :cond_2
    move-object p0, v3

    :goto_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/reflect/Type;

    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object v3

    :cond_4
    return-object v3

    :pswitch_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v5}, Lkotlin/reflect/KCallable;->isSuspend()Z

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x20

    sub-int/2addr p0, v6

    div-int/lit8 p0, p0, 0x20

    add-int v2, v1, p0

    add-int/2addr v2, v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/KParameter;

    check-cast v7, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    move-result-object v8

    instance-of v9, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    if-eqz v9, :cond_6

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    goto :goto_4

    :cond_6
    move-object v8, v3

    :goto_4
    if-eqz v8, :cond_7

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->declaresOrInheritsDefaultValue(Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;)Z

    move-result v8

    goto :goto_5

    :cond_7
    move v8, v4

    :goto_5
    iget v9, v7, Lkotlin/reflect/jvm/internal/KParameterImpl;->index:I

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v8

    sget-object v10, Lkotlin/reflect/jvm/internal/UtilKt;->JVM_STATIC:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v8, :cond_8

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isInlineClassType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v8

    if-ne v8, v6, :cond_8

    move v8, v6

    goto :goto_6

    :cond_8
    move v8, v4

    :goto_6
    if-nez v8, :cond_b

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getJavaType()Ljava/lang/reflect/Type;

    move-result-object v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getJavaType()Ljava/lang/reflect/Type;

    move-result-object v8

    if-eqz v8, :cond_9

    goto :goto_7

    :cond_9
    invoke-static {v7, v4}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/jvm/internal/KTypeBase;Z)Ljava/lang/reflect/Type;

    move-result-object v8

    :cond_a
    :goto_7
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v9

    goto :goto_3

    :cond_b
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    move-result-object v8

    instance-of v10, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    if-eqz v10, :cond_c

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->varargElementType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v8, :cond_c

    move v8, v6

    goto :goto_8

    :cond_c
    move v8, v4

    :goto_8
    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/JvmClassMappingKt;->getJvmErasure(Lkotlin/jvm/internal/KTypeBase;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "type.jvmErasure.java.run\u2026\"\n            )\n        }"

    invoke-static {v7, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v9

    goto/16 :goto_3

    :cond_d
    new-instance p0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot instantiate the default empty array of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", because it is not an array type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_e
    move v0, v4

    :goto_9
    if-ge v0, p0, :cond_f

    add-int v3, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-object v2

    :pswitch_4
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isBound()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->getInstanceReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

    move-result-object v3

    if-eqz v3, :cond_10

    new-instance v7, Lkotlin/reflect/jvm/internal/KParameterImpl;

    new-instance v8, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;

    invoke-direct {v8, v3, v4}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;I)V

    invoke-direct {v7, v5, v4, v6, v8}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;IILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_a

    :cond_10
    move v3, v4

    :goto_a
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v8, Lkotlin/reflect/jvm/internal/KParameterImpl;

    add-int/lit8 v9, v3, 0x1

    new-instance v10, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;

    invoke-direct {v10, v7, v6}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;I)V

    invoke-direct {v8, v5, v3, v0, v10}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;IILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v9

    goto :goto_b

    :cond_11
    move v3, v4

    :cond_12
    :goto_b
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v7, v4

    :goto_c
    if-ge v7, v0, :cond_13

    new-instance v8, Lkotlin/reflect/jvm/internal/KParameterImpl;

    add-int/lit8 v9, v3, 0x1

    new-instance v10, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;

    invoke-direct {v10, p0, v7, v4}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;-><init>(Ljava/lang/Object;II)V

    invoke-direct {v8, v5, v3, v1, v10}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;IILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move v3, v9

    goto :goto_c

    :cond_13
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isAnnotationConstructor()Z

    move-result v0

    if-eqz v0, :cond_14

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    if-eqz p0, :cond_14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v6, :cond_14

    new-instance p0, Landroidx/viewpager/widget/ViewPager$1;

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    return-object v2

    :goto_d
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
