.class public abstract Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;


# instance fields
.field public hashCode:I

.field public final supertypes:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V
    .locals 3

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3;-><init>(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;I)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;

    invoke-direct {v2, p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3;)V

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->supertypes:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;

    return-void
.end method


# virtual methods
.method public abstract computeSupertypes()Ljava/util/Collection;
.end method

.method public abstract defaultSupertypeIfEmpty()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->equals$kotlin$reflect$jvm$internal$impl$types$ClassifierBasedTypeConstructor(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final equals$kotlin$reflect$jvm$internal$impl$types$ClassifierBasedTypeConstructor(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->hashCode$kotlin$reflect$jvm$internal$impl$types$ClassifierBasedTypeConstructor()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isLocal(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    if-eqz v1, :cond_8

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isLocal(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->isSameClassifier(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Z

    move-result p0

    return p0

    :cond_8
    :goto_2
    return v2
.end method

.method public getAdditionalNeighboursInSupertypeGraph(Z)Ljava/util/Collection;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public abstract getSupertypeLoopChecker()Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;
.end method

.method public final bridge synthetic getSupertypes()Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->getSupertypes()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final getSupertypes()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->supertypes:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;

    .line 2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;->supertypesWithoutCycles:Ljava/util/List;

    return-object p0
.end method

.method public final bridge synthetic hashCode()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->hashCode$kotlin$reflect$jvm$internal$impl$types$ClassifierBasedTypeConstructor()I

    move-result p0

    return p0
.end method

.method public final hashCode$kotlin$reflect$jvm$internal$impl$types$ClassifierBasedTypeConstructor()I
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->hashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isLocal(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->hashCode:I

    return v0
.end method

.method public abstract isSameClassifier(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Z
.end method

.method public processSupertypesWithoutCycles(Ljava/util/List;)Ljava/util/List;
    .locals 0

    return-object p1
.end method

.method public reportSupertypeLoopError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 0

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
