.class public final Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

.field public static final serialName:Ljava/lang/String;


# instance fields
.field public final synthetic $$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    const-string v0, "kotlinx.serialization.json.JsonObject"

    sput-object v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->serialName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    sget-object v2, Lkotlinx/serialization/json/JsonElementSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    return-void
.end method


# virtual methods
.method public final getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getElementAnnotations(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;->getElementAnnotations(I)Ljava/util/List;

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getElementIndex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;->getElementIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getElementName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getElementsCount()I
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    iget p0, p0, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;->elementsCount:I

    return p0
.end method

.method public final getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    return-object p0
.end method

.method public final getSerialName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->serialName:Ljava/lang/String;

    return-object p0
.end method

.method public final isElementOptional(I)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;->isElementOptional(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final isInline()Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final isNullable()V
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
