.class public final Landroidx/work/JobListenableFuture$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/work/JobListenableFuture$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/JobListenableFuture$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Landroidx/work/JobListenableFuture$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/work/JobListenableFuture$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-ne v0, v1, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    .line 2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;->j2kClassMapper:Lkotlin/UNINITIALIZED_VALUE;

    .line 3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p0

    .line 5
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mutableToReadOnly:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_1
    const-string v0, "it"

    .line 7
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures;->SIGNATURE_TO_JVM_REPRESENTATION_NAME:Ljava/util/LinkedHashMap;

    .line 9
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    invoke-static {p0}, Lkotlin/reflect/jvm/KCallablesJvm;->computeJvmSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v5, v0, Landroidx/work/JobListenableFuture$1;->$r8$classId:I

    const-string v6, "annotation"

    const-string v7, "method.parameterTypes"

    const-string v8, "values"

    const/4 v9, 0x0

    const-string v10, "it"

    iget-object v11, v0, Landroidx/work/JobListenableFuture$1;->this$0:Ljava/lang/Object;

    packed-switch v5, :pswitch_data_0

    const/4 v3, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1f

    .line 10
    :pswitch_0
    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "fqName"

    .line 11
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;

    invoke-virtual {v11, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->findPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedPackageFragmentImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;)V

    move-object v9, v0

    goto :goto_0

    :cond_0
    const-string v0, "components"

    .line 14
    invoke-static {v0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_1
    :goto_0
    return-object v9

    .line 15
    :pswitch_1
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    return-object v0

    .line 16
    :pswitch_2
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_3
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    invoke-static {v1, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 18
    :pswitch_4
    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    const-string v1, "kotlinClass"

    .line 19
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;

    .line 20
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1;

    invoke-direct {v8, v11, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;Ljava/util/HashMap;Ljava/util/HashMap;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 22
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    const-string v9, "klass"

    invoke-static {v0, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v10, "klass.declaredMethods"

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    const-string v12, "annotations"

    const-string v13, "parameterType"

    const-string v14, "sb.toString()"

    const-string v15, "("

    if-ge v11, v10, :cond_8

    aget-object v16, v9, v11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p0, v9

    array-length v9, v15

    move/from16 p1, v10

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_2

    move/from16 v19, v9

    aget-object v9, v15, v10

    invoke-static {v9, v13}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v19

    goto :goto_2

    :cond_2
    const-string v9, ")"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "method.returnType"

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v8, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1;->visitMethod(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1$AnnotationVisitorForMethod;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    const-string v9, "method.declaredAnnotations"

    invoke-static {v4, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v4

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_4

    aget-object v13, v4, v10

    invoke-static {v13, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v13}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v15

    move-object/from16 v19, v4

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    invoke-direct {v4, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v3, v15, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1$MemberAnnotationVisitor;->visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v4, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpg;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v19

    goto :goto_3

    .line 27
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v4

    const-string v9, "method.parameterAnnotations"

    invoke-static {v4, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [[Ljava/lang/annotation/Annotation;

    array-length v9, v4

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_7

    aget-object v13, v4, v10

    invoke-static {v13, v12}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v14, v13

    const/4 v15, 0x0

    :goto_5
    move-object/from16 v16, v4

    if-ge v15, v14, :cond_6

    aget-object v4, v13, v15

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v19

    move/from16 v20, v9

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v19, v13

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v13

    move/from16 v21, v14

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    invoke-direct {v14, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v3, v10, v13, v14}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1$AnnotationVisitorForMethod;->visitParameterAnnotation(ILkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-static {v13, v4, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpg;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    move-object/from16 v13, v19

    move/from16 v9, v20

    move/from16 v14, v21

    goto :goto_5

    :cond_6
    move/from16 v20, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1$MemberAnnotationVisitor;->visitEnd()V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, p0

    move/from16 v10, p1

    goto/16 :goto_1

    .line 28
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    const-string v4, "klass.declaredConstructors"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v3

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v4, :cond_10

    aget-object v9, v3, v7

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/name/SpecialNames;->INIT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v11, "constructor"

    invoke-static {v9, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 p0, v3

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    move/from16 v16, v4

    const-string v4, "constructor.parameterTypes"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v3

    move-object/from16 p1, v15

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v4, :cond_9

    move/from16 v19, v4

    aget-object v4, v3, v15

    invoke-static {v4, v13}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v19

    goto :goto_7

    :cond_9
    const-string v3, ")V"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v8, v10, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1;->visitMethod(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1$AnnotationVisitorForMethod;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    const-string v10, "constructor.declaredAnnotations"

    invoke-static {v4, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v10, v4

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v10, :cond_b

    aget-object v15, v4, v11

    invoke-static {v15, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {v15}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v19

    move-object/from16 v20, v4

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v4

    move/from16 v19, v10

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v10

    move-object/from16 v21, v13

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    invoke-direct {v13, v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v3, v10, v13}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1$MemberAnnotationVisitor;->visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-static {v10, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpg;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v19

    move-object/from16 v4, v20

    move-object/from16 v13, v21

    goto :goto_8

    :cond_b
    move-object/from16 v21, v13

    .line 32
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v4

    const-string v10, "parameterAnnotations"

    invoke-static {v4, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v10, v4

    if-nez v10, :cond_c

    const/4 v10, 0x1

    const/16 v17, 0x1

    goto :goto_9

    :cond_c
    const/4 v10, 0x1

    const/16 v17, 0x0

    :goto_9
    xor-int/lit8 v11, v17, 0x1

    if-eqz v11, :cond_f

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    array-length v10, v4

    sub-int/2addr v9, v10

    array-length v10, v4

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v10, :cond_f

    aget-object v13, v4, v11

    invoke-static {v13, v12}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v15, v13

    move-object/from16 v19, v4

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v15, :cond_e

    move/from16 v20, v10

    aget-object v10, v13, v4

    invoke-static {v10}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v22

    move-object/from16 v23, v12

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v22, v13

    add-int v13, v11, v9

    move/from16 v24, v9

    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v9

    move-object/from16 v25, v14

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    invoke-direct {v14, v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v3, v13, v9, v14}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1$AnnotationVisitorForMethod;->visitParameterAnnotation(ILkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-static {v9, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpg;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_d
    add-int/lit8 v4, v4, 0x1

    move/from16 v10, v20

    move-object/from16 v13, v22

    move-object/from16 v12, v23

    move/from16 v9, v24

    move-object/from16 v14, v25

    goto :goto_b

    :cond_e
    move/from16 v24, v9

    move/from16 v20, v10

    move-object/from16 v23, v12

    move-object/from16 v25, v14

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v19

    goto :goto_a

    :cond_f
    move-object/from16 v23, v12

    move-object/from16 v25, v14

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1$MemberAnnotationVisitor;->visitEnd()V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v15, p1

    move/from16 v4, v16

    move-object/from16 v13, v21

    move-object/from16 v12, v23

    move-object/from16 v14, v25

    goto/16 :goto_6

    .line 33
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v3, "klass.declaredFields"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_14

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v9

    .line 34
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "field.type"

    invoke-static {v10, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "desc"

    .line 35
    invoke-static {v10, v11}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "name.asString()"

    invoke-static {v9, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v10}, Lkotlin/time/Duration$Companion;->fromFieldNameAndDesc(Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object v9

    .line 36
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v11, "field.declaredAnnotations"

    invoke-static {v7, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v11, v7

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v11, :cond_12

    aget-object v13, v7, v12

    invoke-static {v13, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {v13}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v15

    move-object/from16 p0, v0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    invoke-direct {v0, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    move/from16 v16, v3

    .line 39
    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1;->this$0:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;

    invoke-virtual {v3, v15, v0, v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->loadAnnotationIfNotSpecial(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 40
    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpg;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_11
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v16

    goto :goto_d

    :cond_12
    move-object/from16 p0, v0

    move/from16 v16, v3

    .line 41
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_13

    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1;->$memberAnnotations:Ljava/util/HashMap;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v16

    goto/16 :goto_c

    .line 42
    :cond_14
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants;

    invoke-direct {v0, v1, v2, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0

    .line 43
    :pswitch_5
    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 44
    invoke-static {v0, v10}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v0

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 45
    iget v1, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->index:I

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    const-string v1, "it.valueParameters[p.index].type"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 47
    :pswitch_6
    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder;

    const-string v1, "$this$function"

    .line 48
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lkotlinx/coroutines/CoroutineId$Key;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "java/util/"

    const-string v3, "Spliterator"

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NOT_PLATFORM:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 51
    filled-new-array {v3, v3}, [Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder;->returns(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;)V

    return-object v2

    .line 52
    :pswitch_7
    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    .line 53
    invoke-static {v0, v10}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    move-object v3, v11

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 54
    iget-object v2, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 55
    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->jClass:Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    .line 56
    iget-object v1, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->additionalSupertypeClassDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v1, :cond_15

    const/4 v5, 0x1

    goto :goto_e

    :cond_15
    const/4 v5, 0x0

    .line 57
    :goto_e
    iget-object v6, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->unsubstitutedMemberScope:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    move-object v1, v0

    .line 58
    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V

    return-object v0

    .line 59
    :pswitch_8
    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;

    const-string v1, "m"

    .line 60
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/ClassDeclaredMemberIndex;

    .line 61
    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/ClassDeclaredMemberIndex;->memberFilter:Lkotlin/jvm/functions/Function1;

    .line 62
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 63
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getMember()Ljava/lang/reflect/Member;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "member.declaringClass"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 65
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x69e9ad94

    if-eq v2, v3, :cond_1c

    const v3, -0x4d378041

    if-eq v2, v3, :cond_17

    const v3, 0x8cdac1b

    if-eq v2, v3, :cond_16

    goto :goto_10

    :cond_16
    const-string v2, "hashCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_10

    :cond_17
    const-string v2, "equals"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_10

    .line 66
    :cond_18
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getValueParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaValueParameter;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaValueParameter;->type:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    goto :goto_f

    :cond_19
    move-object v0, v9

    :goto_f
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;

    if-eqz v1, :cond_1a

    move-object v9, v0

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;

    :cond_1a
    if-nez v9, :cond_1b

    goto :goto_10

    :cond_1b
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    .line 67
    iget-object v0, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->classifier:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaElement;

    .line 68
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    if-eqz v1, :cond_1e

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_11

    :cond_1c
    const-string v2, "toString"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getValueParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    goto :goto_11

    :cond_1e
    :goto_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_12

    :cond_1f
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_20

    const/4 v3, 0x1

    goto :goto_13

    :cond_20
    const/4 v3, 0x0

    .line 70
    :goto_13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_9
    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;

    const-string v1, "typeParameter"

    .line 72
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaTypeParameterResolver;

    .line 73
    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaTypeParameterResolver;->typeParameters:Ljava/util/LinkedHashMap;

    .line 74
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;

    .line 75
    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaTypeParameterResolver;->c:Lcom/airbnb/lottie/parser/DropShadowEffect;

    const-string v3, "<this>"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 76
    iget-object v4, v2, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 77
    iget-object v2, v2, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    check-cast v2, Lkotlin/Lazy;

    .line 78
    invoke-direct {v3, v4, v11, v2}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V

    .line 79
    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaTypeParameterResolver;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/text/UStringsKt;->copyWithNewDefaultTypeQualifiers(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lcom/airbnb/lottie/parser/DropShadowEffect;

    move-result-object v3

    iget v4, v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaTypeParameterResolver;->typeParametersIndexOffset:I

    add-int/2addr v4, v1

    invoke-direct {v9, v3, v0, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;ILkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)V

    :cond_21
    return-object v9

    .line 80
    :pswitch_a
    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;

    .line 81
    invoke-static {v0, v6}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationMapper;->DEPRECATED_ANNOTATION_MESSAGE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    .line 82
    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;->c:Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 83
    iget-boolean v2, v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;->areAnnotationsFreshlySupported:Z

    .line 84
    invoke-static {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationMapper;->mapOrResolveJavaAnnotation(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;Z)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/PossiblyExternalAnnotationDescriptor;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_b
    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 86
    invoke-static {v2, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;

    .line 87
    iget-object v0, v11, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;->states:Ljava/util/Map;

    .line 88
    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    const-string v5, "packageName"

    .line 89
    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->isRoot()Z

    move-result v5

    if-eqz v5, :cond_23

    move-object v5, v9

    goto :goto_15

    :cond_23
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    .line 91
    :goto_15
    invoke-static {v5, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_16

    :cond_24
    const/4 v4, 0x0

    goto :goto_17

    :cond_25
    :goto_16
    const/4 v4, 0x1

    :goto_17
    if-eqz v4, :cond_22

    .line 92
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_26
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_27

    goto :goto_18

    :cond_27
    move-object v1, v9

    :goto_18
    if-nez v1, :cond_28

    goto :goto_1a

    :cond_28
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    move-object v0, v9

    goto :goto_19

    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_19

    :cond_2a
    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v1, v2}, Lkotlin/text/UStringsKt;->tail(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v5, v2}, Lkotlin/text/UStringsKt;->tail(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v1, v5, :cond_2c

    move-object v0, v4

    move v1, v5

    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2b

    :goto_19
    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    :cond_2d
    :goto_1a
    return-object v9

    .line 93
    :pswitch_c
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 94
    :pswitch_d
    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/Method;

    .line 95
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v3, 0x0

    goto :goto_1d

    :cond_2e
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 96
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x1

    goto :goto_1b

    :cond_2f
    const-string v2, "valueOf"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1b

    :cond_30
    const/4 v3, 0x0

    const/4 v10, 0x1

    move v0, v3

    :goto_1b
    if-nez v0, :cond_32

    goto :goto_1c

    :cond_31
    const/4 v10, 0x1

    :goto_1c
    move v3, v10

    .line 97
    :cond_32
    :goto_1d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 98
    :pswitch_e
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    return-object v0

    .line 99
    :pswitch_f
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_10
    check-cast v11, Lkotlin/collections/AbstractCollection;

    if-ne v1, v11, :cond_33

    const-string v0, "(this Collection)"

    goto :goto_1e

    :cond_33
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    .line 101
    :pswitch_11
    invoke-static {v1, v10}, Lkotlin/ExceptionsKt;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/tinder/StateMachine$Matcher;

    .line 102
    iget-object v0, v11, Lcom/tinder/StateMachine$Matcher;->clazz:Ljava/lang/Class;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 105
    :pswitch_12
    check-cast v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-object v2

    .line 106
    :pswitch_13
    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Ljava/lang/Throwable;)V

    return-object v2

    .line 107
    :pswitch_14
    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Ljava/lang/Throwable;)V

    return-object v2

    .line 108
    :pswitch_15
    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 109
    check-cast v11, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    .line 110
    iput-boolean v0, v11, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->interceptUpdate:Z

    return-object v2

    .line 111
    :pswitch_16
    check-cast v1, Lcom/motorola/camera/settings/Setting;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Lcom/motorola/camera/settings/Setting;)V

    return-object v2

    .line 112
    :pswitch_17
    check-cast v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-object v2

    .line 113
    :pswitch_18
    check-cast v1, Lcom/motorola/camera/settings/Setting;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Lcom/motorola/camera/settings/Setting;)V

    return-object v2

    .line 114
    :pswitch_19
    check-cast v1, Lcom/motorola/camera/settings/Setting;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Lcom/motorola/camera/settings/Setting;)V

    return-object v2

    .line 115
    :pswitch_1a
    move-object v0, v1

    check-cast v0, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    .line 116
    check-cast v11, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    invoke-static {v0, v11}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 117
    :pswitch_1b
    move-object v0, v1

    check-cast v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;

    .line 118
    invoke-static {v0, v10}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/motorola/camera/background/common/TaskId;

    iget-object v0, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    invoke-static {v0, v11}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 119
    :pswitch_1c
    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Landroidx/work/JobListenableFuture$1;->invoke(Ljava/lang/Throwable;)V

    return-object v2

    .line 120
    :goto_1f
    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$ClassKey;

    const-string v1, "key"

    .line 121
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->BLACK_LIST:Ljava/util/Set;

    .line 122
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->fictitiousClassDescriptorFactories:Ljava/lang/Iterable;

    .line 124
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$ClassKey;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    if-eqz v4, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/ClassDescriptorFactory;

    invoke-interface {v4, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/ClassDescriptorFactory;->createClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v4

    if-eqz v4, :cond_34

    move-object v9, v4

    goto/16 :goto_25

    :cond_35
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->BLACK_LIST:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto/16 :goto_25

    :cond_36
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$ClassKey;->classData:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    if-nez v0, :cond_37

    .line 125
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->classDataFinder:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;

    .line 126
    invoke-interface {v0, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;->findClassData(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    move-result-object v0

    if-nez v0, :cond_37

    goto/16 :goto_25

    .line 127
    :cond_37
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 128
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->classProto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 129
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->metadataVersion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;

    .line 130
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->sourceElement:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 131
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getOuterClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v7

    const-string v8, "classId.shortClassName"

    if-eqz v7, :cond_3b

    .line 132
    invoke-virtual {v11, v7, v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->deserializeClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v1

    .line 133
    instance-of v3, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz v3, :cond_38

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    goto :goto_20

    :cond_38
    move-object v1, v9

    :goto_20
    if-nez v1, :cond_39

    goto/16 :goto_25

    :cond_39
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->getClassNames$deserialization()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_25

    .line 135
    :cond_3a
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    goto/16 :goto_24

    :cond_3b
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v7

    const-string v12, "classId.packageFqName"

    invoke-static {v7, v12}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->packageFragmentProvider:Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;

    invoke-static {v1, v7}, Lkotlin/text/UStringsKt;->packageFragments(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    instance-of v13, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedPackageFragmentImpl;

    if-eqz v13, :cond_3e

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedPackageFragmentImpl;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedPackageFragmentImpl;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;

    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->getClassNames$deserialization()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3d

    goto :goto_21

    :cond_3d
    move v12, v3

    goto :goto_22

    :cond_3e
    :goto_21
    move v12, v10

    :goto_22
    if-eqz v12, :cond_3c

    goto :goto_23

    :cond_3f
    move-object v7, v9

    .line 137
    :goto_23
    move-object v13, v7

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    if-nez v13, :cond_40

    goto :goto_25

    :cond_40
    iget-object v12, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    new-instance v15, Lcom/google/android/gms/internal/mlkit_common/zzpi;

    .line 138
    iget-object v1, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    const-string v3, "classProto.typeTable"

    .line 139
    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v1}, Lcom/google/android/gms/internal/mlkit_common/zzpi;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->EMPTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    .line 140
    iget-object v1, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    const-string v3, "classProto.versionRequirementTable"

    .line 141
    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/ranges/IntRange$Companion;->create(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    move-result-object v16

    const/16 v18, 0x0

    move-object v14, v2

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v18}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->createContext(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    move-result-object v1

    :goto_24
    move-object v13, v1

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    move-object v12, v9

    move-object v14, v4

    move-object v15, v2

    move-object/from16 v16, v6

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    :goto_25
    return-object v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 2

    iget v0, p0, Landroidx/work/JobListenableFuture$1;->$r8$classId:I

    const-string v1, "it"

    iget-object p0, p0, Landroidx/work/JobListenableFuture$1;->this$0:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 142
    :sswitch_0
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveArrayKotlinType(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    :sswitch_1
    const-string v0, "module"

    .line 143
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getStringType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    .line 144
    :goto_0
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public final invoke(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 2

    iget v0, p0, Landroidx/work/JobListenableFuture$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/work/JobListenableFuture$1;->this$0:Ljava/lang/Object;

    const-string v1, "it"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 145
    :pswitch_0
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    .line 146
    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->launchRequestInfo:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 147
    :try_start_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    .line 148
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->Companion:L_COROUTINE/ArtificialStackFrames;

    invoke-virtual {p1}, L_COROUTINE/ArtificialStackFrames;->getTAG()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    .line 150
    :goto_1
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ActivityStarter;

    invoke-interface {p0, p1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Lcom/motorola/camera/settings/Setting;)V
    .locals 6

    iget v0, p0, Landroidx/work/JobListenableFuture$1;->$r8$classId:I

    const-string v1, "setting"

    iget-object p0, p0, Landroidx/work/JobListenableFuture$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    new-instance v0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->tryToggleToast(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 153
    :pswitch_1
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    .line 154
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "setting.value"

    .line 155
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->freshIconRes(I)V

    return-void

    :goto_0
    const-string v0, "it"

    .line 157
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    .line 158
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    if-le v2, v3, :cond_1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarDetailedSetting:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;->DETAILS:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 161
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 162
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1;

    invoke-direct {v1, v0, v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    :cond_1
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_AUTO_ENHANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_AUTO_ENHANCE_SHOW_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 164
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v3, "get(SettingsManager.GOOG\u2026NHANCE_SHOW_DIALOG).value"

    .line 165
    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 167
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_AUTO_ENHANCE_DIALOG:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    invoke-static {v1, v4}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 169
    :cond_2
    iget-object v2, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 170
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "allowedSupported[index]"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->updateSettingValue(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "it.value"

    .line 172
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->access$showFeatureSettingChangedToast(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, Landroidx/work/JobListenableFuture$1;->$r8$classId:I

    const-string v1, "Job didn\'t complete, cause: "

    const/4 v2, 0x0

    iget-object p0, p0, Landroidx/work/JobListenableFuture$1;->this$0:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    if-eqz p1, :cond_0

    .line 173
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 175
    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 176
    check-cast p1, Lkotlinx/coroutines/android/HandlerContext;

    .line 177
    iget-object p1, p1, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    .line 178
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$2$2;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$2$2;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/DelayKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_0
    return-void

    :sswitch_1
    if-eqz p1, :cond_2

    .line 179
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    check-cast p0, Landroidx/work/JobListenableFuture;

    if-nez v0, :cond_1

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    const/4 p0, 0x0

    throw p0

    .line 182
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    .line 183
    throw p0

    :cond_2
    check-cast p0, Landroidx/work/JobListenableFuture;

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    .line 185
    throw p0

    :goto_1
    if-eqz p1, :cond_3

    .line 186
    sget p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->$r8$clinit:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WaterMarkPreferencesFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 187
    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 188
    check-cast p1, Lkotlinx/coroutines/android/HandlerContext;

    .line 189
    iget-object p1, p1, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    .line 190
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$2$2;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$2$2;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/DelayKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
