.class public final synthetic Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iput-boolean p2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->editTextHasFocus:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->shouldBeVisible()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;->textChanged:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    const/16 v1, 0x12

    invoke-direct {p2, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;->textChanged:Z

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
