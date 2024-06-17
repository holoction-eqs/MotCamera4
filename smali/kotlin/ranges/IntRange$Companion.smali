.class public final Lkotlin/ranges/IntRange$Companion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap;
.implements Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/ranges/IntRange$Companion;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p1, p0, Lkotlin/ranges/IntRange$Companion;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 p1, 0x17

    .line 2
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_2
    const/16 p1, 0x15

    .line 3
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_3
    const/16 p1, 0x14

    .line 4
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_4
    const/16 p1, 0x12

    .line 5
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_5
    const/16 p1, 0x11

    .line 6
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_6
    const/16 p1, 0x10

    .line 7
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_7
    const/16 p1, 0xf

    .line 8
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_8
    const/16 p1, 0xb

    .line 9
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_9
    const/16 p1, 0xa

    .line 10
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_a
    const/16 p1, 0x9

    .line 11
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_b
    const/16 p1, 0x8

    .line 12
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_c
    const/4 p1, 0x7

    .line 13
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_d
    const/4 p1, 0x6

    .line 14
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_e
    const/4 p1, 0x5

    .line 15
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_f
    const/4 p1, 0x4

    .line 16
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_10
    const/4 p1, 0x3

    .line 17
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_11
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_12
    const/4 p1, 0x1

    .line 19
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :goto_0
    const/4 p1, 0x0

    .line 20
    invoke-direct {p0, p1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static create(Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;
    .locals 1

    .line 1
    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefinerForOwnerModule"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    invoke-direct {v0, p1, p2, p0, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V

    return-object v0
.end method

.method public static create(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;
    .locals 2

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->requirement_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->EMPTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    .line 4
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->requirement_:Ljava/util/List;

    const-string v1, "table.requirementList"

    .line 5
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;-><init>(Ljava/util/List;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final findValueByNumber(I)Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;
    .locals 3

    iget p0, p0, Lkotlin/ranges/IntRange$Companion;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$QualifiedNameTable$QualifiedName$Kind;->LOCAL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$QualifiedNameTable$QualifiedName$Kind;

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$QualifiedNameTable$QualifiedName$Kind;->PACKAGE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$QualifiedNameTable$QualifiedName$Kind;

    goto :goto_0

    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$QualifiedNameTable$QualifiedName$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$QualifiedNameTable$QualifiedName$Kind;

    :goto_0
    return-object v0

    :pswitch_1
    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->AT_LEAST_ONCE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    goto :goto_1

    :cond_4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->EXACTLY_ONCE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    goto :goto_1

    :cond_5
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->AT_MOST_ONCE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    :goto_1
    return-object v0

    :goto_2
    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_6

    goto :goto_3

    :cond_6
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;->API_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    goto :goto_3

    :cond_7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;->COMPILER_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    goto :goto_3

    :cond_8
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;->LANGUAGE_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lkotlin/ranges/IntRange$Companion;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "NULL_VALUE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method
