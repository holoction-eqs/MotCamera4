.class public final Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;
.source "SourceFile"


# static fields
.field public static final functionClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final kFunctionClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;


# instance fields
.field public final arity:I

.field public final containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

.field public final functionKind:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

.field public final memberScope:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassScope;

.field public final parameters:Ljava/util/List;

.field public final storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

.field public final typeConstructor:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "Function"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->functionClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_REFLECT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "KFunction"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->kFunctionClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsPackageFragment;Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;I)V
    .locals 3

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionKind"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->numberedClassName(I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->functionKind:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->arity:I

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassScope;

    invoke-direct {p2, p1, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassScope;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->memberScope:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassScope;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Lkotlin/ranges/IntRange;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p4}, Lkotlin/ranges/IntRange;-><init>(II)V

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object p2

    :goto_0
    iget-boolean p4, p2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result p4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "P"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    invoke-static {p0, v0, p4, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->createWithDefaultBound(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/name/Name;ILkotlin/reflect/jvm/internal/impl/storage/StorageManager;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const-string p3, "R"

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    invoke-static {p0, p2, p3, p4, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->createWithDefaultBound(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/name/Name;ILkotlin/reflect/jvm/internal/impl/storage/StorageManager;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->parameters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 0

    sget-object p0, Lkotlin/UInt$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    return-object p0
.end method

.method public final bridge synthetic getCompanionObjectDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic getConstructors()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    return-object p0
.end method

.method public final getDeclaredTypeParameters()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->parameters:Ljava/util/List;

    return-object p0
.end method

.method public final getKind$enumunboxing$()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0
.end method

.method public final bridge synthetic getSealedSubclasses()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1;

    return-object p0
.end method

.method public final bridge synthetic getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    return-object p0
.end method

.method public final getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor;

    return-object p0
.end method

.method public final getUnsubstitutedMemberScope(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->memberScope:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassScope;

    return-object p0
.end method

.method public final bridge synthetic getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValueClassRepresentation()Lkotlin/reflect/jvm/internal/impl/descriptors/ValueClassRepresentation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
    .locals 1

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    const-string v0, "PUBLIC"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isActual()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isCompanionObject()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isExpect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isExternal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isFun()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isInner()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isValue()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
