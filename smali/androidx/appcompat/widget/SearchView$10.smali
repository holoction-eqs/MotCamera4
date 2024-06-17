.class public final Landroidx/appcompat/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/ArraySettingDialogFragment;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/SearchView$10;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView$10;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/SettingDialogFragment;)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/widget/SearchView$10;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView$10;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p2, p0, Landroidx/appcompat/widget/SearchView$10;->$r8$classId:I

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$10;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/SearchView$10;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$10;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(ZZ)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(Landroid/text/Editable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderText(Landroid/text/Editable;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 p2, 0x0

    iget p3, p0, Landroidx/appcompat/widget/SearchView$10;->$r8$classId:I

    const/4 p4, 0x1

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$10;->this$0:Ljava/lang/Object;

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;

    sget p1, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;->updateValueListFromEditText()V

    :pswitch_1
    return-void

    :pswitch_2
    check-cast p0, Landroidx/appcompat/widget/SearchView;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/2addr p3, p4

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    xor-int/2addr p3, p4

    iget-boolean p4, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    const/16 v0, 0x8

    if-eqz p4, :cond_0

    iget-boolean p4, p0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->updateCloseButton()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p2, Landroidx/appcompat/widget/Toolbar$1;

    iget-object p4, p2, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast p4, Lcom/motorola/camera/fragments/SettingsManagerFragment;

    iget-object p4, p4, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mAdapter:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/cursoradapter/widget/CursorFilter;

    invoke-direct {v0, p4}, Landroidx/cursoradapter/widget/CursorFilter;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;)V

    invoke-virtual {v0, p3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/fragments/SettingsManagerFragment;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->LAST_DEBUG_UI_SETTING_SEARCH_QUERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/String;

    return-void

    :goto_1
    check-cast p0, Lcom/motorola/camera/fragments/SettingDialogFragment;

    iget-object p3, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSupportedValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    const/4 p3, -0x1

    if-eq p1, p3, :cond_2

    invoke-virtual {p0, p1, p4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
