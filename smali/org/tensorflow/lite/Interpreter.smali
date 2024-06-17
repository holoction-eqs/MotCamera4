.class public final Lorg/tensorflow/lite/Interpreter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;


# direct methods
.method public constructor <init>(Ljava/nio/MappedByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V
    .locals 1

    new-instance v0, Lorg/tensorflow/lite/NativeInterpreterWrapperExperimental;

    invoke-direct {v0, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapperExperimental;-><init>(Ljava/nio/MappedByteBuffer;Lorg/tensorflow/lite/InterpreterImpl$Options;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getSignatureKeys()[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic close()V
    .locals 0

    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->close$org$tensorflow$lite$InterpreterImpl()V

    return-void
.end method

.method public final close$org$tensorflow$lite$InterpreterImpl()V
    .locals 1

    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    :cond_0
    return-void
.end method

.method public final bridge synthetic finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->finalize$org$tensorflow$lite$InterpreterImpl()V

    return-void
.end method

.method public final finalize$org$tensorflow$lite$InterpreterImpl()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->close$org$tensorflow$lite$InterpreterImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/HashMap;)V
    .locals 0

    iget-object p0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->run([Ljava/lang/Object;Ljava/util/HashMap;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error: The Interpreter has already been closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
