.class public final Lkotlinx/serialization/json/internal/JsonToStringWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public array:[C

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Ljava/util/AbstractList;

    check-cast v1, Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, [C

    if-eqz v1, :cond_1

    iget v2, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    array-length v3, v1

    sub-int/2addr v2, v3

    iput v2, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    :cond_1
    monitor-exit v0

    if-nez v3, :cond_2

    const/16 v0, 0x80

    new-array v3, v0, [C

    :cond_2
    iput-object v3, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ensureTotalCapacity(II)V
    .locals 2

    add-int/2addr p2, p1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    array-length v1, v0

    if-gt v1, p2, :cond_1

    mul-int/lit8 p1, p1, 0x2

    if-ge p2, p1, :cond_0

    move p2, p1

    :cond_0
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    const-string p2, "copyOf(this, newSize)"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    :cond_1
    return-void
.end method

.method public final release()V
    .locals 4

    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "array"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget v1, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    array-length v2, p0

    add-int/2addr v2, v1

    sget v3, Lkotlinx/serialization/json/internal/ArrayPoolsKt;->MAX_CHARS_IN_POOL:I

    if-ge v2, v3, :cond_0

    array-length v2, p0

    add-int/2addr v1, v2

    iput v1, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    iget-object v1, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Ljava/util/AbstractList;

    check-cast v1, Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    const/4 v2, 0x0

    iget p0, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final write(Ljava/lang/String;)V
    .locals 5

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->ensureTotalCapacity(II)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->array:[C

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonToStringWriter;->size:I

    return-void
.end method
