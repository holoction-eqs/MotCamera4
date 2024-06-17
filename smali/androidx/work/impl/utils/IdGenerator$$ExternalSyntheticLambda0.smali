.class public final synthetic Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/airbnb/lottie/LottieComposition;

    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/HashMap;

    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    return-object v0

    :pswitch_1
    check-cast p0, Landroidx/appcompat/widget/Toolbar$1;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    const-string v0, "next_alarm_manager_id"

    invoke-static {p0, v0}, Landroidx/media3/common/Format$1;->access$nextId(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p0, Lcom/motorola/camera/service/JmsServiceInterface;

    sget-object v0, Lcom/motorola/camera/service/JmsServiceInterface;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {p0}, Lcom/motorola/camera/service/JmsServiceInterface;->startAndBindJMS()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
