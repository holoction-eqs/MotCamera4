.class public final Lkotlin/reflect/KTypeProjection$Companion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap;
.implements Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v2, "method"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_0
    const-string v2, "signatureErrors"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_1
    const-string v2, "descriptor"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_2
    const-string v2, "typeParameters"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_3
    const-string v2, "valueParameters"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_4
    const-string v2, "returnType"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_5
    const-string v2, "owner"

    aput-object v2, v0, v1

    :goto_0
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const-string p0, "resolvePropagatedSignature"

    aput-object p0, v0, v2

    goto :goto_1

    :cond_0
    const-string p0, "reportSignatureErrors"

    aput-object p0, v0, v2

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic $$$reportNull$$$0$1(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "a"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "b"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "equals"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/reflect/KTypeProjection$Companion;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/KTypeProjection$Companion;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 p1, 0x16

    .line 2
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_2
    const/16 p1, 0x15

    .line 3
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_3
    const/16 p1, 0x14

    .line 4
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_4
    const/16 p1, 0x13

    .line 5
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_5
    const/16 p1, 0x12

    .line 6
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_6
    const/16 p1, 0x11

    .line 7
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_7
    const/16 p1, 0xf

    .line 8
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_8
    const/16 p1, 0xe

    .line 9
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_9
    const/16 p1, 0xa

    .line 10
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_a
    const/16 p1, 0x9

    .line 11
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_b
    const/4 p1, 0x7

    .line 12
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_c
    const/4 p1, 0x6

    .line 13
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_d
    const/4 p1, 0x5

    .line 14
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_e
    const/4 p1, 0x4

    .line 15
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_f
    const/4 p1, 0x3

    .line 16
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :pswitch_10
    const/4 p1, 0x2

    .line 17
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    :goto_0
    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p1}, Lkotlin/reflect/KTypeProjection$Companion;-><init>(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static convertFromFlags(ZZZ)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    :goto_0
    return-object p0
.end method

.method public static create(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;
    .locals 15

    const-string v0, "klass"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpg;->loadClassAnnotations(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 1
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 2
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->headerKind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->metadataVersionArray:[I

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->metadataVersionArray:[I

    iget v5, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->extraInt:I

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v8

    :goto_0
    invoke-direct {v7, v3, v5}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;-><init>([IZ)V

    invoke-virtual {v7, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->isCompatible(Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->data:[Ljava/lang/String;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->incompatibleData:[Ljava/lang/String;

    iput-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->data:[Ljava/lang/String;

    goto :goto_2

    .line 3
    :cond_2
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->headerKind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-eq v2, v3, :cond_4

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->FILE_FACADE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-eq v2, v3, :cond_4

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v6, v8

    :cond_4
    :goto_1
    if-eqz v6, :cond_5

    .line 4
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->data:[Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->serializedIrFields:[Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->decodeBytes([Ljava/lang/String;)[B

    move-result-object v2

    move-object v14, v2

    goto :goto_3

    :cond_6
    move-object v14, v4

    :goto_3
    new-instance v2, Landroidx/core/app/NotificationCompatBuilder;

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->headerKind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    iget-object v8, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->data:[Ljava/lang/String;

    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->incompatibleData:[Ljava/lang/String;

    iget-object v10, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->strings:[Ljava/lang/String;

    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->extraString:Ljava/lang/String;

    iget v12, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->extraInt:I

    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->packageName:Ljava/lang/String;

    move-object v5, v2

    invoke-direct/range {v5 .. v14}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object v2, v4

    :goto_5
    if-nez v2, :cond_8

    return-object v4

    .line 5
    :cond_8
    invoke-direct {v1, p0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;-><init>(Ljava/lang/Class;Landroidx/core/app/NotificationCompatBuilder;)V

    return-object v1
.end method

.method public static create(Ljava/lang/String;Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 3

    const-string v0, "debugName"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;

    if-eqz v2, :cond_1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;

    .line 6
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    const-string v2, "elements"

    .line 7
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Lkotlin/reflect/KTypeProjection$Companion;->createOrSingle$descriptors(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;
    .locals 6

    const-string p4, "fqName"

    invoke-static {p0, p4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "storageManager"

    invoke-static {p1, p4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "module"

    invoke-static {p2, p4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :try_start_0
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    invoke-static {p3}, Lkotlin/time/Duration$Companion;->readFrom(Ljava/io/InputStream;)Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    move-result-object v5

    const-string p4, "ourVersion"

    .line 10
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    invoke-static {v0, p4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p4, v5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    iget v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    iget v3, v5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    if-ne p4, v1, :cond_1

    goto :goto_0

    :cond_0
    if-ne v3, v2, :cond_1

    if-gt p4, v1, :cond_1

    :goto_0
    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    move p4, v4

    :goto_1
    const/4 v1, 0x0

    if-eqz p4, :cond_3

    .line 11
    new-instance p4, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    invoke-direct {p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;-><init>()V

    .line 12
    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsProtoBuf;->registerAllExtensions(Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V

    .line 13
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;

    invoke-direct {v3, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    invoke-virtual {v2, v3, p4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;->parsePartialFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-interface {p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    check-cast p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;

    move-object v4, p4

    goto :goto_2

    .line 18
    :cond_2
    new-instance p0, Lkotlin/UninitializedPropertyAccessException;

    invoke-direct {p0}, Lkotlin/UninitializedPropertyAccessException;-><init>()V

    .line 19
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p4, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 21
    throw p1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 22
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 23
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move-object v4, v1

    .line 24
    :goto_2
    invoke-static {p3, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_4

    .line 25
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;)V

    return-object p3

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Kotlin built-in definition format version is not supported: expected "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Please update Kotlin"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p3, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createOrSingle$descriptors(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 3

    const-string v0, "debugName"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;

    new-array v1, v2, [Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;-><init>(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final equals(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/reflect/KTypeProjection$Companion;->$$$reportNull$$$0$1(I)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/KTypeProjection$Companion;->$$$reportNull$$$0$1(I)V

    throw p0
.end method

.method public final findValueByNumber(I)Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;
    .locals 3

    iget p0, p0, Lkotlin/reflect/KTypeProjection$Companion;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->SEALED:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    goto :goto_0

    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->OPEN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    goto :goto_0

    :cond_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    :goto_0
    return-object v0

    :pswitch_1
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->RETURNS_NOT_NULL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    goto :goto_1

    :cond_5
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->CALLS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    goto :goto_1

    :cond_6
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->RETURNS_CONSTANT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    :goto_1
    return-object v0

    :goto_2
    if-eqz p1, :cond_9

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_7

    goto :goto_3

    :cond_7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;->HIDDEN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;

    goto :goto_3

    :cond_8
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;->ERROR:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;

    goto :goto_3

    :cond_9
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;->WARNING:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
