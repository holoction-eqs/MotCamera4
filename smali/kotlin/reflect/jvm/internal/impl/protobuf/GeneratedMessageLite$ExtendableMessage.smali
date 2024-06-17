.class public abstract Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;
.source "SourceFile"


# instance fields
.field public final extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;-><init>()V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;-><init>()V

    .line 2
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .locals 1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;-><init>()V

    .line 3
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    .line 4
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->makeImmutable()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensionsIsMutable:Z

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    .line 5
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    return-void
.end method


# virtual methods
.method public final extensionsAreInitialized()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final extensionsSerializedSize()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->computeFieldSize(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->computeFieldSize(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->getField(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public final hasExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->get$kotlin$reflect$jvm$internal$impl$protobuf$SmallSortedMap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hasField() can only be called on non-repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final makeExtensionsImmutable()V
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method public final newExtensionWriter()Lcom/motorola/camera/JsonConfig$CameraMapping;
    .locals 1

    new-instance v0, Lcom/motorola/camera/JsonConfig$CameraMapping;

    invoke-direct {v0, p0}, Lcom/motorola/camera/JsonConfig$CameraMapping;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-object v0
.end method

.method public final parseUnknownField(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;I)Z
    .locals 7

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLiteOrBuilder;->getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    move-result-object v0

    and-int/lit8 v1, p4, 0x7

    ushr-int/lit8 v2, p4, 0x3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v3, v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;I)V

    iget-object v0, p3, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->DEFAULT_INSTANCE:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    iget v6, v5, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->wireType:I

    if-ne v1, v6, :cond_1

    move v1, v2

    move v4, v1

    goto :goto_1

    :cond_1
    iget-boolean v4, v4, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    move v4, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v2

    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p1, p4, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->skipField(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)Z

    move-result v3

    goto/16 :goto_7

    :cond_3
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p2

    iget-object p3, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object p4, p3, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    if-ne p4, v1, :cond_6

    :goto_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p4

    if-lez p4, :cond_7

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p4

    iget-object v1, p3, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap;

    invoke-interface {v1, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;

    move-result-object p4

    if-nez p4, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_5

    invoke-interface {p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;->getNumber()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_5
    invoke-virtual {p0, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->addRepeatedField(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p4

    if-lez p4, :cond_7

    iget-object p4, p3, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-static {p1, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->readPrimitiveField(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->addRepeatedField(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_7

    :cond_8
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x7

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    if-eq v1, v4, :cond_f

    const/16 p2, 0x8

    if-eq v1, p2, :cond_9

    iget-object p2, v5, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->readPrimitiveField(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_6

    :cond_9
    iget-boolean p2, v5, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-nez p2, :cond_a

    invoke-virtual {p0, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->getField(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->toBuilder()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;

    move-result-object p2

    goto :goto_4

    :cond_a
    const/4 p2, 0x0

    :goto_4
    if-nez p2, :cond_b

    iget-object p2, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->newBuilderForType()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;

    move-result-object p2

    :cond_b
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$2;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    iget-object v1, v5, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const/16 v4, 0x40

    if-ne v1, p4, :cond_d

    iget p4, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->recursionDepth:I

    if-ge p4, v4, :cond_c

    add-int/2addr p4, v3

    iput p4, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;

    iget p3, v5, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    shl-int/lit8 p3, p3, 0x3

    or-int/lit8 p3, p3, 0x4

    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->checkLastTagWas(I)V

    iget p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->recursionDepth:I

    goto :goto_5

    :cond_c
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p4

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->recursionDepth:I

    if-ge v1, v4, :cond_e

    invoke-virtual {p1, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p4

    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->recursionDepth:I

    add-int/2addr v0, v3

    iput v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->checkLastTagWas(I)V

    iget p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p1, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    :goto_5
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;->build()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    move-result-object p1

    goto :goto_6

    :cond_e
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    iget-object p3, v5, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap;

    invoke-interface {p3, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;

    move-result-object p3

    if-nez p3, :cond_10

    invoke-virtual {p2, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_7

    :cond_10
    move-object p1, p3

    :goto_6
    iget-boolean p2, v5, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    iget-object p3, v5, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    sget-object p4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    if-ne p3, p4, :cond_11

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_11
    if-eqz p2, :cond_12

    invoke-virtual {p0, v5, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->addRepeatedField(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto :goto_7

    :cond_12
    invoke-virtual {p0, v5, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->setField(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    :goto_7
    return v3
.end method

.method public final verifyExtensionContainingType(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 0

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLiteOrBuilder;->getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    move-result-object p0

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
