.class public final Lkotlinx/serialization/internal/ULongArrayBuilder;
.super Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
.source "SourceFile"


# instance fields
.field public buffer:[J

.field public position:I


# direct methods
.method public constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->buffer:[J

    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->position:I

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ULongArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method


# virtual methods
.method public final build$kotlinx_serialization_core()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->buffer:[J

    iget p0, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->position:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/ULongArray;

    invoke-direct {v0, p0}, Lkotlin/ULongArray;-><init>([J)V

    return-object v0
.end method

.method public final ensureCapacity$kotlinx_serialization_core(I)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->buffer:[J

    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->buffer:[J

    :cond_1
    return-void
.end method

.method public final getPosition$kotlinx_serialization_core()I
    .locals 0

    iget p0, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->position:I

    return p0
.end method
