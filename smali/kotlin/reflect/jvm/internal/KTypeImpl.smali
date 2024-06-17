.class public final Lkotlin/reflect/jvm/internal/KTypeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/internal/KTypeBase;


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final arguments$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final classifier$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final computeJavaType:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "classifier"

    const-string v5, "getClassifier()Lkotlin/reflect/KClassifier;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "arguments"

    const-string v4, "getArguments()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/KTypeImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    instance-of p1, p2, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlin/TuplesKt;->lazySoft(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_1
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl;->computeJavaType:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance p1, Lkotlin/reflect/jvm/internal/KTypeImpl$classifier$2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/KTypeImpl$classifier$2;-><init>(Lkotlin/reflect/jvm/internal/KTypeImpl;I)V

    invoke-static {p1}, Lkotlin/TuplesKt;->lazySoft(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl;->classifier$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance p1, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    invoke-direct {p1, v0, p0, p2}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/TuplesKt;->lazySoft(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl;->arguments$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    return-void
.end method


# virtual methods
.method public final convert(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/KClassifier;
    .locals 4

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->toJavaClass(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KTypeImpl;->convert(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/KClassifier;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJvmErasure(Lkotlin/reflect/KClassifier;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KClassImpl;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_2
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot determine classifier for array element type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    :goto_0
    new-instance p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/KClassImpl;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_4
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->WRAPPER_TO_PRIMITIVE:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p1

    :goto_1
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/KClassImpl;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_6
    new-instance p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/KClassImpl;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_7
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz p0, :cond_8

    new-instance p0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-direct {p0, v3, v0}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    return-object p0

    :cond_8
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    if-nez p0, :cond_9

    return-object v3

    :cond_9
    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "An operation is not implemented: Type alias classifiers are not yet supported"

    invoke-direct {p0, p1, v2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/KTypeImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/KTypeImpl;

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getArguments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getArguments()Ljava/util/List;
    .locals 2

    sget-object v0, Lkotlin/reflect/jvm/internal/KTypeImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl;->arguments$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-arguments>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getClassifier()Lkotlin/reflect/KClassifier;
    .locals 2

    sget-object v0, Lkotlin/reflect/jvm/internal/KTypeImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl;->classifier$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KClassifier;

    return-object p0
.end method

.method public final getJavaType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl;->computeJavaType:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getArguments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->renderer:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->renderType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
