.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;


# instance fields
.field public final kotlinClassFinder:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;

.field public final storage:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->kotlinClassFinder:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;

    new-instance p2, Landroidx/work/JobListenableFuture$1;

    const/16 v0, 0x18

    invoke-direct {p2, p0, v0}, Landroidx/work/JobListenableFuture$1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunction(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->storage:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    return-void
.end method

.method public static synthetic findClassAndLoadMemberAnnotations$default(Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZLjava/lang/Boolean;ZI)Ljava/util/List;
    .locals 9

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    const/4 v6, 0x0

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v7, p4

    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, p5

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->findClassAndLoadMemberAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;
    .locals 6

    const-string v0, "proto"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    if-eqz v0, :cond_1

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->EXTENSION_REGISTRY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->getJvmConstructorSignature(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {p0}, Lkotlin/time/Duration$Companion;->fromJvmMemberSignature(Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p0

    goto/16 :goto_4

    :cond_1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    if-eqz v0, :cond_2

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->EXTENSION_REGISTRY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->getJvmMethodSignature(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_2
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->propertySignature:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    const-string v2, "propertySignature"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/SupervisorKt;->getExtensionOrNull(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_8

    const/4 p0, 0x2

    const/4 p2, 0x0

    if-eq p3, p0, :cond_6

    const/4 p0, 0x3

    if-eq p3, p0, :cond_4

    goto :goto_3

    :cond_4
    iget p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->bitField0_:I

    const/16 p3, 0x8

    and-int/2addr p0, p3

    if-ne p0, p3, :cond_5

    goto :goto_0

    :cond_5
    move v1, p2

    :goto_0
    if-eqz v1, :cond_9

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->setter_:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    const-string p2, "signature.setter"

    goto :goto_2

    :cond_6
    iget p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->bitField0_:I

    const/4 p3, 0x4

    and-int/2addr p0, p3

    if-ne p0, p3, :cond_7

    goto :goto_1

    :cond_7
    move v1, p2

    :goto_1
    if-eqz v1, :cond_9

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->getter_:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    const-string p2, "signature.getter"

    :goto_2
    invoke-static {p0, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/time/Duration$Companion;->fromMethod(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p0

    goto :goto_4

    :cond_8
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__IndentKt;->getPropertySignature(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;ZZZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 p0, 0x0

    :goto_4
    return-object p0
.end method


# virtual methods
.method public final findClassAndLoadMemberAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->getSpecialCaseContainerClass(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;ZZLjava/lang/Boolean;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    move-result-object p3

    if-nez p3, :cond_2

    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->source:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    if-eqz p3, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    goto :goto_0

    :cond_0
    move-object p1, p4

    :goto_0
    if-eqz p1, :cond_1

    iget-object p3, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;->binaryClass:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    goto :goto_1

    :cond_1
    move-object p3, p4

    :cond_2
    :goto_1
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->storage:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    invoke-virtual {p0, p3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants;->memberAnnotations:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, p0

    :goto_2
    return-object p1
.end method

.method public final getSpecialCaseContainerClass(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;ZZLjava/lang/Boolean;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
    .locals 5

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->kotlinClassFinder:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;

    const/4 v2, 0x0

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->source:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    if-eqz p2, :cond_4

    if-eqz p4, :cond_3

    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    iget-object v4, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    if-ne v4, v0, :cond_0

    const-string p1, "DefaultImpls"

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->createNestedClassId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;

    if-eqz p2, :cond_4

    instance-of p2, v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;

    if-eqz p2, :cond_1

    move-object p2, v3

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;->facadeClassName:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_4

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->getInternalName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "facadeClassName.internalName"

    invoke-static {p2, p3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x2f

    const/16 p4, 0x2e

    invoke-static {p2, p3, p4}, Lkotlin/text/StringsKt__StringsKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    goto/16 :goto_3

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "isConst should not be null for property (container="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p3, :cond_7

    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    if-eqz p2, :cond_7

    move-object p2, p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    iget-object p4, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    if-ne p4, p3, :cond_7

    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->outerClass:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    if-eqz p2, :cond_7

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    iget-object p4, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    if-eq p4, p3, :cond_5

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    if-eq p4, p3, :cond_5

    if-eqz p5, :cond_7

    if-eq p4, v0, :cond_5

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    if-ne p4, p3, :cond_7

    :cond_5
    iget-object p0, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->source:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    if-eqz p1, :cond_6

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    goto :goto_2

    :cond_6
    move-object p0, v2

    :goto_2
    if-eqz p0, :cond_8

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;->binaryClass:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    move-object v2, p0

    goto :goto_5

    :cond_7
    instance-of p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;

    if-eqz p1, :cond_8

    instance-of p1, v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;

    if-eqz p1, :cond_8

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource"

    invoke-static {v3, p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;

    iget-object v2, v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;->knownJvmBinaryClass:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    if-nez v2, :cond_8

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;->getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    :goto_3
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;

    :goto_4
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;->jvmMetadataVersion:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    invoke-static {v1, p1, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->findKotlinClass(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    move-result-object v2

    :cond_8
    :goto_5
    return-object v2
.end method

.method public final isImplicitRepeatableContainer(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Z
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getOuterClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Container"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;->jvmMetadataVersion:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->kotlinClassFinder:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->findKotlinClass(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/SpecialJvmAnnotations;->SPECIAL_ANNOTATIONS:Ljava/util/LinkedHashSet;

    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/SpecialJvmAnnotations$isAnnotatedWithContainerMetaAnnotation$1;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/SpecialJvmAnnotations$isAnnotatedWithContainerMetaAnnotation$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpg;->loadClassAnnotations(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;)V

    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public abstract loadAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1;
.end method

.method public final loadAnnotationDefaultValue(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Object;
    .locals 7

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationDefaultValue$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationDefaultValue$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->loadConstantFromProperty(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final loadAnnotationIfNotSpecial(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1;
    .locals 1

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/SpecialJvmAnnotations;->SPECIAL_ANNOTATIONS:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final loadCallableAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;
    .locals 10

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    if-ne p3, v0, :cond_0

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->loadPropertyAnnotations$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    invoke-static {p2, v1, v2, p3, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->findClassAndLoadMemberAnnotations$default(Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final loadClassAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->source:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;->binaryClass:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    :cond_1
    if-eqz v2, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$loadClassAnnotations$1;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$loadClassAnnotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;Ljava/util/ArrayList;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    iget-object p0, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpg;->loadClassAnnotations(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class for loading annotations is not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->debugFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final loadConstantFromProperty(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONST:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->isMovedFromInterfaceCompanion(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->getSpecialCaseContainerClass(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;ZZLjava/lang/Boolean;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->source:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    if-eqz v2, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;->binaryClass:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->classHeader:Landroidx/core/app/NotificationCompatBuilder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->KOTLIN_1_3_RC_METADATA_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "version"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    iget v5, v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    iget v3, v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->patch:I

    invoke-virtual {v2, v4, v5, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->isAtLeast(III)Z

    move-result v2

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    invoke-static {p2, v3, p1, p3, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->storage:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p5, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v1

    :cond_5
    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/builtins/UnsignedTypes;->isUnsignedType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p1

    if-eqz p1, :cond_9

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ByteValue;

    if-eqz p1, :cond_6

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ByteValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(B)V

    :goto_2
    move-object p0, p1

    goto :goto_3

    :cond_6
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ShortValue;

    if-eqz p1, :cond_7

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ShortValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(S)V

    goto :goto_2

    :cond_7
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntValue;

    if-eqz p1, :cond_8

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(I)V

    goto :goto_2

    :cond_8
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/LongValue;

    if-eqz p1, :cond_9

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/LongValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(J)V

    goto :goto_2

    :cond_9
    :goto_3
    return-object p0
.end method

.method public final loadEnumEntryAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;)Ljava/util/List;
    .locals 8

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->name_:I

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "container as ProtoContai\u2026Class).classId.asString()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;->mapClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/time/Duration$Companion;->fromFieldNameAndDesc(Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->findClassAndLoadMemberAnnotations$default(Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final loadExtensionReceiverParameterAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;
    .locals 10

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, p3, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2, v2}, Lkotlin/time/Duration$Companion;->fromMethodSignatureAndParameterIndex(Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->findClassAndLoadMemberAnnotations$default(Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method

.method public final loadPropertyAnnotations$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)Ljava/util/List;
    .locals 12

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONST:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v4, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    const-string v5, "IS_CONST.get(proto.flags)"

    invoke-static {v2, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v2

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->isMovedFromInterfaceCompanion(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    move-result v9

    sget-object v10, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v11, 0x1

    if-ne p3, v11, :cond_1

    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v5, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x28

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__IndentKt;->getPropertySignature$default(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;ZZI)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v6, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v9

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->findClassAndLoadMemberAnnotations$default(Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object v10

    goto :goto_1

    :cond_1
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v5, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__IndentKt;->getPropertySignature$default(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;ZZI)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;->signature:Ljava/lang/String;

    const-string v5, "$delegate"

    invoke-static {v4, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    if-ne p3, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    :goto_0
    if-eq v4, v11, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->findClassAndLoadMemberAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v10

    :goto_1
    return-object v10
.end method

.method public final loadPropertyBackingFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;
    .locals 1

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->loadPropertyAnnotations$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final loadPropertyConstant(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Object;
    .locals 7

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->loadConstantFromProperty(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final loadPropertyDelegateFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;
    .locals 1

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->loadPropertyAnnotations$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final loadTypeAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->typeAnnotation:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "proto.getExtension(JvmProtoBuf.typeAnnotation)"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;->annotationDeserializer:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v2, v1, p2}, Lcom/motorola/camera/device/CameraService;->deserializeAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final loadTypeParameterAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->typeParameterAnnotation:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "proto.getExtension(JvmPr\u2026.typeParameterAnnotation)"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;->annotationDeserializer:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v2, v1, p2}, Lcom/motorola/camera/device/CameraService;->deserializeAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final loadValueParameterAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;ILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)Ljava/util/List;
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callableProto"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p5, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    const/4 v1, 0x0

    invoke-static {p2, p5, v0, p3, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p3

    if-eqz p3, :cond_d

    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    const/16 v0, 0x40

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-eqz p5, :cond_4

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    and-int/lit8 p5, p2, 0x20

    if-ne p5, v3, :cond_0

    move p5, v2

    goto :goto_0

    :cond_0
    move p5, v1

    :goto_0
    if-nez p5, :cond_3

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move p2, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p2, v2

    :goto_3
    if-eqz p2, :cond_b

    goto :goto_8

    :cond_4
    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    if-eqz p5, :cond_9

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    and-int/lit8 p5, p2, 0x20

    if-ne p5, v3, :cond_5

    move p5, v2

    goto :goto_4

    :cond_5
    move p5, v1

    :goto_4
    if-nez p5, :cond_8

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_6

    move p2, v2

    goto :goto_5

    :cond_6
    move p2, v1

    :goto_5
    if-eqz p2, :cond_7

    goto :goto_6

    :cond_7
    move p2, v1

    goto :goto_7

    :cond_8
    :goto_6
    move p2, v2

    :goto_7
    if-eqz p2, :cond_b

    goto :goto_8

    :cond_9
    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    if-eqz p5, :cond_c

    move-object p2, p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    sget-object p5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    iget-object v0, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    if-ne v0, p5, :cond_a

    const/4 v1, 0x2

    goto :goto_9

    :cond_a
    iget-boolean p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->isInner:Z

    if-eqz p2, :cond_b

    :goto_8
    move v1, v2

    :cond_b
    :goto_9
    add-int/2addr p4, v1

    invoke-static {p3, p4}, Lkotlin/time/Duration$Companion;->fromMethodSignatureAndParameterIndex(Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;->findClassAndLoadMemberAnnotations$default(Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    goto :goto_a

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported message: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_a
    return-object p0
.end method
