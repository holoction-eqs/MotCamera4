.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedCallableMemberDescriptor;


# instance fields
.field public final containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

.field public final nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

.field public final proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

.field public final typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

.field public final versionRequirementTable:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v3, p3

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v8, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v9, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v10, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p11, :cond_0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p11

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    iput-object v8, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    iput-object v9, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iput-object v10, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    iput-object v11, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->versionRequirementTable:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    move-object/from16 v0, p10

    iput-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    return-void
.end method


# virtual methods
.method public final bridge synthetic createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const-string v2, "newOwner"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kind"

    move-object/from16 v8, p1

    invoke-static {v8, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "annotations"

    move-object/from16 v6, p5

    invoke-static {v6, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;

    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-object/from16 v5, p3

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    iget-boolean v7, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->isPrimary:Z

    .line 3
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 4
    iget-object v10, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 5
    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    .line 6
    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->versionRequirementTable:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    .line 7
    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    move-object v3, v2

    move-object/from16 v14, p4

    .line 8
    invoke-direct/range {v3 .. v14}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 9
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->hasStableParameterNames:Z

    .line 10
    iput-boolean v0, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->hasStableParameterNames:Z

    return-object v2
.end method

.method public final getContainerSource()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    return-object p0
.end method

.method public final getNameResolver()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    return-object p0
.end method

.method public final getProto()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    return-object p0
.end method

.method public final getTypeTable()Lcom/google/android/gms/internal/mlkit_common/zzpi;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    return-object p0
.end method

.method public final isExternal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isSuspend()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isTailrec()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
