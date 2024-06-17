.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;

    iget-boolean v0, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->enabled:Z

    if-nez v0, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;->disabledToast:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;->canChangeValue:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$$ExternalSyntheticLambda0;->f$2:I

    if-ltz p0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;->onItemSelected:Lkotlin/jvm/functions/Function1;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
