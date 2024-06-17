.class public final Lkotlinx/serialization/internal/ByteArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/ByteArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/ByteArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/ByteSerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [B

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public final empty()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public final readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lkotlinx/serialization/internal/ByteArrayBuilder;

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeByteElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)B

    move-result p0

    invoke-static {p3}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)V

    iget-object p1, p3, Lkotlinx/serialization/internal/ByteArrayBuilder;->buffer:[B

    iget p2, p3, Lkotlinx/serialization/internal/ByteArrayBuilder;->position:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p3, Lkotlinx/serialization/internal/ByteArrayBuilder;->position:I

    aput-byte p0, p1, p2

    return-void
.end method

.method public final toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlinx/serialization/internal/ByteArrayBuilder;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/ByteArrayBuilder;-><init>([B)V

    return-object p0
.end method

.method public final writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 5

    check-cast p2, [B

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-byte v1, p2, v0

    move-object v2, p1

    check-cast v2, Lkotlinx/serialization/encoding/AbstractEncoder;

    const-string v3, "descriptor"

    iget-object v4, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v4, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v0}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {v2, v1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
