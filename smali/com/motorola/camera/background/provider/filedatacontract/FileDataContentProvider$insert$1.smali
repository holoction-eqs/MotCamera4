.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $id:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic $values:Landroid/content/ContentValues;

.field public L$0:Lkotlin/jvm/internal/Ref$LongRef;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$id:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;

    iput-object p3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$values:Landroid/content/ContentValues;

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$values:Landroid/content/ContentValues;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$id:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->L$0:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->mFileDataRepo:Landroidx/appcompat/widget/Toolbar$1;

    if-eqz v3, :cond_3

    sget p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->$r8$clinit:I

    iget-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$values:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/motorola/camera/settings/CacheBehavior;->fromContentValues(Landroid/content/ContentValues;)Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    move-result-object v4

    invoke-static {}, L_COROUTINE/ArtificialStackFrames;->generateUniqueId()J

    move-result-wide v5

    iget-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$id:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->L$0:Lkotlin/jvm/internal/Ref$LongRef;

    iput v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->label:I

    const/4 v7, 0x1

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/widget/Toolbar$1;->insert(Lcom/motorola/camera/background/provider/filedatacontract/FileData;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    const-string p0, "mFileDataRepo"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
