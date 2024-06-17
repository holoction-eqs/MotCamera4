.class public final Lkotlin/reflect/jvm/internal/KFunctionImpl$caller$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/KFunctionImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KFunctionImpl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$caller$2;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$caller$2;->this$0:Lkotlin/reflect/jvm/internal/KFunctionImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lkotlin/reflect/jvm/internal/calls/Caller;
    .locals 17

    move-object/from16 v0, p0

    const/4 v4, 0x1

    const/16 v1, 0x29

    const/4 v2, 0x2

    iget v3, v0, Lkotlin/reflect/jvm/internal/KFunctionImpl$caller$2;->$r8$classId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "desc"

    const/16 v8, 0xa

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KFunctionImpl$caller$2;->this$0:Lkotlin/reflect/jvm/internal/KFunctionImpl;

    const/4 v9, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    sget-object v3, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->JAVA_LANG_VOID:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v3

    instance-of v10, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;

    iget-object v11, v0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isAnnotationConstructor()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v11}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/KParameter;

    check-cast v4, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;

    invoke-direct {v0, v1, v3, v2}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;I)V

    goto/16 :goto_4

    :cond_1
    check-cast v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;->signature:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->desc:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v11, v3}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->loadParameterTypes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :try_start_0
    new-array v7, v6, [Ljava/lang/Class;

    invoke-interface {v3, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    array-length v7, v3

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    instance-of v5, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    if-eqz v5, :cond_3

    check-cast v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;->signature:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->name:Ljava/lang/String;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->desc:Ljava/lang/String;

    invoke-virtual {v11, v4, v3}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->findMethodBySignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_1

    :cond_3
    instance-of v5, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;

    if-eqz v5, :cond_4

    check-cast v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;

    iget-object v5, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;->method:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_4
    instance-of v5, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;

    if-eqz v5, :cond_c

    check-cast v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;

    iget-object v5, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;->constructor:Ljava/lang/reflect/Constructor;

    :catch_0
    :goto_1
    instance-of v3, v5, Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_5

    check-cast v5, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v1

    invoke-static {v0, v5, v1, v6}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->access$createConstructorCaller(Lkotlin/reflect/jvm/internal/KFunctionImpl;Ljava/lang/reflect/Constructor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Z)Lkotlin/reflect/jvm/internal/calls/CallerImpl;

    move-result-object v1

    goto :goto_2

    :cond_5
    instance-of v3, v5, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_b

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->rawBoundReceiver:Ljava/lang/Object;

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->isBound()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundInstance;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->coerceToExpectedReceiverType(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundInstance;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance v1, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;

    invoke-direct {v1, v9, v5}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;-><init>(ILjava/lang/reflect/Method;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v1

    sget-object v4, Lkotlin/reflect/jvm/internal/UtilKt;->JVM_STATIC:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-interface {v1, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->findAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->isBound()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;

    invoke-direct {v1, v5}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_2

    :cond_8
    new-instance v1, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;

    invoke-direct {v1, v2, v5}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;-><init>(ILjava/lang/reflect/Method;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->isBound()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->coerceToExpectedReceiverType(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    new-instance v1, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;

    invoke-direct {v1, v6, v5}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;-><init>(ILjava/lang/reflect/Method;)V

    :goto_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lkotlin/ExceptionsKt;->createInlineClassAwareCallerIfNeeded(Lkotlin/reflect/jvm/internal/calls/Caller;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Z)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    goto :goto_4

    :cond_b
    new-instance v3, Lkotlin/NotImplementedError;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Could not compute caller for function: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (member = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_c
    instance-of v0, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;

    if-eqz v0, :cond_e

    check-cast v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;

    iget-object v5, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;->methods:Ljava/util/List;

    invoke-interface {v11}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v5

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    new-instance v6, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;

    const/4 v3, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;IILjava/util/List;)V

    :goto_4
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0, v6}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw v0

    :goto_5
    sget-object v3, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->JAVA_LANG_VOID:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v3

    instance-of v4, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    iget-object v10, v0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    if-eqz v4, :cond_11

    check-cast v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;->signature:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object v8

    invoke-static {v8}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    xor-int/2addr v8, v9

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "name"

    invoke-static {v4, v11}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->desc:Ljava/lang/String;

    invoke-static {v3, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "<init>"

    invoke-static {v4, v7}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto/16 :goto_8

    :cond_f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_10

    invoke-interface {v10}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {v10, v3, v7, v6}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->addParametersAndMasks(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getMethodOwner()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "$default"

    invoke-virtual {v4, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v12, v6, [Ljava/lang/Class;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    const/4 v12, 0x6

    invoke-static {v3, v1, v6, v6, v12}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v1, v12, v3}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->parseType(IILjava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v11, v4, v7, v1, v8}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    goto/16 :goto_9

    :cond_11
    instance-of v1, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isAnnotationConstructor()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v10}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KParameter;

    check-cast v3, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;

    invoke-direct {v0, v1, v2, v9}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;I)V

    goto/16 :goto_c

    :cond_13
    check-cast v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;

    iget-object v1, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;->signature:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->desc:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v1, v4, v9}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->addParametersAndMasks(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    :try_start_1
    new-array v1, v6, [Ljava/lang/Class;

    invoke-interface {v4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :cond_14
    instance-of v1, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;

    if-eqz v1, :cond_16

    check-cast v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;

    iget-object v0, v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;->methods:Ljava/util/List;

    invoke-interface {v10}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v12

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    new-instance v1, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v11, v1

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;IILjava/util/List;)V

    move-object v0, v1

    goto/16 :goto_c

    :catch_1
    :cond_16
    :goto_8
    move-object v1, v5

    :goto_9
    instance-of v3, v1, Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_17

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v2

    invoke-static {v0, v1, v2, v9}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->access$createConstructorCaller(Lkotlin/reflect/jvm/internal/KFunctionImpl;Ljava/lang/reflect/Constructor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Z)Lkotlin/reflect/jvm/internal/calls/CallerImpl;

    move-result-object v1

    goto :goto_b

    :cond_17
    instance-of v3, v1, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1b

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/UtilKt;->JVM_STATIC:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-interface {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->findAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->isCompanionObject()Z

    move-result v3

    if-nez v3, :cond_19

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->isBound()Z

    move-result v3

    if-eqz v3, :cond_18

    new-instance v2, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;

    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;-><init>(Ljava/lang/reflect/Method;)V

    :goto_a
    move-object v1, v2

    goto :goto_b

    :cond_18
    new-instance v3, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;

    invoke-direct {v3, v2, v1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;-><init>(ILjava/lang/reflect/Method;)V

    move-object v1, v3

    goto :goto_b

    :cond_19
    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v3

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->rawBoundReceiver:Ljava/lang/Object;

    invoke-static {v4, v3}, Lkotlin/ExceptionsKt;->coerceToExpectedReceiverType(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    new-instance v2, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;

    invoke-direct {v2, v6, v1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;-><init>(ILjava/lang/reflect/Method;)V

    goto :goto_a

    :cond_1b
    move-object v1, v5

    :goto_b
    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    invoke-static {v1, v0, v9}, Lkotlin/ExceptionsKt;->createInlineClassAwareCallerIfNeeded(Lkotlin/reflect/jvm/internal/calls/Caller;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Z)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v5

    :cond_1c
    move-object v0, v5

    :goto_c
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic invoke$2()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl$caller$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl$caller$2;->invoke()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl$caller$2;->invoke()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
