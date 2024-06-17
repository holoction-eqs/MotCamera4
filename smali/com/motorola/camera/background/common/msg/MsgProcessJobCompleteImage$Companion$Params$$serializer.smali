.class public final Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;

.field public static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.motorola.camera.background.common.msg.MsgProcessJobCompleteImage.Companion.Params"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "appContext"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "jobContext"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "status"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aget-object p0, p0, v1

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 10

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    invoke-interface {p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v1

    move-object v4, v2

    move-object v5, v4

    move v7, v3

    :goto_0
    if-eqz v6, :cond_4

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    if-eqz v8, :cond_2

    if-eq v8, v1, :cond_1

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    aget-object v8, v0, v9

    invoke-interface {p1, p0, v9, v8, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    or-int/lit8 v7, v7, 0x4

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p0, v8}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p0

    :cond_1
    invoke-interface {p1, p0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v4

    or-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    or-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move v6, v3

    goto :goto_0

    :cond_4
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    check-cast v5, Lcom/motorola/camera/background/common/ReturnCode;

    invoke-direct {p0, v7, v2, v4, v5}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/encoding/AbstractEncoder;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->appContext:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object p2, p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {v0, p0, v2, v1, p2}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final typeParametersSerializers()V
    .locals 0

    return-void
.end method
