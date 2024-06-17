.class public final Landroidx/window/core/FailedSpecification;
.super Landroidx/window/core/SpecificationComputer;
.source "SourceFile"


# instance fields
.field public final exception:Landroidx/window/core/WindowStrictModeException;

.field public final logger:Landroidx/window/core/Logger;

.field public final message:Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final value:Ljava/lang/Object;

.field public final verificationMode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroidx/window/core/Logger;I)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p5, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    invoke-direct {p0}, Landroidx/window/core/SpecificationComputer;-><init>()V

    iput-object p1, p0, Landroidx/window/core/FailedSpecification;->value:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/window/core/FailedSpecification;->tag:Ljava/lang/String;

    iput-object p3, p0, Landroidx/window/core/FailedSpecification;->message:Ljava/lang/String;

    iput-object p4, p0, Landroidx/window/core/FailedSpecification;->logger:Landroidx/window/core/Logger;

    iput p5, p0, Landroidx/window/core/FailedSpecification;->verificationMode:I

    new-instance p2, Landroidx/window/core/WindowStrictModeException;

    invoke-static {p1, p3}, Landroidx/window/core/SpecificationComputer;->createMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/window/core/WindowStrictModeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string p3, "stackTrace"

    invoke-static {p1, p3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p3, p1

    add-int/lit8 p3, p3, -0x2

    const/4 p4, 0x0

    if-gez p3, :cond_0

    move p3, p4

    :cond_0
    const/4 p5, 0x1

    if-ltz p3, :cond_1

    move v0, p5

    goto :goto_0

    :cond_1
    move v0, p4

    :goto_0
    if-eqz v0, :cond_6

    if-nez p3, :cond_2

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_2

    :cond_2
    array-length v0, p1

    if-lt p3, v0, :cond_3

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_3
    if-ne p3, p5, :cond_4

    sub-int/2addr v0, p5

    aget-object p1, p1, v0

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5, p3}, Ljava/util/ArrayList;-><init>(I)V

    sub-int p3, v0, p3

    :goto_1
    if-ge p3, v0, :cond_5

    aget-object v1, p1, p3

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    move-object p1, p5

    :goto_2
    check-cast p1, Ljava/util/Collection;

    new-array p3, p4, [Ljava/lang/StackTraceElement;

    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    iput-object p2, p0, Landroidx/window/core/FailedSpecification;->exception:Landroidx/window/core/WindowStrictModeException;

    return-void

    :cond_6
    const-string p0, "Requested element count "

    const-string p1, " is less than zero."

    invoke-static {p0, p3, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final compute()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/window/core/FailedSpecification;->verificationMode:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw p0

    :cond_1
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->value:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/window/core/FailedSpecification;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/window/core/SpecificationComputer;->createMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/core/FailedSpecification;->logger:Landroidx/window/core/Logger;

    check-cast v1, Lkotlin/UInt$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/window/core/FailedSpecification;->tag:Ljava/lang/String;

    const-string v1, "tag"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, p0, Landroidx/window/core/FailedSpecification;->exception:Landroidx/window/core/WindowStrictModeException;

    throw p0
.end method

.method public final require(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;
    .locals 0

    return-object p0
.end method
