.class public final synthetic Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    const-string v1, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessState:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->setScreenBrightness(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->resetShowTime(Z)V

    return-void

    :goto_0
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_1

    :cond_0
    move p1, v1

    :goto_1
    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_2

    :cond_1
    move p1, v1

    :goto_2
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v0

    goto :goto_3

    :cond_2
    move p1, v1

    :goto_3
    if-ne p1, v0, :cond_3

    move p1, v0

    goto :goto_4

    :cond_3
    move p1, v1

    :goto_4
    if-eqz p1, :cond_4

    goto :goto_5

    :cond_4
    move p1, v1

    goto :goto_6

    :cond_5
    :goto_5
    move p1, v0

    :goto_6
    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showAdjustIcon(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->resetShowTime(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p1, v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
