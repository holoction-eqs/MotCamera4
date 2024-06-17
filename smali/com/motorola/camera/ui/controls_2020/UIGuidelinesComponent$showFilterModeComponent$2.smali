.class public final Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/motorola/camera/Notifier$Listener;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->$r8$classId:I

    const/4 v1, 0x6

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;I)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;I)V

    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p0

    return-object p0

    :goto_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;I)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;-><init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;I)V

    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_DUAL_CAPTURE_LAYOUT_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$1()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getFilterToggleBarOffset()F

    move-result v1

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->setAboveToggleBarComponentsGuideLinePosition(F)V

    return-void

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->setAboveToggleBarComponentsGuideLinePosition(F)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getFilterToggleBarOffset()F

    move-result v1

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->setAboveToggleBarComponentsGuideLinePosition(F)V

    return-void

    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->setAboveToggleBarComponentsGuideLinePosition(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic invoke$2()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->invoke$1()V

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->invoke()Lcom/motorola/camera/Notifier$Listener;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->invoke$1()V

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->invoke$1()V

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->invoke()Lcom/motorola/camera/Notifier$Listener;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->invoke()Lcom/motorola/camera/Notifier$Listener;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2;->invoke$1()V

    return-object v0

    nop

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
