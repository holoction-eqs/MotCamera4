.class final Lorg/tensorflow/lite/TensorImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final dtype:Lorg/tensorflow/lite/DataType;

.field public nativeHandle:J

.field public shapeCopy:[I


# direct methods
.method public constructor <init>(J)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {p1, p2}, Lorg/tensorflow/lite/TensorImpl;->dtype(J)I

    move-result v0

    sget-object v1, Lorg/tensorflow/lite/DataType;->values:[Lorg/tensorflow/lite/DataType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lorg/tensorflow/lite/DataType;->value:I

    if-ne v5, v0, :cond_0

    iput-object v4, p0, Lorg/tensorflow/lite/TensorImpl;->dtype:Lorg/tensorflow/lite/DataType;

    invoke-static {p1, p2}, Lorg/tensorflow/lite/TensorImpl;->shape(J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->shapeCopy:[I

    invoke-static {p1, p2}, Lorg/tensorflow/lite/TensorImpl;->shapeSignature(J)[I

    invoke-static {p1, p2}, Lorg/tensorflow/lite/TensorImpl;->quantizationScale(J)F

    invoke-static {p1, p2}, Lorg/tensorflow/lite/TensorImpl;->quantizationZeroPoint(J)I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DataType error: DataType "

    const-string p2, " is not recognized in Java."

    invoke-static {p1, v0, p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native buffer(J)Ljava/nio/ByteBuffer;
.end method

.method public static computeNumDimensions(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/tensorflow/lite/TensorImpl;->computeNumDimensions(Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array lengths cannot be 0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static native create(JII)J
.end method

.method private static native delete(J)V
.end method

.method private static native dtype(J)I
.end method

.method public static fillShape(Ljava/lang/Object;I[I)V
    .locals 3

    array-length v0, p2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    aget v1, p2, p1

    if-nez v1, :cond_1

    aput v0, p2, p1

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_4

    :goto_0
    add-int/lit8 p1, p1, 0x1

    array-length v1, p2

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lorg/tensorflow/lite/TensorImpl;->fillShape(Ljava/lang/Object;I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    aget p2, p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Mismatched lengths (%d and %d) in dimension %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromIndex(IJ)Lorg/tensorflow/lite/TensorImpl;
    .locals 2

    new-instance v0, Lorg/tensorflow/lite/TensorImpl;

    const/4 v1, 0x0

    invoke-static {p1, p2, p0, v1}, Lorg/tensorflow/lite/TensorImpl;->create(JII)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/tensorflow/lite/TensorImpl;-><init>(J)V

    return-object v0
.end method

.method private static native hasDelegateBufferHandle(J)Z
.end method

.method private static native name(J)Ljava/lang/String;
.end method

.method private static native numBytes(J)I
.end method

.method private static native quantizationScale(J)F
.end method

.method private static native quantizationZeroPoint(J)I
.end method

.method private static native readMultiDimensionalArray(JLjava/lang/Object;)V
.end method

.method private static native shape(J)[I
.end method

.method private static native shapeSignature(J)[I
.end method

.method private static native writeDirectBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native writeMultiDimensionalArray(JLjava/lang/Object;)V
.end method

.method private static native writeScalar(JLjava/lang/Object;)V
.end method


# virtual methods
.method public final buffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->buffer(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 2

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->delete(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    return-void
.end method

.method public final computeShapeOf(Ljava/lang/Object;)[I
    .locals 2

    invoke-static {p1}, Lorg/tensorflow/lite/TensorImpl;->computeNumDimensions(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    iget-object p0, p0, Lorg/tensorflow/lite/TensorImpl;->dtype:Lorg/tensorflow/lite/DataType;

    if-ne p0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    new-array p0, v0, [I

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lorg/tensorflow/lite/TensorImpl;->fillShape(Ljava/lang/Object;I[I)V

    return-object p0
.end method

.method public final copyTo(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_1

    iget-wide p0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->hasDelegateBufferHandle(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null outputs are allowed only if the Tensor is bound to a buffer handle."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->throwIfTypeIsIncompatible(Ljava/lang/Object;)V

    instance-of v0, p1, Ljava/nio/Buffer;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/nio/Buffer;

    iget-wide v2, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v2, v3}, Lorg/tensorflow/lite/TensorImpl;->numBytes(J)I

    move-result v2

    instance-of v3, p1, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    iget-object v3, p0, Lorg/tensorflow/lite/TensorImpl;->dtype:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v3}, Lorg/tensorflow/lite/DataType;->byteSize()I

    move-result v3

    mul-int/2addr v1, v3

    :goto_0
    if-gt v2, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-wide v3, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v3, v4}, Lorg/tensorflow/lite/TensorImpl;->name(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Cannot copy from a TensorFlowLite tensor (%s) with %d bytes to a Java Buffer with %d bytes."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->computeShapeOf(Ljava/lang/Object;)[I

    move-result-object v1

    iget-object v2, p0, Lorg/tensorflow/lite/TensorImpl;->shapeCopy:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_1
    if-eqz v0, :cond_a

    check-cast p1, Ljava/nio/Buffer;

    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_5
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_6
    instance-of v0, p1, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/nio/LongBuffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    goto :goto_2

    :cond_7
    instance-of v0, p1, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/nio/IntBuffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_2

    :cond_8
    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected output buffer type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/TensorImpl;->readMultiDimensionalArray(JLjava/lang/Object;)V

    :goto_2
    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-wide v2, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v2, v3}, Lorg/tensorflow/lite/TensorImpl;->name(J)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/tensorflow/lite/TensorImpl;->shapeCopy:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Cannot copy from a TensorFlowLite tensor (%s) with shape %s to a Java object with shape %s."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final refreshShape()V
    .locals 2

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->shape(J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->shapeCopy:[I

    return-void
.end method

.method public final setTo(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_1

    iget-wide p0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->hasDelegateBufferHandle(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null inputs are allowed only if the Tensor is bound to a buffer handle."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->throwIfTypeIsIncompatible(Ljava/lang/Object;)V

    instance-of v0, p1, Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/tensorflow/lite/TensorImpl;->dtype:Lorg/tensorflow/lite/DataType;

    if-eqz v0, :cond_4

    move-object v2, p1

    check-cast v2, Ljava/nio/Buffer;

    iget-wide v3, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v3, v4}, Lorg/tensorflow/lite/TensorImpl;->numBytes(J)I

    move-result v3

    instance-of v4, p1, Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v1}, Lorg/tensorflow/lite/DataType;->byteSize()I

    move-result v4

    mul-int/2addr v2, v4

    :goto_0
    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->name(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Cannot copy to a TensorFlowLite tensor (%s) with %d bytes from a Java Buffer with %d bytes."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->computeShapeOf(Ljava/lang/Object;)[I

    move-result-object v2

    iget-object v3, p0, Lorg/tensorflow/lite/TensorImpl;->shapeCopy:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_12

    :goto_1
    if-eqz v0, :cond_f

    check-cast p1, Ljava/nio/Buffer;

    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_4

    :cond_6
    instance-of v0, p1, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/nio/LongBuffer;

    invoke-virtual {v0}, Ljava/nio/LongBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    goto/16 :goto_4

    :cond_8
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto/16 :goto_4

    :cond_a
    instance-of v0, p1, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_4

    :cond_c
    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_d

    :goto_2
    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/TensorImpl;->writeDirectBuffer(JLjava/nio/Buffer;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    goto :goto_4

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected input buffer type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    sget-object v0, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    if-ne v1, v0, :cond_10

    iget-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->shapeCopy:[I

    array-length v0, v0

    if-nez v0, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/TensorImpl;->writeMultiDimensionalArray(JLjava/lang/Object;)V

    goto :goto_4

    :cond_11
    :goto_3
    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/TensorImpl;->writeScalar(JLjava/lang/Object;)V

    :goto_4
    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->name(J)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/tensorflow/lite/TensorImpl;->shapeCopy:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Cannot copy to a TensorFlowLite tensor (%s) with shape %s from a Java object with shape %s."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final throwIfTypeIsIncompatible(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    iget-object p0, p0, Lorg/tensorflow/lite/TensorImpl;->dtype:Lorg/tensorflow/lite/DataType;

    const-class v2, Ljava/lang/String;

    if-eqz v1, :cond_c

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    :goto_1
    sget-object v0, Lorg/tensorflow/lite/DataType;->INT32:Lorg/tensorflow/lite/DataType;

    goto/16 :goto_8

    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    :goto_2
    sget-object v0, Lorg/tensorflow/lite/DataType;->INT16:Lorg/tensorflow/lite/DataType;

    goto/16 :goto_8

    :cond_6
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    if-ne p0, v0, :cond_7

    goto/16 :goto_8

    :cond_7
    :goto_3
    sget-object v0, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    goto/16 :goto_8

    :cond_8
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_4
    sget-object v0, Lorg/tensorflow/lite/DataType;->INT64:Lorg/tensorflow/lite/DataType;

    goto/16 :goto_8

    :cond_a
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_5
    sget-object v0, Lorg/tensorflow/lite/DataType;->BOOL:Lorg/tensorflow/lite/DataType;

    goto :goto_8

    :cond_b
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :goto_6
    sget-object v0, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    goto :goto_8

    :cond_c
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    instance-of v1, p1, Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_e

    goto :goto_1

    :cond_e
    const-class v1, Ljava/lang/Short;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_f

    goto :goto_2

    :cond_f
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3

    :cond_10
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    instance-of v1, p1, Ljava/nio/LongBuffer;

    if-eqz v1, :cond_11

    goto :goto_4

    :cond_11
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_5

    :cond_12
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_6

    :cond_13
    :goto_7
    sget-object v0, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    :goto_8
    if-eq v0, p0, :cond_15

    invoke-virtual {v0}, Lorg/tensorflow/lite/DataType;->toStringName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/tensorflow/lite/DataType;->toStringName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot convert between a TensorFlowLite tensor with type %s and a Java object of type %s (which is compatible with the TensorFlowLite type %s)."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    return-void

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataType error: cannot resolve DataType of "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
