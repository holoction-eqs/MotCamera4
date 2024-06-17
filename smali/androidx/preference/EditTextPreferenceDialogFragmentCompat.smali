.class public Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "SourceFile"


# instance fields
.field public mEditText:Landroid/widget/EditText;

.field public mShowRequestTime:J

.field public final mShowSoftInputRunnable:Landroidx/work/Worker$1;

.field public mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    new-instance v0, Landroidx/work/Worker$1;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Landroidx/work/Worker$1;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    return-void
.end method


# virtual methods
.method public final onBindDialogView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/EditTextPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    iget-object p1, p1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final onDialogClosed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/EditTextPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/io/Serializable;)Z

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "EditTextPreferenceDialogFragment.text"

    iget-object p0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final scheduleShowSoftInputInner()V
    .locals 8

    iget-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-wide/16 v6, 0x3e8

    add-long/2addr v0, v6

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    iput-wide v2, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Landroidx/work/Worker$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    return-void
.end method
