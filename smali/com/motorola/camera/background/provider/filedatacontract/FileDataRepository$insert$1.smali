.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public J$0:J

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/appcompat/widget/Toolbar$1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->this$0:Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->this$0:Landroidx/appcompat/widget/Toolbar$1;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar$1;->insert(Lcom/motorola/camera/background/provider/filedatacontract/FileData;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
