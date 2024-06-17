.class public final Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $contentValues:Landroid/content/ContentValues;

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $ret:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;->$ret:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;->$contentValues:Landroid/content/ContentValues;

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;->$contentValues:Landroid/content/ContentValues;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;->$ret:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;->$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-boolean v0, Lcom/motorola/camera/background/provider/FileDataContract;->isForegroundProcessingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/background/provider/FileDataContract;->IN_MEMORY_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;->$contentValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;->$ret:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
