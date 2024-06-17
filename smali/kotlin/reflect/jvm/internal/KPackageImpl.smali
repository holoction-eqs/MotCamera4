.class public final Lkotlin/reflect/jvm/internal/KPackageImpl;
.super Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;
.source "SourceFile"


# instance fields
.field public final data:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

.field public final jClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->jClass:Ljava/lang/Class;

    new-instance p1, Lkotlin/reflect/jvm/internal/KPackageImpl$data$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/KPackageImpl$data$1;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl;I)V

    invoke-static {p1}, Lkotlin/TuplesKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->data:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/KPackageImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/KPackageImpl;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/KPackageImpl;->jClass:Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->jClass:Ljava/lang/Class;

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

.method public final getConstructorDescriptors()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;
    .locals 2

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->data:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->scope$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-scope>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_REFLECTION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final getJClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->jClass:Ljava/lang/Class;

    return-object p0
.end method

.method public final getLocalProperty(I)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
    .locals 8

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->data:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->metadata$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Triple;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lkotlin/Triple;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;

    iget-object v1, v0, Lkotlin/Triple;->second:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;

    iget-object v0, v0, Lkotlin/Triple;->third:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->packageLocalVariable:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    const-string v2, "packageLocalVariable"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, p1}, Lkotlinx/coroutines/SupervisorKt;->getExtensionOrNull(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->jClass:Ljava/lang/Class;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_common/zzpi;

    iget-object p0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    const-string p1, "packageProto.typeTable"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/mlkit_common/zzpi;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    sget-object v7, Lkotlin/reflect/jvm/internal/KPackageImpl$getLocalProperty$1$1$1;->INSTANCE:Lkotlin/reflect/jvm/internal/KPackageImpl$getLocalProperty$1$1$1;

    invoke-static/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/UtilKt;->deserializeToDescriptor(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/jvm/functions/Function2;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getMethodOwner()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->data:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->multifileFacade$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->jClass:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method public final getProperties(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;
    .locals 2

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->data:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->scope$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-scope>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_REFLECTION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->jClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl;->jClass:Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
