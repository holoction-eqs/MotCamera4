.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "SourceFile"


# instance fields
.field public bitField0_:I

.field public companionObjectName_:I

.field public constructor_:Ljava/util/List;

.field public contextReceiverTypeId_:Ljava/util/List;

.field public contextReceiverType_:Ljava/util/List;

.field public enumEntry_:Ljava/util/List;

.field public flags_:I

.field public fqName_:I

.field public function_:Ljava/util/List;

.field public inlineClassUnderlyingPropertyName_:I

.field public inlineClassUnderlyingTypeId_:I

.field public inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

.field public multiFieldValueClassUnderlyingName_:Ljava/util/List;

.field public multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

.field public multiFieldValueClassUnderlyingType_:Ljava/util/List;

.field public nestedClassName_:Ljava/util/List;

.field public property_:Ljava/util/List;

.field public sealedSubclassFqName_:Ljava/util/List;

.field public supertypeId_:Ljava/util/List;

.field public supertype_:Ljava/util/List;

.field public typeAlias_:Ljava/util/List;

.field public typeParameter_:Ljava/util/List;

.field public typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

.field public versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

.field public versionRequirement_:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->flags_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    return-void
.end method


# virtual methods
.method public final build()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/UninitializedPropertyAccessException;

    invoke-direct {p0}, Lkotlin/UninitializedPropertyAccessException;-><init>()V

    throw p0
.end method

.method public final buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->flags_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->fqName_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->companionObjectName_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_3
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_4
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_5
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_6
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_7
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_8
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_9
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_a
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x800

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_b
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x1000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_c

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x1001

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_c
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x2000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_d

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x2001

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_d
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x4000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_e

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_e
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    const v2, 0x8000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_f

    or-int/lit8 v3, v3, 0x8

    :cond_f
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingPropertyName_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    const/high16 v2, 0x10000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_10

    or-int/lit8 v3, v3, 0x10

    :cond_10
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    const/high16 v2, 0x20000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_11

    or-int/lit8 v3, v3, 0x20

    :cond_11
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingTypeId_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_12

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v4, -0x40001

    and-int/2addr v2, v4

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_12
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_13

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v4, -0x80001

    and-int/2addr v2, v4

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_13
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v4, 0x100000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_14

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v4, -0x100001

    and-int/2addr v2, v4

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_14
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    const/high16 v2, 0x200000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_15

    or-int/lit8 v3, v3, 0x40

    :cond_15
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v4, 0x400000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_16

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v4, -0x400001

    and-int/2addr v2, v4

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_16
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    or-int/lit16 v3, v3, 0x80

    :cond_17
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iput-object p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iput v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)V

    return-object v0
.end method

.method public final mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;->parsePartialFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 3
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
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

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 4
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)V

    return-object p0
.end method

.method public final mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)V
    .locals 11

    .line 5
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    if-ne p1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    .line 8
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->flags_:I

    :cond_2
    and-int/lit8 v1, v0, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 9
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    .line 10
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v5, v4

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->fqName_:I

    :cond_4
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    .line 11
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    .line 12
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v1, v5

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->companionObjectName_:I

    .line 13
    :cond_6
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_9

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_3

    .line 17
    :cond_7
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 18
    :cond_8
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    .line 19
    iget-object v5, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 20
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    :cond_9
    :goto_3
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v5, 0x10

    if-nez v0, :cond_c

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_4

    .line 25
    :cond_a
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v5

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 26
    :cond_b
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    .line 27
    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 28
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_c
    :goto_4
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v6, 0x20

    if-nez v0, :cond_f

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 31
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_5

    .line 33
    :cond_d
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v6

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 34
    :cond_e
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    .line 35
    iget-object v7, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 36
    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_f
    :goto_5
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v7, 0x40

    if-nez v0, :cond_12

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 39
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_6

    .line 41
    :cond_10
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/2addr v0, v7

    if-eq v0, v7, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v7

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 42
    :cond_11
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    .line 43
    iget-object v8, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 44
    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    :cond_12
    :goto_6
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v8, 0x80

    if-nez v0, :cond_15

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 47
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 48
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_7

    .line 49
    :cond_13
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/2addr v0, v8

    if-eq v0, v8, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v8

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 50
    :cond_14
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    .line 51
    iget-object v9, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 52
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_15
    :goto_7
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 55
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_8

    .line 57
    :cond_16
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v9, 0x100

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    iget-object v10, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v9

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 58
    :cond_17
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    .line 59
    iget-object v9, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 60
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_18
    :goto_8
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 63
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 64
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_9

    .line 65
    :cond_19
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v9, 0x200

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v10, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v9

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 66
    :cond_1a
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    .line 67
    iget-object v9, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 68
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    :cond_1b
    :goto_9
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 71
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 72
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_a

    .line 73
    :cond_1c
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v9, 0x400

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v10, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v9

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 74
    :cond_1d
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    .line 75
    iget-object v9, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 76
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_1e
    :goto_a
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 79
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 80
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_b

    .line 81
    :cond_1f
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v9, 0x800

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    iget-object v10, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v9

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 82
    :cond_20
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    .line 83
    iget-object v9, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 84
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_21
    :goto_b
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 86
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 87
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 88
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_c

    .line 89
    :cond_22
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v9, 0x1000

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    iget-object v10, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v9

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 90
    :cond_23
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    .line 91
    iget-object v9, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 92
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_24
    :goto_c
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 94
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 95
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 96
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_d

    .line 97
    :cond_25
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v9, 0x2000

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_26

    new-instance v0, Ljava/util/ArrayList;

    iget-object v10, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v9

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 98
    :cond_26
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    .line 99
    iget-object v9, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 100
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_27
    :goto_d
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 102
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 103
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 104
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_e

    .line 105
    :cond_28
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v9, 0x4000

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_29

    new-instance v0, Ljava/util/ArrayList;

    iget-object v10, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v9

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 106
    :cond_29
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    .line 107
    iget-object v9, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 108
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_2a
    :goto_e
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/lit8 v9, v0, 0x8

    if-ne v9, v1, :cond_2b

    move v1, v3

    goto :goto_f

    :cond_2b
    move v1, v2

    :goto_f
    if-eqz v1, :cond_2c

    .line 110
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    .line 111
    iget v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v10, 0x8000

    or-int/2addr v9, v10

    iput v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingPropertyName_:I

    :cond_2c
    and-int/2addr v0, v5

    if-ne v0, v5, :cond_2d

    move v0, v3

    goto :goto_10

    :cond_2d
    move v0, v2

    :goto_10
    if-eqz v0, :cond_2f

    .line 112
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 113
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v5, 0x10000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_2e

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 114
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    if-eq v1, v9, :cond_2e

    .line 115
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    :cond_2e
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v5

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 116
    :cond_2f
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_30

    move v0, v3

    goto :goto_11

    :cond_30
    move v0, v2

    :goto_11
    if-eqz v0, :cond_31

    .line 117
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    .line 118
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v5, 0x20000

    or-int/2addr v1, v5

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingTypeId_:I

    .line 119
    :cond_31
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 120
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 121
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 122
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_12

    .line 123
    :cond_32
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_33

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 124
    :cond_33
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 125
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_34
    :goto_12
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 129
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 130
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_13

    .line 131
    :cond_35
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_36

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 132
    :cond_36
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 133
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_37
    :goto_13
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 136
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 137
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 138
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_14

    .line 139
    :cond_38
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_39

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 140
    :cond_39
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 141
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    :cond_3a
    :goto_14
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_3b

    move v0, v3

    goto :goto_15

    :cond_3b
    move v0, v2

    :goto_15
    if-eqz v0, :cond_3d

    .line 144
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 145
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v5, 0x200000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_3c

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 146
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    if-eq v1, v6, :cond_3c

    .line 147
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object v0

    :cond_3c
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v5

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 148
    :cond_3d
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 149
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 150
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 151
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_16

    .line 152
    :cond_3e
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 153
    :cond_3f
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    .line 154
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    :cond_40
    :goto_16
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_41

    move v2, v3

    :cond_41
    if-eqz v2, :cond_43

    .line 157
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 158
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_42

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 159
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    if-eq v1, v3, :cond_42

    .line 160
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;-><init>(I)V

    .line 161
    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)V

    .line 162
    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)V

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    move-result-object v0

    :cond_42
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 163
    :cond_43
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;->mergeExtensionFields(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    .line 164
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 165
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->concat(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    .line 166
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method
