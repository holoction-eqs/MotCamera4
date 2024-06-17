.class public final Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->this$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->$r8$classId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->this$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    sget-object v1, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->JAVA_LANG_VOID:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapPropertySignature(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v1

    instance-of v5, v1, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;

    if-eqz v5, :cond_c

    check-cast v1, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->EXTENSION_REGISTRY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    iget-object v5, v1, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;->proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    iget-object v6, v1, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v7, v1, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    invoke-static {v5, v6, v7, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->getJvmFieldSignature(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Z)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Field;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v7

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-ne v7, v8, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isKindOf(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;I)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isKindOf(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    move v8, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v8, v3

    :goto_1
    if-eqz v8, :cond_3

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/CompanionObjectMapping;->classIds:Ljava/util/LinkedHashSet;

    invoke-static {v7}, Lkotlin/LazyKt__LazyKt;->isMappedIntrinsicCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v7

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->getBackingField()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v7

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAbi;->JVM_FIELD_ANNOTATION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-interface {v7, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v7

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAbi;->JVM_FIELD_ANNOTATION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-interface {v7, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result v7

    :goto_3
    if-eqz v7, :cond_6

    :goto_4
    move v2, v3

    :cond_6
    :goto_5
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    if-nez v2, :cond_9

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->isMovedFromInterfaceCompanion(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v1

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v2, :cond_8

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/UtilKt;->toJavaClass(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_7

    :cond_8
    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_7

    :cond_9
    :goto_6
    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_f

    :try_start_0
    iget-object v1, v6, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :cond_a
    invoke-static {v3}, Lkotlin/ResultKt;->$$$reportNull$$$0(I)V

    throw v4

    :cond_b
    invoke-static {v2}, Lkotlin/ResultKt;->$$$reportNull$$$0(I)V

    throw v4

    :cond_c
    instance-of v0, v1, Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaField;

    if-eqz v0, :cond_d

    check-cast v1, Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaField;

    iget-object v4, v1, Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaField;->field:Ljava/lang/reflect/Field;

    goto :goto_8

    :cond_d
    instance-of v0, v1, Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaMethodProperty;

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    instance-of v0, v1, Lkotlin/reflect/jvm/internal/JvmPropertySignature$MappedKotlinProperty;

    if-eqz v0, :cond_10

    :catch_0
    :cond_f
    :goto_8
    return-object v4

    :cond_10
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0, v2}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw v0

    :goto_9
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "name"

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->name:Ljava/lang/String;

    invoke-static {v6, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "signature"

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->signature:Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->LOCAL_PROPERTY_SIGNATURE:Lkotlin/text/Regex;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v7, "nativePattern.matcher(input)"

    invoke-static {v5, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_a

    :cond_11
    new-instance v4, Lkotlin/text/MatcherMatchResult;

    invoke-direct {v4, v5, v0}, Lkotlin/text/MatcherMatchResult;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    :goto_a
    const/4 v5, 0x2

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v3}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getLocalProperty(I)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v2

    if-eqz v2, :cond_12

    goto/16 :goto_f

    :cond_12
    new-instance v2, Lkotlin/NotImplementedError;

    const-string v3, "Local property #"

    const-string v4, " not found in "

    invoke-static {v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v5}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_13
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getProperties(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapPropertySignature(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/CacheByClass;->asString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v8, ") not resolved in "

    const-string v9, "\' (JVM signature: "

    const-string v10, "Property \'"

    if-nez v4, :cond_1c

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v3, :cond_1b

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_16

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_17
    sget-object v7, Lkotlin/coroutines/CoroutineContext$plus$1;->INSTANCE$6:Lkotlin/coroutines/CoroutineContext$plus$1;

    new-instance v11, Lcom/airbnb/lottie/PerformanceTracker$1;

    const/4 v12, 0x6

    invoke-direct {v11, v7, v12}, Lcom/airbnb/lottie/PerformanceTracker$1;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v7, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v7}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    const-string v7, "properties\n             \u2026\n                }.values"

    invoke-static {v4, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v3, :cond_18

    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e

    :cond_18
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getProperties(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Iterable;

    const-string v12, "\n"

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE$4:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    const/16 v16, 0x1e

    invoke-static/range {v11 .. v16}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lkotlin/NotImplementedError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    move v2, v3

    :cond_19
    if-eqz v2, :cond_1a

    const-string v0, " no members found"

    goto :goto_d

    :cond_1a
    const-string v0, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v5}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_1b
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    :goto_f
    return-object v2

    :cond_1c
    new-instance v2, Lkotlin/NotImplementedError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v5}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
