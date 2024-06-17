.class public final Lkotlinx/serialization/internal/UIntSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

.field public static final descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/UIntSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/UIntSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const-string v1, "kotlin.UInt"

    invoke-static {v1, v0}, Lkotlin/text/UStringsKt;->InlinePrimitiveDescriptor(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/InlineClassDescriptor;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/internal/UIntSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/UIntSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->decodeInt()I

    move-result p0

    new-instance p1, Lkotlin/UInt;

    invoke-direct {p1, p0}, Lkotlin/UInt;-><init>(I)V

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/UIntSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlin/UInt;

    iget p0, p2, Lkotlin/UInt;->data:I

    const-string p2, "encoder"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lkotlinx/serialization/internal/UIntSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    move-result-object p1

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->encodeInt(I)V

    return-void
.end method
