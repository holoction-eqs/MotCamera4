.class public final Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;

.field public static final serialName:Ljava/lang/String;


# instance fields
.field public final synthetic $$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->INSTANCE:Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;

    const-string v0, "kotlinx.serialization.json.JsonArray"

    sput-object v0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->serialName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListClassDesc;

    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;

    return-void
.end method


# virtual methods
.method public final getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getElementAnnotations(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ListLikeDescriptor;->getElementAnnotations(I)Ljava/util/List;

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ListLikeDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getElementIndex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ListLikeDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getElementName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getElementsCount()I
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;

    iget p0, p0, Lkotlinx/serialization/internal/ListLikeDescriptor;->elementsCount:I

    return p0
.end method

.method public final getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$2:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    return-object p0
.end method

.method public final getSerialName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->serialName:Ljava/lang/String;

    return-object p0
.end method

.method public final isElementOptional(I)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ListLikeDescriptor;->isElementOptional(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final isInline()Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final isNullable()V
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;->$$delegate_0:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
