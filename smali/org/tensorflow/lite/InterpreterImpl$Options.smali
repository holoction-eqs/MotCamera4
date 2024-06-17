.class public abstract Lorg/tensorflow/lite/InterpreterImpl$Options;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final delegates:Ljava/util/ArrayList;

.field public numThreads:I

.field public useXNNPACK:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/tensorflow/lite/InterpreterImpl$Options;->numThreads:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/InterpreterImpl$Options;->delegates:Ljava/util/ArrayList;

    return-void
.end method
