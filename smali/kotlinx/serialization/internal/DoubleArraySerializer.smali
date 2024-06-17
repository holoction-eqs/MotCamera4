.class public final Lkotlinx/serialization/internal/DoubleArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/DoubleArraySerializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/DoubleArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/DoubleArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/DoubleArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [D

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public final empty()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [D

    return-object p0
.end method

.method public final readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
    .locals 1

    check-cast p3, Lkotlinx/serialization/internal/DoubleArrayBuilder;

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeDoubleElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)D

    move-result-wide p0

    invoke-static {p3}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)V

    iget-object p2, p3, Lkotlinx/serialization/internal/DoubleArrayBuilder;->buffer:[D

    iget p4, p3, Lkotlinx/serialization/internal/DoubleArrayBuilder;->position:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p3, Lkotlinx/serialization/internal/DoubleArrayBuilder;->position:I

    aput-wide p0, p2, p4

    return-void
.end method

.method public final toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [D

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlinx/serialization/internal/DoubleArrayBuilder;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/DoubleArrayBuilder;-><init>([D)V

    return-object p0
.end method

.method public final writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 6

    check-cast p2, [D

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-wide v1, p2, v0

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/encoding/AbstractEncoder;

    const-string v4, "descriptor"

    iget-object v5, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v5, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v0}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {v3, v1, v2}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
