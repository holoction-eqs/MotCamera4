.class public final Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->this$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->this$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a0243

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a0244

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$1()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->$r8$classId:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->this$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFixedMacroMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFixedMacroMode()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$2()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->$r8$classId:I

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->this$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a03ae

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->invoke$1()V

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->invoke()Landroid/widget/TextView;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->invoke()Landroid/widget/TextView;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$frame$2;->invoke$1()V

    return-object v0

    :pswitch_5
    iget-object p0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a01db

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/RotateLayout;

    return-object p0

    :goto_0
    iget-object p0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a0410

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
