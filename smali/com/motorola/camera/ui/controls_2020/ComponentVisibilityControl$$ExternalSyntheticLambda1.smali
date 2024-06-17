.class public final synthetic Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/motorola/camera/Notifier$TYPE;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/Notifier$TYPE;

    iput-boolean p4, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "$expectedType"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function0;

    const-string v2, "$actionSelected"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function0;

    const-string v3, "$actionUnselected"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda1;->f$0:Z

    if-eqz v3, :cond_3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    check-cast p2, Landroid/os/Bundle;

    const-string p0, "IS_SELECTED"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda1;->f$2:Z

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method
