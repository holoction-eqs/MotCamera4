.class public final Lkotlinx/serialization/internal/CharArrayBuilder;
.super Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
.source "SourceFile"


# instance fields
.field public buffer:[C

.field public position:I


# direct methods
.method public constructor <init>([C)V
    .locals 1

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->buffer:[C

    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->position:I

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/CharArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method


# virtual methods
.method public final build$kotlinx_serialization_core()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->buffer:[C

    iget p0, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->position:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p0

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final ensureCapacity$kotlinx_serialization_core(I)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->buffer:[C

    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->buffer:[C

    :cond_1
    return-void
.end method

.method public final getPosition$kotlinx_serialization_core()I
    .locals 0

    iget p0, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->position:I

    return p0
.end method
