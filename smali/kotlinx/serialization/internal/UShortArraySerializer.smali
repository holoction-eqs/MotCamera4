.class public final Lkotlinx/serialization/internal/UShortArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UShortArraySerializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/UShortArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/UShortArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UShortArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/UShortSerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/UShortArray;

    iget-object p0, p1, Lkotlin/UShortArray;->storage:[S

    const-string p1, "$this$collectionSize"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    return p0
.end method

.method public final empty()Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [S

    new-instance v0, Lkotlin/UShortArray;

    invoke-direct {v0, p0}, Lkotlin/UShortArray;-><init>([S)V

    return-object v0
.end method

.method public final readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lkotlinx/serialization/internal/UShortArrayBuilder;

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->decodeShort()S

    move-result p0

    invoke-static {p3}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)V

    iget-object p1, p3, Lkotlinx/serialization/internal/UShortArrayBuilder;->buffer:[S

    iget p2, p3, Lkotlinx/serialization/internal/UShortArrayBuilder;->position:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p3, Lkotlinx/serialization/internal/UShortArrayBuilder;->position:I

    aput-short p0, p1, p2

    return-void
.end method

.method public final toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/UShortArray;

    iget-object p0, p1, Lkotlin/UShortArray;->storage:[S

    const-string p1, "$this$toBuilder"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlinx/serialization/internal/UShortArrayBuilder;

    invoke-direct {p1, p0}, Lkotlinx/serialization/internal/UShortArrayBuilder;-><init>([S)V

    return-object p1
.end method

.method public final writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 3

    check-cast p2, Lkotlin/UShortArray;

    iget-object p2, p2, Lkotlin/UShortArray;->storage:[S

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    move-object v2, p1

    check-cast v2, Lkotlinx/serialization/encoding/AbstractEncoder;

    invoke-virtual {v2, v1, v0}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Encoder;

    move-result-object v1

    aget-short v2, p2, v0

    invoke-interface {v1, v2}, Lkotlinx/serialization/encoding/Encoder;->encodeShort(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
