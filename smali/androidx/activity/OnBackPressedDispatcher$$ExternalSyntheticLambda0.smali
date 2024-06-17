.class public final synthetic Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/activity/OnBackPressedDispatcher;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    :cond_0
    return-void

    :goto_0
    check-cast p0, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
