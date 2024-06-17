.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $format:Lkotlin/jvm/functions/Function2;

.field public final synthetic $r8$classId:I

.field public final synthetic $secondSource:Landroidx/lifecycle/LiveData;

.field public final synthetic $this_listenPair:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lkotlin/coroutines/CoroutineContext$plus$1;Landroidx/lifecycle/MutableLiveData;I)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;->$this_listenPair:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;->$format:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;->$secondSource:Landroidx/lifecycle/LiveData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;->invoke(Ljava/lang/Object;)V

    return-object v0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;->invoke(Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;->$r8$classId:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, "text"

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;->$this_listenPair:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;->$format:Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$listenPair$1;->$secondSource:Landroidx/lifecycle/LiveData;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v5, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v5, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
