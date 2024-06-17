.class abstract Lorg/tensorflow/lite/NativeInterpreterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final delegates:Ljava/util/ArrayList;

.field public errorHandle:J

.field private inferenceDurationNanoseconds:J

.field public inputTensors:[Lorg/tensorflow/lite/TensorImpl;

.field public interpreterHandle:J

.field public isMemoryAllocated:Z

.field public modelByteBuffer:Ljava/nio/ByteBuffer;

.field public modelHandle:J

.field public outputTensors:[Lorg/tensorflow/lite/TensorImpl;

.field public final ownedDelegates:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/nio/MappedByteBuffer;Lorg/tensorflow/lite/InterpreterImpl$Options;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inferenceDurationNanoseconds:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delegates:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->ownedDelegates:Ljava/util/ArrayList;

    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->init()V

    iput-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelByteBuffer:Ljava/nio/ByteBuffer;

    const/16 p1, 0x200

    invoke-static {p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createErrorReporter(I)J

    move-result-wide v1

    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createModelWithBuffer(Ljava/nio/ByteBuffer;J)J

    move-result-wide v3

    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    iput-wide v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelHandle:J

    iget p1, p2, Lorg/tensorflow/lite/InterpreterImpl$Options;->numThreads:I

    invoke-static {v3, v4, v1, v2, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createInterpreter(JJI)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v3, v4}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->hasUnresolvedFlexOp(J)Z

    move-result p1

    iget-object v3, p2, Lorg/tensorflow/lite/InterpreterImpl$Options;->delegates:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    const-string p1, "org.tensorflow.lite.flex.FlexDelegate"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_1
    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delegates:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p2, Lorg/tensorflow/lite/InterpreterImpl$Options;->useXNNPACK:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    move v9, v0

    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    iget-wide v5, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v7, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    iget v10, p2, Lorg/tensorflow/lite/InterpreterImpl$Options;->numThreads:I

    invoke-static/range {v5 .. v10}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createXNNPACKDelegate(JJII)Lorg/tensorflow/lite/XnnpackDelegate;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_5

    iget-wide p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputCount(J)I

    move-result p1

    new-array p1, p1, [Lorg/tensorflow/lite/TensorImpl;

    iput-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/TensorImpl;

    iget-wide p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputCount(J)I

    move-result p1

    new-array p1, p1, [Lorg/tensorflow/lite/TensorImpl;

    iput-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/TensorImpl;

    iget-wide p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {p1, p2, v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allocateTensors(JJ)J

    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    return-void

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v4
.end method

.method private static native allocateTensors(JJ)J
.end method

.method private static native createErrorReporter(I)J
.end method

.method private static native createInterpreter(JJI)J
.end method

.method private static native createModelWithBuffer(Ljava/nio/ByteBuffer;J)J
.end method

.method private static native createXNNPACKDelegate(JJII)Lorg/tensorflow/lite/XnnpackDelegate;
.end method

.method private static native delete(JJJ)V
.end method

.method private static native deleteCancellationFlag(J)J
.end method

.method private static native getInputCount(J)I
.end method

.method private static native getInputTensorIndex(JI)I
.end method

.method private static native getOutputCount(J)I
.end method

.method private static native getOutputTensorIndex(JI)I
.end method

.method private static native getSignatureKeys(J)[Ljava/lang/String;
.end method

.method private static native hasUnresolvedFlexOp(J)Z
.end method

.method private static native resizeInput(JJI[IZ)Z
.end method

.method private static native run(JJ)V
.end method


# virtual methods
.method public final close()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/TensorImpl;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/tensorflow/lite/TensorImpl;->close()V

    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/TensorImpl;

    aput-object v4, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/TensorImpl;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/tensorflow/lite/TensorImpl;->close()V

    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/TensorImpl;

    aput-object v4, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-wide v5, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    iget-wide v7, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelHandle:J

    iget-wide v9, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static/range {v5 .. v10}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delete(JJJ)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->deleteCancellationFlag(J)J

    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelHandle:J

    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iput-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelByteBuffer:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->ownedDelegates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to close flex delegate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getInputTensor(I)Lorg/tensorflow/lite/TensorImpl;
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/TensorImpl;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v1, v2, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensorIndex(JI)I

    move-result p0

    invoke-static {p0, v1, v2}, Lorg/tensorflow/lite/TensorImpl;->fromIndex(IJ)Lorg/tensorflow/lite/TensorImpl;

    move-result-object v1

    aput-object v1, v0, p1

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid input Tensor index: "

    invoke-static {v0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSignatureKeys()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getSignatureKeys(J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final run([Ljava/lang/Object;Ljava/util/HashMap;)V
    .locals 9

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inferenceDurationNanoseconds:J

    if-eqz p1, :cond_10

    array-length v0, p1

    if-eqz v0, :cond_10

    if-eqz p2, :cond_f

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    array-length v1, p1

    if-ge v8, v1, :cond_4

    invoke-virtual {p0, v8}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensor(I)Lorg/tensorflow/lite/TensorImpl;

    move-result-object v1

    aget-object v2, p1, v8

    if-nez v2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    instance-of v3, v2, Ljava/nio/Buffer;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v1, v2}, Lorg/tensorflow/lite/TensorImpl;->throwIfTypeIsIncompatible(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/tensorflow/lite/TensorImpl;->computeShapeOf(Ljava/lang/Object;)[I

    move-result-object v2

    iget-object v1, v1, Lorg/tensorflow/lite/TensorImpl;->shapeCopy:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v2

    :goto_2
    if-eqz v6, :cond_3

    const/4 v7, 0x0

    .line 3
    iget-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    move v5, v8

    invoke-static/range {v1 .. v7}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resizeInput(JJI[IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    iget-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/TensorImpl;

    aget-object v1, v1, v8

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/tensorflow/lite/TensorImpl;->refreshShape()V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4
    :cond_4
    iget-boolean v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_4

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    invoke-static {v2, v3, v4, v5}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allocateTensors(JJ)J

    move v2, v0

    :goto_3
    iget-object v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/TensorImpl;

    array-length v4, v3

    if-ge v2, v4, :cond_7

    aget-object v3, v3, v2

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/tensorflow/lite/TensorImpl;->refreshShape()V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    move v2, v0

    .line 5
    :goto_5
    array-length v3, p1

    if-ge v2, v3, :cond_8

    invoke-virtual {p0, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensor(I)Lorg/tensorflow/lite/TensorImpl;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/tensorflow/lite/TensorImpl;->setTo(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v6, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    invoke-static {v4, v5, v6, v7}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->run(JJ)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    if-eqz v1, :cond_a

    :goto_6
    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/TensorImpl;

    array-length v1, p1

    if-ge v0, v1, :cond_a

    aget-object p1, p1, v0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/tensorflow/lite/TensorImpl;->refreshShape()V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_d

    .line 6
    iget-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/TensorImpl;

    array-length v2, v1

    if-ge v0, v2, :cond_d

    aget-object v2, v1, v0

    if-nez v2, :cond_c

    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v2, v3, v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensorIndex(JI)I

    move-result v6

    invoke-static {v6, v2, v3}, Lorg/tensorflow/lite/TensorImpl;->fromIndex(IJ)Lorg/tensorflow/lite/TensorImpl;

    move-result-object v2

    aput-object v2, v1, v0

    .line 7
    :cond_c
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/tensorflow/lite/TensorImpl;->copyTo(Ljava/lang/Object;)V

    goto :goto_7

    .line 8
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid output Tensor index: "

    .line 9
    invoke-static {p1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_e
    iput-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inferenceDurationNanoseconds:J

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input error: Outputs should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input error: Inputs should not be null or empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
