.class public final Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "SourceFile"


# instance fields
.field public editText:Landroid/widget/EditText;

.field public final iconResId:I

.field public final onIconClickListener:Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    const p1, 0x7f08010c

    iput p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    new-instance p1, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onIconClickListener:Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    if-eqz p2, :cond_0

    iput p2, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final beforeEditTextChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    return-void
.end method

.method public final getIconContentDescriptionResId()I
    .locals 0

    const p0, 0x7f120320

    return p0
.end method

.method public final getIconDrawableResId()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    return p0
.end method

.method public final getOnIconClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onIconClickListener:Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    return-object p0
.end method

.method public final isIconCheckable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isIconChecked()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public final onEditTextAttached(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    return-void
.end method

.method public final setUp()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x90

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_2
    return-void
.end method

.method public final tearDown()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    return-void
.end method
