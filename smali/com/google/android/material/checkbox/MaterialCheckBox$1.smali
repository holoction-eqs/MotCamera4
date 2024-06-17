.class public final Lcom/google/android/material/checkbox/MaterialCheckBox$1;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$1;->this$0:Landroid/view/View;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$1;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$1;->this$0:Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    iget p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgress:I

    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgressAnimated:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void

    :goto_0
    check-cast p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    iget-boolean p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibilityAfterHide:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$1;->this$0:Landroid/view/View;

    check-cast p0, Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->currentStateChecked:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
