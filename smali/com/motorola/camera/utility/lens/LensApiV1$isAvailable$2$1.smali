.class public final Lcom/motorola/camera/utility/lens/LensApiV1$isAvailable$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# instance fields
.field public final synthetic $it:Lkotlin/coroutines/Continuation;

.field public final synthetic this$0:Lcom/motorola/camera/utility/lens/LensApiV1;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/lens/LensApiV1;Lkotlin/coroutines/SafeContinuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/utility/lens/LensApiV1$isAvailable$2$1;->this$0:Lcom/motorola/camera/utility/lens/LensApiV1;

    iput-object p2, p0, Lcom/motorola/camera/utility/lens/LensApiV1$isAvailable$2$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailabilityStatusFetched(I)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiV1;->Companion:Lkotlin/UByte$Companion;

    invoke-virtual {v0}, Lkotlin/UByte$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lens Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/camera/utility/lens/LensApiV1$isAvailable$2$1;->this$0:Lcom/motorola/camera/utility/lens/LensApiV1;

    iput p1, v0, Lcom/motorola/camera/utility/lens/LensApiV1;->status:I

    sget v0, Lkotlin/Result;->$r8$clinit:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/utility/lens/LensApiV1$isAvailable$2$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
