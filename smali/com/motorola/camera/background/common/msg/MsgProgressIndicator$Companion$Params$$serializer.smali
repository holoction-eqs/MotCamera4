.class public final Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;

.field public static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.motorola.camera.background.common.msg.MsgProgressIndicator.Companion.Params"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "stepsCompleted"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "stepsTotal"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 8

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    if-eqz v6, :cond_1

    if-ne v6, v0, :cond_0

    invoke-interface {p1, p0, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v3

    or-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p0, v6}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p0

    :cond_1
    invoke-interface {p1, p0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v5

    or-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;

    invoke-direct {p0, v4, v5, v3}, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;-><init>(III)V

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/encoding/AbstractEncoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "descriptor"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    iget v1, p2, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsCompleted:I

    invoke-virtual {v0, v1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeInt(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    iget p2, p2, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsTotal:I

    invoke-virtual {v0, p2}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeInt(I)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final typeParametersSerializers()V
    .locals 0

    return-void
.end method
