.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$mShowVideoPortraitSlideListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$mShowVideoPortraitSlideListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$mShowVideoPortraitSlideListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$1()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$mShowVideoPortraitSlideListener$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$mShowVideoPortraitSlideListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic invoke$2()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$mShowVideoPortraitSlideListener$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$mShowVideoPortraitSlideListener$1;->invoke$1()V

    return-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$mShowVideoPortraitSlideListener$1;->invoke$1()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
