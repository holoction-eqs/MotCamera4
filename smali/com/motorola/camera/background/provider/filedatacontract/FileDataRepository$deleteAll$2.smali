.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteAll$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/Toolbar$1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteAll$2;->this$0:Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteAll$2;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteAll$2;->this$0:Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteAll$2;-><init>(Landroidx/appcompat/widget/Toolbar$1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteAll$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteAll$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteAll$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteAll$2;->this$0:Landroidx/appcompat/widget/Toolbar$1;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/TooltipPopup;

    if-eqz p0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    check-cast p1, Landroidx/collection/MapCollections;

    invoke-virtual {p1}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, p1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, p1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object p0
.end method
