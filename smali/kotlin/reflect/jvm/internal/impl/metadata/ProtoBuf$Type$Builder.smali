.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "SourceFile"


# instance fields
.field public abbreviatedTypeId_:I

.field public abbreviatedType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

.field public argument_:Ljava/util/List;

.field public bitField0_:I

.field public className_:I

.field public flags_:I

.field public flexibleTypeCapabilitiesId_:I

.field public flexibleUpperBoundId_:I

.field public flexibleUpperBound_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

.field public nullable_:Z

.field public outerTypeId_:I

.field public outerType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

.field public typeAliasName_:I

.field public typeParameterName_:I

.field public typeParameter_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->argument_:Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->flexibleUpperBound_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->outerType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->abbreviatedType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-void
.end method


# virtual methods
.method public final build()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/UninitializedPropertyAccessException;

    invoke-direct {p0}, Lkotlin/UninitializedPropertyAccessException;-><init>()V

    throw p0
.end method

.method public final buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->argument_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->argument_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    :cond_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->argument_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->argument_:Ljava/util/List;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-boolean v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->nullable_:Z

    iput-boolean v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->nullable_:Z

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    :cond_2
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->flexibleTypeCapabilitiesId_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleTypeCapabilitiesId_:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->flexibleUpperBound_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleUpperBound_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->flexibleUpperBoundId_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleUpperBoundId_:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    :cond_5
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->className_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    :cond_6
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->typeParameter_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameter_:I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    :cond_7
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->typeParameterName_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameterName_:I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x80

    :cond_8
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->typeAliasName_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeAliasName_:I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    :cond_9
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->outerType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->outerType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x200

    :cond_a
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->outerTypeId_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->outerTypeId_:I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x400

    :cond_b
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->abbreviatedType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->abbreviatedType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x800

    :cond_c
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->abbreviatedTypeId_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->abbreviatedTypeId_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    or-int/lit16 v3, v3, 0x1000

    :cond_d
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->flags_:I

    iput p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flags_:I

    iput v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    return-object v0
.end method

.method public final mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->argument_:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->argument_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->argument_:Ljava/util/List;

    .line 5
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->argument_:Ljava/util/List;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    goto :goto_0

    .line 6
    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->argument_:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->argument_:Ljava/util/List;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    .line 7
    :cond_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->argument_:Ljava/util/List;

    .line 8
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->argument_:Ljava/util/List;

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_3
    :goto_0
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-ne v3, v2, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    const/4 v5, 0x2

    if-eqz v3, :cond_5

    .line 11
    iget-boolean v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->nullable_:Z

    .line 12
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v6, v5

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    iput-boolean v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->nullable_:Z

    :cond_5
    and-int/lit8 v3, v1, 0x2

    if-ne v3, v5, :cond_6

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    const/4 v5, 0x4

    if-eqz v3, :cond_7

    .line 13
    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleTypeCapabilitiesId_:I

    .line 14
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v6, v5

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->flexibleTypeCapabilitiesId_:I

    :cond_7
    and-int/2addr v1, v5

    if-ne v1, v5, :cond_8

    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v4

    :goto_3
    const/16 v3, 0x8

    if-eqz v1, :cond_a

    .line 15
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleUpperBound_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 16
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_9

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->flexibleUpperBound_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    if-eq v5, v0, :cond_9

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    :cond_9
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->flexibleUpperBound_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v1, v3

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    .line 17
    :cond_a
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move v1, v4

    :goto_4
    if-eqz v1, :cond_c

    .line 18
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleUpperBoundId_:I

    .line 19
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->flexibleUpperBoundId_:I

    .line 20
    :cond_c
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasClassName()Z

    move-result v1

    const/16 v3, 0x20

    if-eqz v1, :cond_d

    .line 21
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    .line 22
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v5, v3

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->className_:I

    .line 23
    :cond_d
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit8 v5, v1, 0x20

    if-ne v5, v3, :cond_e

    move v3, v2

    goto :goto_5

    :cond_e
    move v3, v4

    :goto_5
    const/16 v5, 0x40

    if-eqz v3, :cond_f

    .line 24
    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameter_:I

    .line 25
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v6, v5

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->typeParameter_:I

    :cond_f
    and-int/lit8 v3, v1, 0x40

    if-ne v3, v5, :cond_10

    move v3, v2

    goto :goto_6

    :cond_10
    move v3, v4

    :goto_6
    const/16 v5, 0x80

    if-eqz v3, :cond_11

    .line 26
    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameterName_:I

    .line 27
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v6, v5

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->typeParameterName_:I

    :cond_11
    and-int/lit16 v3, v1, 0x80

    if-ne v3, v5, :cond_12

    move v3, v2

    goto :goto_7

    :cond_12
    move v3, v4

    :goto_7
    const/16 v5, 0x100

    if-eqz v3, :cond_13

    .line 28
    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeAliasName_:I

    .line 29
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v6, v5

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->typeAliasName_:I

    :cond_13
    and-int/2addr v1, v5

    if-ne v1, v5, :cond_14

    move v1, v2

    goto :goto_8

    :cond_14
    move v1, v4

    :goto_8
    const/16 v3, 0x200

    if-eqz v1, :cond_16

    .line 30
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->outerType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 31
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_15

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->outerType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    if-eq v5, v0, :cond_15

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    :cond_15
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->outerType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v1, v3

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    .line 32
    :cond_16
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit16 v5, v1, 0x200

    if-ne v5, v3, :cond_17

    move v3, v2

    goto :goto_9

    :cond_17
    move v3, v4

    :goto_9
    const/16 v5, 0x400

    if-eqz v3, :cond_18

    .line 33
    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->outerTypeId_:I

    .line 34
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v6, v5

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->outerTypeId_:I

    :cond_18
    and-int/2addr v1, v5

    if-ne v1, v5, :cond_19

    move v1, v2

    goto :goto_a

    :cond_19
    move v1, v4

    :goto_a
    const/16 v3, 0x800

    if-eqz v1, :cond_1b

    .line 35
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->abbreviatedType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 36
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_1a

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->abbreviatedType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    if-eq v5, v0, :cond_1a

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    :cond_1a
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->abbreviatedType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v0, v3

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    .line 37
    :cond_1b
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit16 v1, v0, 0x800

    if-ne v1, v3, :cond_1c

    move v1, v2

    goto :goto_b

    :cond_1c
    move v1, v4

    :goto_b
    const/16 v3, 0x1000

    if-eqz v1, :cond_1d

    .line 38
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->abbreviatedTypeId_:I

    .line 39
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/2addr v5, v3

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->abbreviatedTypeId_:I

    :cond_1d
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1e

    goto :goto_c

    :cond_1e
    move v2, v4

    :goto_c
    if-eqz v2, :cond_1f

    .line 40
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flags_:I

    .line 41
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->bitField0_:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->flags_:I

    .line 42
    :cond_1f
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;->mergeExtensionFields(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    .line 43
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 44
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->concat(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    .line 45
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-object p0
.end method

.method public final mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 46
    :try_start_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;->parsePartialFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 48
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    :cond_0
    throw p1
.end method

.method public final bridge synthetic mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 49
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    return-object p0
.end method
