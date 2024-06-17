.class public final Lkotlinx/serialization/modules/SerialModuleImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final polyBase2DefaultDeserializerProvider:Ljava/util/Map;

.field public final polyBase2DefaultSerializerProvider:Ljava/util/Map;

.field public final polyBase2NamedSerializers:Ljava/util/Map;

.field public final polyBase2Serializers:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2Serializers:Ljava/util/Map;

    iput-object v0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2DefaultSerializerProvider:Ljava/util/Map;

    iput-object v0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2NamedSerializers:Ljava/util/Map;

    iput-object v0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2DefaultDeserializerProvider:Ljava/util/Map;

    return-void
.end method
